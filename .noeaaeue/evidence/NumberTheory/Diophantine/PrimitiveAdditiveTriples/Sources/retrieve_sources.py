#!/usr/bin/env python3
"""Read-only remote retrieval of frozen mathematical source occurrences.

No retrieved code is executed. Re-running is intentionally explicit and creates
a new retrieval log; SHA-256 identifies bytes, never mathematical acceptance.
"""
import concurrent.futures
import datetime
import hashlib
import json
import pathlib
import subprocess
import urllib.parse
import urllib.request

ROOT = pathlib.Path(__file__).resolve().parent
SOURCES = [
    ("discussion-2018", "https://www.kurims.kyoto-u.ac.jp/~motizuki/IUTch-discussions-2018-03.html", "html"),
    ("ems-2021-issue", "https://ems.press/journals/prims/issues/1507", "html"),
    *[(f"iut-{n}-journal-metadata", f"https://ems.press/journals/prims/articles/{201524+n}", "html") for n in range(1, 5)],
    ("ss-bonn", "https://www.math.uni-bonn.de/people/scholze/WhyABCisStillaConjecture.pdf", "pdf"),
    ("ss-2018-05", "https://www.kurims.kyoto-u.ac.jp/~motizuki/protectedpdf-2018-05/SS2018-05.pdf", "pdf"),
    ("ss-2018-08", "https://www.kurims.kyoto-u.ac.jp/~motizuki/protectedpdf-2018-08/SS2018-08.pdf", "pdf"),
    ("mochizuki-rpt2018", "https://www.kurims.kyoto-u.ac.jp/~motizuki/Rpt2018.pdf", "pdf"),
    ("mochizuki-rpt2018-revisions", "https://www.kurims.kyoto-u.ac.jp/~motizuki/[Rpt2018] Revisions.txt", "txt"),
    ("mochizuki-cmt2018-05", "https://www.kurims.kyoto-u.ac.jp/~motizuki/Cmt2018-05.pdf", "pdf"),
    ("mochizuki-cmt2018-08", "https://www.kurims.kyoto-u.ac.jp/~motizuki/Cmt2018-08.pdf", "pdf"),
    *[(f"iut-{n}-author-manuscript", f"https://www.kurims.kyoto-u.ac.jp/~motizuki/Inter-universal Teichmuller Theory {roman}.pdf", "pdf") for n, roman in enumerate(["I", "II", "III", "IV"], 1)],
    ("mochizuki-essential-structure", "https://www.kurims.kyoto-u.ac.jp/~motizuki/Essential Logical Structure of Inter-universal Teichmuller Theory.pdf", "pdf"),
    ("pasten-2106.16165v3", "https://arxiv.org/pdf/2106.16165v3", "pdf"),
    ("ellenberg-math9909098v1", "https://arxiv.org/pdf/math/9909098v1", "pdf"),
    ("dupuy-hilado-2004.13228v1", "https://arxiv.org/pdf/2004.13228v1", "pdf"),
    ("dupuy-hilado-2004.13228v2", "https://arxiv.org/pdf/2004.13228v2", "pdf"),
    ("dupuy-hilado-2004.13108v2", "https://arxiv.org/pdf/2004.13108v2", "pdf"),
    ("joshi-2403.10430v2", "https://arxiv.org/pdf/2403.10430v2", "pdf"),
    ("exceptional-2410.12234v2", "https://arxiv.org/pdf/2410.12234v2", "pdf"),
    ("joshi-author-index", "https://archive.math.arizona.edu/kirti/", "html"),
]

EXTRA_SOURCES = [
    ("stewart-yu-2001", "https://uwaterloo.ca/pure-mathematics/sites/default/files/uploads/documents/s0012-7094-01-10815-6.pdf", "pdf"),
    ("vojta-cime", "https://math.berkeley.edu/~vojta/cime/cime.pdf", "pdf"),
    ("lana-2026-report", "https://raw.githubusercontent.com/katobungen/LANA_report_202607/pdf/LANA_report_202607.pdf", "pdf"),
    ("joshi-final-report", "https://sites.arizona.edu/kirti-joshi/files/2025/11/report-on-scholze-stix-mochizuki-controversy.pdf", "pdf"),
    ("mochizuki-joshi-2024", "https://www.kurims.kyoto-u.ac.jp/~motizuki/Report%20on%20a%20certain%20series%20of%20preprints%20(2024-03).pdf", "pdf"),
]

def fetch(spec):
    source_id, url, extension = spec
    url = urllib.parse.quote(url, safe=":/?=&%~")
    row = {"source_id": source_id, "requested_url": url,
           "retrieved_at": datetime.datetime.now(datetime.timezone.utc).isoformat(),
           "operation": "network-read-only", "executes_downloaded_code": False}
    try:
        req = urllib.request.Request(url, headers={"User-Agent": "SourceBoundMathematicalResearch/0.1"})
        with urllib.request.urlopen(req, timeout=45) as response:
            data = response.read()
            row.update(final_url=response.geturl(), status=response.status,
                       content_type=response.headers.get("Content-Type"),
                       last_modified=response.headers.get("Last-Modified"),
                       etag=response.headers.get("ETag"))
        path = ROOT / "snapshots" / f"{source_id}.{extension}"
        if path.exists() and path.read_bytes() != data:
            path = path.with_stem(path.stem + "-" + hashlib.sha256(data).hexdigest()[:16])
        if not path.exists():
            with path.open("xb") as stream:
                stream.write(data)
        row.update(bytes=len(data), sha256=hashlib.sha256(data).hexdigest(),
                   local_path=str(path.relative_to(ROOT)), success=True)
        if extension == "pdf":
            if not data.startswith(b"%PDF"):
                row.update(success=False, error="Expected PDF signature absent; returned bytes preserved")
            else:
                output = ROOT / "extracted" / f"{source_id}.txt"
                proc = subprocess.run(["pdftotext", "-layout", str(path), str(output)], capture_output=True, text=True)
                row.update(text_extract_exit_code=proc.returncode, text_extract_stderr=proc.stderr)
                if proc.returncode == 0:
                    row.update(extracted_path=str(output.relative_to(ROOT)),
                               extracted_sha256=hashlib.sha256(output.read_bytes()).hexdigest())
    except Exception as exc:
        row.update(success=False, error=f"{type(exc).__name__}: {exc}")
    return row

if __name__ == "__main__":
    target = ROOT / "external-search" / "retrievals.jsonl"
    if target.exists():
        raise SystemExit("Frozen retrieval log already exists. Preserve this generation; use a new generation directory for new network retrievals. Run check_source_freeze.py for local verification.")
    assert len(SOURCES) + len(EXTRA_SOURCES) + 1 <= 32
    with concurrent.futures.ThreadPoolExecutor(max_workers=6) as pool:
        rows = list(pool.map(fetch, SOURCES + EXTRA_SOURCES))
    # The original run performed one system-curl retry after Python's TLS failure.
    # Keep the failing attempt as well as any successful retry. No 403 bypass.
    if not next(row for row in rows if row["source_id"] == "ss-bonn")["success"]:
        url = SOURCES[6][1]
        path = ROOT / "snapshots/ss-bonn.pdf"
        proc = subprocess.run(["curl", "--fail", "--location", "--max-time", "40", "--output", str(path), url], capture_output=True, text=True)
        row = {"source_id":"ss-bonn-curl-retry", "requested_url":url, "retrieved_at":datetime.datetime.now(datetime.timezone.utc).isoformat(), "operation":"network-read-only", "executes_downloaded_code":False, "client":"system-curl", "success":proc.returncode == 0, "stderr":proc.stderr}
        if row["success"]:
            row.update(local_path="snapshots/ss-bonn.pdf", bytes=path.stat().st_size, sha256=hashlib.sha256(path.read_bytes()).hexdigest())
            output = ROOT / "extracted/ss-bonn.txt"
            result = subprocess.run(["pdftotext", "-layout", str(path), str(output)], capture_output=True, text=True)
            row["text_extract_exit_code"] = result.returncode
            if result.returncode == 0:
                row.update(extracted_path="extracted/ss-bonn.txt", extracted_sha256=hashlib.sha256(output.read_bytes()).hexdigest())
        rows.append(row)
    with target.open("x") as stream:
        stream.write("".join(json.dumps(row, ensure_ascii=False, sort_keys=True) + "\n" for row in rows))
    print(json.dumps({"attempted": len(rows), "successful": sum(row["success"] for row in rows),
                      "failures": [row for row in rows if not row["success"]]}, indent=2))
