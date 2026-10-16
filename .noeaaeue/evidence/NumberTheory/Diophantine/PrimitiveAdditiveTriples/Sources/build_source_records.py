#!/usr/bin/env python3
"""Generate source evidence metadata from this run's preserved retrieval log.

This script does not retrieve, execute remote code, or admit mathematical claims.
All human-authored interpretations below remain distinct from source occurrences.
"""
from pathlib import Path
import datetime
import hashlib
import json
import re
import urllib.parse

ROOT = Path(__file__).resolve().parent
NOW = datetime.datetime.now(datetime.timezone.utc).isoformat()

PROSE_REPLACEMENTS = {
    "kernelclaim": "kernel claim", "regionandindeterminacyconstraints": "region and indeterminacy constraints",
    "initialTheta-data": "initial Theta-data", "pilotobjects": "pilot objects", "Kummerisomorphisms": "Kummer isomorphisms",
    "underInd1/2/3 whileq doesnot": "under Ind1/Ind2/Ind3 while q does not",
    "normalizationsRemark": "normalizations in Remark ", "Step(xi)comparison": "Step (xi) comparison",
    "specifiedgoodreduction": "specified good reduction", "specifiedtorsionextensionsandfieldmodels": "specified torsion extensions and field models",
    "IUTIII3.12": "IUT III Corollary 3.12", "Belyimaps": "Belyi maps",
    "Arithmeticellipticcurvesingeneralposition": "Arithmetic elliptic curves in general position",
    "uniformfielddegreeandcompactarchimedeanconditions": "uniform field degree and compact archimedean conditions",
    "exceptionalcurvehandling": "exceptional curve handling", "statement; proof": " statement; proof",
    "authorizedpublicsource": "authorized public source", "bypass403": "bypass HTTP 403",
    "modifiedSzpiro": "modified Szpiro", "LANAequation": "LANA equation ", "Joshi2025Prop": "Joshi 2025 Proposition ",
    "currentIIITheorem": "current III Theorem ", "versioncomparison": "version comparison",
    "exact-versionPDFs": "exact-version PDFs", "selectedsourcebibliographies": "selected source bibliographies",
    "pinnedmathlibsourceinventory": "pinned mathlib source inventory", "externalformalrepositorymetadata": "external formal repository metadata",
    "institutionalURL": "institutional URL", "journal fulltext": "journal full text",
    "journaltextidentity": "journal-text identity", "Theorems7.1.1 and7.2.1": "Theorems 7.1.1 and 7.2.1",
    "Assumes Cor3.12": "Assumes Corollary 3.12", "Claim5.0.1": "Claim 5.0.1",
    "reconstructing Cor3.12": "reconstructing Corollary 3.12", "Theorems1.0.3–1.0.5": "Theorems 1.0.3–1.0.5",
    "stale abstract33/50": "stale abstract 33/50", "author's IUTmanuscripts": "author's IUT manuscripts",
    "Cor4.6": "Corollary 4.6", "Lemma4.1": "Lemma 4.1", "Lemma4.4": "Lemma 4.4",
    "Theorem3": "Theorem 3", "Lemma4": "Lemma 4", "Mar31,2024": "March 31, 2024 ",
    "2024versions": "2024 versions", "current-v2": "current v2", "(1,N,q),q prime": "(1, N, q), q prime",
    "psi additive on this triple": "psi additive on this triple", "primes dividingabc": "primes dividing abc",
    "excluded(1,N,q)": "excluded (1, N, q)", "conjecturefor": "conjecture for",
    "initialTheta": "initial Theta", "Ind1/2/3": "Ind1/Ind2/Ind3", "globaltriples": "global triples",
    "Theorem4.5": "Theorem 4.5", "lambda in(0,1)": "lambda in (0, 1)", "for all lambda in(0,1)": "for all lambda in (0, 1)",
    "positivea + b = c": "positive a + b = c", "natural-number triples in[1,X]^3": "natural-number triples in [1, X]^3",
    "fixedN>0": "fixed N > 0", "existsCepsilon": "exists C_epsilon", "satisfyingN|abc": "satisfying N | abc",
    "exponentlambda": "exponent lambda", "heightc<=X": "height c <= X", "Lemma 4 epsilon transforms": "Lemma 4: epsilon transforms",
    "Theorem3.11": "Theorem 3.11", "Definition3.8(i)": "Definition 3.8(i)", "Remark3.9.5(i)": "Remark 3.9.5(i)",
    "Prop3.9": "Proposition 3.9", "Theorem1.10": "Theorem 1.10", "Corollaries2.2–2.3": "Corollaries 2.2–2.3",
    "onepilot": "one pilot", "sourcebibliographies": "source bibliographies", "refs12and": "reference 12 and ",
    "original2021theorem": "original 2021 theorem", "p.10references": "p.10 references", "not proof edge": "not a proof edge",
    "Mar10,2024version": "March 10, 2024 version", "currentv2notidentified": "current v2 not identified",
    "v2initial-data": "v2 initial-data", "originalindeterminacy": "original indeterminacy", "v2p.2Theorem1.3": "v2 p.2 Theorem 1.3",
    "initial arXivsearch abstract": "initial arXiv search abstract", "original33/50 and threeauthors": "original 33/50 and three authors",
    "3/5+epsilon": "3/5 + epsilon", "MOcomments2024-03-31": "MathOverflow comments 2024-03-31",
    "Mochizuki2024§2": "Mochizuki 2024 §2", "Joshi2025claims": "Joshi 2025 claims",
    "laterlocal/global": "later local/global", "sourceworker": "source worker",
}
IDENTITY_FIELDS = {"source_id", "id", "query_id", "query_ids", "batch_id", "result_id", "claim_id", "objection_id",
                   "local_path", "extracted_path", "requested_url", "url", "content_digest", "extracted_digest", "query",
                   "source", "sources", "source_ids", "from", "to", "identity", "schema", "repository_or_domain"}

def readable(value, field=None):
    if field in IDENTITY_FIELDS:
        return value
    if isinstance(value, dict):
        return {key: readable(item, key) for key, item in value.items()}
    if isinstance(value, list):
        return [readable(item, field) for item in value]
    if isinstance(value, str):
        for old, new in PROSE_REPLACEMENTS.items():
            value = value.replace(old, new)
        value = re.sub(r"\bPDFpp(?=\d)", "PDF pp.", value)
        value = re.sub(r"\b2021pp(?=\d)", "2021 pp.", value)
        value = re.sub(r"\bproof(?=\d)", "proof pp.", value)
        value = re.sub(r"\b(Theorem|Corollary|Lemma|Proposition|Definition|Remark|Conjecture)(?=\d)", r"\1 ", value)
        return value
    return value

def write(name, value):
    (ROOT / name).write_text(json.dumps(readable(value), ensure_ascii=False, indent=2, sort_keys=True) + "\n")

def jsonl(name, rows):
    (ROOT / name).write_text("".join(json.dumps(readable(row), ensure_ascii=False, sort_keys=True) + "\n" for row in rows))

retrievals = [json.loads(line) for line in (ROOT / "external-search/retrievals.jsonl").read_text().splitlines()]
meta = {}
def describe(sid, title, authors, kind="primary", status="preprint", version="digest-bound unversioned occurrence", identifier=None, regions=(), claims=(), notes="", contrary=()):
    meta[sid] = dict(title=title, authors=authors, source_class=kind, publication_status=status,
                     revision_or_version=version, doi_or_arxiv=identifier, exact_regions_used=list(regions),
                     claims_extracted=list(claims), notes=notes, contrary_sources=list(contrary))

describe("discussion-2018", "March 2018 Discussions on IUTeich", ["Shinichi Mochizuki"], status="web-note", regions=["official page: report/comment links and update notice"], notes="Authority is limited to source hosting and attribution; the page's assessment of misunderstandings is Mochizuki's position.")
describe("ems-2021-issue", "PRIMS 57 (2021), no. 1/2, Special issue on Inter-universal Teichmüller Theory", ["EMS Press"], kind="commentary", status="published", version="published 2021-03-05; metadata snapshot", regions=["issue contents and DOI links"], notes="Bibliographic catalog only; no proof authority.")
titles = ["Construction of Hodge Theaters", "Hodge–Arakelov-Theoretic Evaluation", "Canonical Splittings of the Log-Theta-Lattice", "Log-Volume Computations and Set-Theoretic Foundations"]
for n, title in enumerate(titles, 1):
    describe(f"iut-{n}-journal-metadata", f"Inter-universal Teichmüller Theory {n}: {title}", ["Shinichi Mochizuki"], status="published", version="PRIMS 57 (2021), no. 1/2; metadata only", identifier=f"10.4171/PRIMS/57-1-{n}", regions=["EMS article metadata, abstract, subscription notice"], notes="Journal PDF access redirected to subscription article page. Original journal full text NOT frozen; this digest covers HTML metadata only. Author manuscript is a separate occurrence and has not been byte- or statement-identified with the journal edition.")
    regions = {1:["Definition 3.1: initial Theta-data; not fully checked"],2:["Corollary 4.10(i): referenced by IUT III and LANA; not fully checked"],3:["author manuscript PDF pp.153–160, Theorem 3.11 (located)", "PDF pp.173–174, Corollary 3.12 statement", "PDF pp.175–186, proof including Step (xi) (located, not reconstructed)"],4:["author manuscript PDF pp.22–24, Theorem 1.10 statement", "PDF p.41, Corollary 2.2 (located)", "Corollary 2.3 (located, not reconstructed)"]}[n]
    describe(f"iut-{n}-author-manuscript", f"Inter-universal Teichmüller Theory {n}: {title} (author manuscript occurrence)", ["Shinichi Mochizuki"], version="unversioned author PDF; digest freezes occurrence, not 2021 edition identity", identifier=f"related journal DOI 10.4171/PRIMS/57-1-{n}", regions=regions, claims=(["IUT-III-3.12"] if n==3 else ["IUT-IV-1.10"] if n==4 else []), notes="Separate from journal version. Full source correspondence and proof reconstruction open.", contrary=(["ss-bonn", "lana-2026-report"] if n==3 else []))
describe("ss-bonn", "Why abc is still a conjecture", ["Peter Scholze", "Jakob Stix"], status="web-note", version="PDF internally dated July 16, 2018; Bonn occurrence", regions=["printed p.1 Conjecture 1", "pp.1–3 §1.1–1.3 reductions", "p.4 equations (1.5),(1.6)", "pp.9–10 §2.2 scale diagram and claimed monodromy"], claims=["SS-weighted", "SS-unweighted", "SS-cycle"], notes="Bonn occurrence is not assumed identical to either inaccessible RIMS-labeled May/August report. Decisive p.4 visually inspected. Approximations in source are not exact formal premises.", contrary=["mochizuki-cmt2018-05", "mochizuki-cmt2018-08", "mochizuki-rpt2018", "lana-2026-report"])
for suffix in ["05", "08"]:
    describe(f"ss-2018-{suffix}", f"Scholze–Stix report labeled SS2018-{suffix} on official discussion page", ["Peter Scholze", "Jakob Stix"], status="web-note", version=f"official occurrence labeled 2018-{suffix}; bytes unavailable", notes="Official URL returned HTTP 403; no access bypass attempted. Contents not inferred from Bonn occurrence or responses.")
describe("mochizuki-rpt2018", "Report on discussions held March 15–20, 2018 concerning IUT", ["Shinichi Mochizuki"], status="web-note", version="February 2019 title; official page updated 2019-02-01", regions=["p.2 (Smm) illustrative scalar analogy", "pp.7–8 §6 full poly-isomorphism and Ind1/Ind2", "§12 (MlLV),(LVEx),(IUAD); exact labels located, selected context inspected"], claims=["M-full-poly", "M-distinct-structures"], notes="Analogies in (Smm)/(LVEx) are source examples only, not IUT premises. Cooperation of Yuichiro Hoshi credited by official host page.", contrary=["ss-bonn"])
describe("mochizuki-rpt2018-revisions", "Revision list for Rpt2018", ["Shinichi Mochizuki"], status="web-note", version="entries through 2019-02-01", regions=["2018-11-08 (LVEx) rewrite", "2019-02-01 changes"], notes="Original source bytes preserved; encoding is not UTF-8. Revision metadata does not establish proof acceptance.")
describe("mochizuki-cmt2018-05", "Comments on the May 2018 Scholze–Stix report", ["Shinichi Mochizuki"], status="web-note", regions=["p.4 C7 full poly-isomorphism", "p.5 C11–C14 real-line normalization and average j²", "p.6 C17(N1–N5) and common-container claim", "p.7 C18"], claims=["M-average-j2", "M-no-loop", "M-common-container"], notes="p.5 visually inspected. Each response is an independent source claim; no repair instantiation inferred.", contrary=["ss-bonn"])
describe("mochizuki-cmt2018-08", "Comments on the August 2018 Scholze–Stix report", ["Shinichi Mochizuki"], status="web-note", regions=["p.3 C10 one pilot with indexed components", "p.3 C12 abstract/concrete and ring-structure claim", "p.4 C14 nonlinear region-volume comparison"], claims=["M-single-pilot", "M-nonlinear"], notes="p.4 visually inspected. Claim is not representable merely by changing a positive scalar on each arrow without a separate region/indeterminacy model.", contrary=["ss-bonn"])
describe("mochizuki-essential-structure", "On the Essential Logical Structure of Inter-universal Teichmüller Theory in Terms of Logical AND/OR Relations", ["Shinichi Mochizuki"], status="web-note", version="title page March 2024", regions=["title, contents, Corollary 3.12 references located at PDF pp.112,154"], notes="167-page source retrieved; decisive explanations not fully interpreted. No theorem extracted as verified.")
describe("pasten-2106.16165v3", "Arithmetic derivatives through geometry of numbers", ["Hector Pasten"], version="arXiv v3, 2021-12-11", identifier="arXiv:2106.16165v3", regions=["p.5 Theorems 2.5–2.8", "pp.6–7 Theorem 3.3 and derivative independence", "p.8 Conjecture 3.9 and Example 3.8", "p.9 Lemma 4.1", "pp.10–11 Lemma 4.4 and Theorem 4.5", "p.11 Corollary 4.6"], claims=["Pasten-small-derivatives", "Pasten-fixed-exponent", "Pasten-unconditional-size"], notes="ArXiv v3 metadata explicitly reports an omission fixed in Lemma 4.4. Fixed η yields fixed-exponent Oesterlé variant, not full all-ε target. Must retain nonzero Wronskian and excluded prime family.")
describe("ellenberg-math9909098v1", "Congruence ABC implies ABC", ["Jordan S. Ellenberg"], version="arXiv v1, 1999-09-17; internal March 25,1999", identifier="arXiv:math/9909098v1", regions=["pp.1–2 Conjectures 1–2, Theorem 3, Lemma 4", "pp.3–4 proof of Theorem 3"], claims=["Ellenberg-congruence"], notes="Signed ABC-solutions require two negative terms and distinct entries for exposition. Need handle exceptional (−1,−1,2) separately in port; no proof port performed.")
describe("dupuy-hilado-2004.13228v1", "The Statement of Mochizuki's Corollary 3.12, Initial Theta Data, and the First Two Indeterminacies", ["Taylor Dupuy", "Anton Hilado"], version="arXiv v1, 2020-04-28", identifier="arXiv:2004.13228v1", regions=["abstract: expressly does not prove Corollary 3.12"], claims=["DH-no-proof"], notes="Original combined version retained separately. Later v2 split the paper; do not transfer v1 indeterminacy references into v2.")
describe("dupuy-hilado-2004.13228v2", "The Statement of Mochizuki's Corollary 3.12: Initial Theta Data", ["Taylor Dupuy", "Anton Hilado"], version="arXiv v2, 2025-06-19", identifier="arXiv:2004.13228v2; related DOI 10.1007/s11139-025-01100-y", regions=["arXiv version metadata and abstract; PDF first page"], notes="Current v2 is initial-data computation and an 11a1 example; original First Two Indeterminacies section became separate article. New article not retrieved in this budget.")
describe("dupuy-hilado-2004.13108v2", "Probabilistic Szpiro, Baby Szpiro, and Explicit Szpiro from Mochizuki's Corollary 3.12", ["Taylor Dupuy", "Anton Hilado"], version="arXiv v2, 2020-04-29", identifier="arXiv:2004.13108v2", regions=["pp.3–4 Theorems 1.0.3–1.0.5", "pp.27–31 Theorems 7.12.1,7.13.1,8.2.1"], claims=["DH-conditional-Szpiro"], notes="Every listed main inequality assumes Corollary 3.12 AND Claim 5.0.1. Neither assumption discharged here.")
describe("joshi-2403.10430v2", "Construction of Arithmetic Teichmuller Spaces IV: Proof of the abc-conjecture", ["Kirti Joshi"], version="arXiv v2, 2025-02-24", identifier="arXiv:2403.10430v2", regions=["pp.13–18 source/comparison overview", "pp.72–75 Theorem 7.1.1 and claimed Theorem 7.2.1 consequence"], claims=["Joshi-claimed-abc"], notes="Claimed proof candidate only. Earlier 2024 criticisms and later response claims are version-specific; no correctness decision inferred from silence or publication.", contrary=["mochizuki-joshi-2024", "Scholze-MO-468079"])
describe("exceptional-2410.12234v2", "Bounds on the exceptional set in the abc conjecture", ["Christian Bernert", "Tim Browning", "Jared Duker Lichtman", "Joni Teräväinen"], version="arXiv v2, 2026-05-09; PDF internally May12,2026", identifier="arXiv:2410.12234v2", regions=["pp.1–2 definition N_lambda(X), Proposition1.1, Theorems1.2–1.3", "p.12 references (selected)"], claims=["Exceptional-v2-count"], notes="v2 changes authors and strengthens stale v1 search abstract. Theorem1.3 gives N_lambda(X) <<_{ε,lambda} X^(0.6+ε), lambda in (0,1). This is a counting bound, not finiteness. Appendix Python is source data and was never executed.")
describe("joshi-author-index", "Kirti Joshi author page", ["Kirti Joshi"], kind="commentary", status="web-note", regions=["links to final report and later responses"], notes="Discovery and version attribution only; not proof evidence.")
describe("stewart-yu-2001", "On the abc conjecture, II", ["C. L. Stewart", "Kunrui Yu"], status="published", version="Duke Math.J.108(1)(2001),169–181", identifier="10.1215/S0012-7094-01-10815-6", regions=[], notes="Institutional URL returned a non-PDF HTML response (preserved). No exact theorem extracted locally; bibliographic lead only. Source cannot supply a checked inequality in this run.")
describe("vojta-cime", "Diophantine Approximation and Nevanlinna Theory", ["Paul Vojta"], kind="exposition", status="published", version="author CIME manuscript; published LNM2009(2011),111–230", regions=["printed pp.189–191 (PDF77–79), Conjecture22.5, Conjecture22.6, height/conductor calculation", "printed p.202 Proposition25.2 (located)", "references: Vojta2000 and correction2001"], claims=["Vojta-P1-source", "Vojta-source-discrepancy"], notes="Visual inspection confirms Conjecture22.6 at printed p.190 says finitely many triples satisfying displayed ≤, while surrounding exposition uses ≤ as height upper bound. Preserve exact wording; likely source typo/interpretation issue, unresolved here. No silent correction or proof premise.")
describe("lana-2026-report", "Project LANA Interim Report on IUT Theory", ["LANA Project"], kind="review", status="web-note", version="updated July20,2026; GitHub pdf ref observed b8e4636edea64d0b9fdc1d7f6a51e63c1f5d1676", regions=["p.1 abstract", "pp.43–46 §9 eta algorithm, equation(9-1)", "pp.47–49 §10.2–10.5"], claims=["LANA-eta-compatibility", "LANA-no-final-verdict"], notes="Located by official ZEN July17,2026 announcement. Source says no proof of (9-1) at this time; agrees SS hexagon noncommutes but says its reconstruction does not factor through that hexagon. Raw URL was mutable branch at fetch; digest pins bytes; later ls-remote pins observed ref, equality to commit bytes has not been independently fetched.", contrary=["ss-bonn"])
describe("joshi-final-report", "Final Report on the Mochizuki–Scholze–Stix Controversy", ["Kirti Joshi"], status="web-note", version="author index describes final report May2025; URL path2025/11; digest-bound occurrence", regions=["pp.1–7 independent mathematical assertions", "pp.8–10 chronology inspected only for version leads"], claims=["Joshi-dissent"], notes="Position and source leads only. Chronology and absence-of-objection assertions are not proof evidence.", contrary=["ss-bonn", "mochizuki-joshi-2024"])
describe("mochizuki-joshi-2024", "Report on the Recent Series of Preprints by K. Joshi", ["Shinichi Mochizuki"], status="web-note", version="March2024; author news records revisions March30–31", regions=["pp.6–8 §2 local/global and compatibility discussion, (Js1–3),(EssGlIq)"], claims=["M-Joshi-local-global"], notes="Addresses Jan25,2024 III and Mar10,2024 IV versions, not automatically current2025 versions. Social characterizations and analogies are excluded as mathematical premises.", contrary=["joshi-2403.10430v2", "joshi-final-report"])

records = []
for sid, info in meta.items():
    attempts = [r for r in retrievals if r["source_id"] == sid or (sid == "ss-bonn" and r["source_id"] == "ss-bonn-curl-retry")]
    successes = [r for r in attempts if r["success"]]
    best = successes[-1] if successes else attempts[-1]
    record = {"source_id":sid, **info, "url":best["requested_url"], "repository_or_domain":urllib.parse.urlparse(best["requested_url"]).netloc,
              "content_digest":("sha256:"+best["sha256"]) if best.get("sha256") else None,
              "retrieved_at":best["retrieved_at"], "local_path":best.get("local_path"),
              "retrieval_attempt_ids":[r["source_id"] for r in attempts],
              "formalization_status":"none", "rights_and_license":"No license grant established by this run; preserve attribution and source rights. Local research snapshot only; no publication authority.",
              "coverage_status":"partial" if best["success"] else "unavailable",
              "evidence_coordinates":{"bytes_frozen":bool(best.get("sha256")),"selected_claim_located":bool(info["claims_extracted"]) and best["success"],"statement_translation_checked":False,"kernel_accepted":False,"axiom_audited":False,"iut_application_checked":False,"abc_closure":False}}
    if "extracted_path" in best: record.update(extracted_path=best["extracted_path"], extracted_digest="sha256:"+best["extracted_sha256"])
    records.append(record)

mathlib_path = ROOT.parents[4] / ".lake/packages/mathlib/Mathlib/NumberTheory/FLT/MasonStothers.lean"
# ROOT.parents[4] is the repository root for the prescribed subject/object path.
assert mathlib_path.is_file(), mathlib_path
records.append({"source_id":"mathlib-MasonStothers-pinned", "title":"Mathlib.NumberTheory.FLT.MasonStothers", "authors":["Jineon Baek","Seewoo Lee"], "source_class":"formal-repository", "publication_status":"repository", "repository_or_domain":"leanprover-community/mathlib4", "revision_or_version":"db584cd6d46c92f209a44c0f1c829460d327499d", "doi_or_arxiv":None, "content_digest":"sha256:"+hashlib.sha256(mathlib_path.read_bytes()).hexdigest(), "retrieved_at":NOW,"local_path":str(mathlib_path), "exact_regions_used":["Polynomial.abc, lines54–61; full proof inspected"],"claims_extracted":["Mathlib-polynomial-abc"],"contrary_sources":[],"formalization_status":"unknown","rights_and_license":"Apache-2.0; copyright2024 Jineon Baek and Seewoo Lee","coverage_status":"complete-selected-regions","notes":"Already in pinned dependency. This source inspection does not replay kernel or transitive axiom audit; parent-owned consumer audit required. Polynomial theorem, not integer abc."})
records.append({"source_id":"Scholze-MO-468079", "title":"Scholze's comments on local/global comparison in Joshi's proof", "authors":["Peter Scholze"], "source_class":"primary", "publication_status":"web-note", "repository_or_domain":"mathoverflow.net", "revision_or_version":"comments dated March 31, 2024 at 20:11 and 20:23", "doi_or_arxiv":None, "content_digest":None, "retrieved_at":None, "retrieval_time_precision":"web tool read during this run; exact per-call clock timestamp not recorded", "url":"https://mathoverflow.net/questions/468079/is-there-a-mistake-in-mochizukis-proof-of-theorem-1-10-in-iutt-iv", "local_path":None, "exact_regions_used":["Peter Scholze comments dated March 31, 2024 at 20:11 and 20:23"], "claims_extracted":["Scholze-Joshi-local-global"], "contrary_sources":["joshi-2403.10430v2","joshi-final-report"], "formalization_status":"none", "rights_and_license":"Host terms were not independently checked; no license inferred", "coverage_status":"partial", "notes":"Direct authored critique was read through web tool; no local byte snapshot within the 32-download budget. Describes conflict between earlier Proposition 6.10.7 and Theorem 9.11.1 and distinguishes that critique from an internal error in IUT IV. Relevance to 2025 revisions remains open.", "evidence_coordinates":{"bytes_frozen":False,"selected_claim_located":True,"statement_translation_checked":False,"kernel_accepted":False,"axiom_audited":False,"iut_application_checked":False,"abc_closure":False}})
write("abc-source-ledger.json", {"schema":"source-occurrence-ledger-v1", "generated_at":NOW,"mathematical_acceptance":False,"source_occurrences":records})

query_batches = [
[('IUT-prerequisites','site.kurims.kyoto-u.ac.jp motizuki "Inter-universal Teichmuller Theory III" pdf'),('arithmetic-derivatives','site.arxiv.org abc arithmetic derivatives geometry numbers Pasten'),('congruence','site.arxiv.org "abc" "congruence" conjecture'),('indeterminacies','site.arxiv.org "Dupuy" "Hilado" "Corollary 3.12"')],
[('later-repairs','site.arxiv.org Joshi "Arithmetic Teichmuller" "abc" proof'),('later-repair-critique','site.arxiv.org Joshi "contoversy" abc Mochizuki'),('exceptional-set','site.arxiv.org "Bounds on the exceptional set" abc'),('conditional-Szpiro','site.arxiv.org "Explicit" "Szpiro" "Dupuy" Hilado')],
[('later-repair-critique','"Joshi" "Mochizuki" "2024" "comments" site.kurims.kyoto-u.ac.jp'),('negative-derivatives','"Arithmetic derivatives through geometry of numbers" "erratum" OR "gap" OR "counterexample"'),('negative-scale','"Corollary 3.12" "j^2" "monodromy"'),('formal-function-field','"Mason" "Stothers" Lean mathlib github')],
[('smooth-S-unit','"abc conjecture" "S-unit" "smooth" site.arxiv.org'),('heights-Vojta','"abc conjecture" "Vojta" "Nevanlinna" site.math.berkeley.edu'),('moments','"abc conjecture" "moment" "additive" site.arxiv.org'),('unconditional-bound','"On the abc conjecture II" "Stewart" "Yu"')],
[('formal-repositories','"abc conjecture" Lean Isabelle Coq HOL Mizar radical formalization'),('formal-heights','"Szpiro" "Vojta" "lean" "github"'),('negative-exceptional','"Bounds on the exceptional set" "erratum" OR "correction"'),('negative-later-repair','"IUT" "Joshi" "Theorem 9.11.1" criticism')],
[('forward-formal-IUT','"LANA" "IUT" "2026" site.zen.ac.jp'),('indeterminacy-version','"The Statement of Mochizuki" "First Two Indeterminacies" arxiv'),('smooth-S-unit','"abc" "smooth" "S-unit" site.arxiv.org/abs'),('premise-deletion','"abc conjecture" "without coprimality" counterexample')],
]
queries=[]
for batch, entries in enumerate(query_batches,1):
    for obligation, query in entries:
        queries.append({"query_id":f"q{len(queries)+1:02d}","batch_id":f"web-search-{batch}","channel":"web.run.search_query","obligation":obligation,"query":query,"execution":"executed","executed_at":None,"time_precision":"tool-call order only; no fabricated per-query clock time","reproducibility_limit":"Search-index state and ranking may change; selected content is digest-bound.","counterexample_search":obligation.startswith('negative') or obligation=='premise-deletion'})
jsonl("external-search/queries.jsonl", queries)

selected=[
("pasten-2106.16165v3",1,"p.9 Lemma4.1 and p.11 Cor4.6",["primary","missing_prerequisite"],"Full all-epsilon versus fixed-exponent distinction preserved"),
("ellenberg-math9909098v1",1,"p.2 Theorem3 and Lemma4",["primary","missing_prerequisite"],"Restricted-family implication requires exponent conversion"),
("dupuy-hilado-2004.13228v1",1,"abstract",["primary","addresses_obstruction"],"No proof of Cor3.12 offered"),
("joshi-2403.10430v2",2,"pp.72–75 Theorems7.1.1 and7.2.1",["primary","addresses_obstruction"],"Claimed theorem; no proof admitted"),
("exceptional-2410.12234v2",2,"p.2 Theorem1.3",["primary","missing_prerequisite"],"Current version supersedes stale abstract33/50"),
("dupuy-hilado-2004.13108v2",2,"pp.3–4 Theorems1.0.3–1.0.5",["primary","assumes_target"],"Assumes Cor3.12 and Claim5.0.1; circular supplier for reconstructing Cor3.12"),
("mochizuki-joshi-2024",3,"pp.6–8 §2",["primary","addresses_obstruction"],"Critique concerns2024 versions; current-v2 correspondence open"),
("mathlib-MasonStothers-pinned",3,"Polynomial.abc",["primary","independently_formalized","missing_prerequisite"],"Already pinned; no field-to-integer bridge"),
("vojta-cime",4,"printed pp.189–191",["primary","missing_prerequisite"],"Printed quantifier/inequality discrepancy retained"),
("stewart-yu-2001",4,"unavailable: returned HTML",["primary","unlocated_claim"],"No extracted theorem admitted"),
("Scholze-MO-468079",5,"comments Mar31,2024 20:11 and20:23",["primary","addresses_obstruction"],"Direct authored critique; web-read only, not byte snapshot"),
("lana-2026-report",6,"p.46(9-1), p.49§10.5",["primary","addresses_obstruction","missing_prerequisite"],"Independent reconstruction leaves eta compatibility open"),
]
weights={"primary":4,"missing_prerequisite":2,"addresses_obstruction":3,"assumes_target":-6,"independently_formalized":3,"unlocated_claim":-8}
results=[]
for sid,batch,locator,features,note in selected:
    record=next((r for r in records if r['source_id']==sid),None)
    results.append({"result_id":"result-"+sid,"source_id":sid,"discovered_in_batch":f"web-search-{batch}","query_ids":[q['query_id'] for q in queries if q['batch_id']==f'web-search-{batch}'],"query_attribution":"Results returned as a batched union; exact individual query attribution unavailable", "exact_region":locator,"url":record['url'] if record and 'url' in record else 'https://mathoverflow.net/questions/468079' if sid.startswith('Scholze') else 'local pinned dependency',"ranking":{"features":features,"score":sum(weights[f] for f in features),"purpose":"review priority only"},"notes":note,"mathematical_admission":False})
jsonl("external-search/results.jsonl", results)

signatures=[
{"claim_id":"SS-weighted","source_id":"ss-bonn","region":"p.4(1.5)","objects":["ell odd prime","n=(ell-1)/2","D=log root discriminant","Q=Tate degree"],"ambient":"real finite sums","quantifiers":"ell>=5; finite j=1..n","hypotheses":["n=(ell-1)/2","sum_v local discriminant=D","sum_v Tate local contribution=Q/(2ell)"],"conclusion":"(1/n)Σ_j(jD−j²Q/(2ell))=(n+1)/2·(D−Q/6)","constant_dependence":"source errors unspecified; not exact inequality premise","uniformity":"finite identity only","exceptional_set":"none for identity","normalization":"procession average and 2ell-th root","direction":"algebraic identity","formalization_status":"parent-owned model proof; no IUT application supplied"},
{"claim_id":"SS-unweighted","source_id":"ss-bonn","region":"p.4(1.6)","objects":["ell","n","D","Q"],"ambient":"real finite sums","quantifiers":"ell>=5;n=(ell-1)/2","hypotheses":["same normalization as weighted expression"],"conclusion":"(1/n)Σ_j(jD−Q/(2ell))=(n+1)D/2−Q/(2ell)","constant_dependence":"explicit error required for inequality","uniformity":"finite identity","exceptional_set":"none","normalization":"j² deleted only from Q term","direction":"identity; comparison premise −Q/(2ell)<=U+E cancels Q","formalization_status":"parent-owned model proof"},
{"claim_id":"Pasten-fixed-exponent","source_id":"pasten-2106.16165v3","region":"p.9 Lemma4.1; p.11 Cor4.6","objects":["primitive positive additive triples","arithmetic derivatives","Wronskian"],"ambient":"integers","quantifiers":"there exists fixed 0 < eta < 1; for all but finitely many eligible triples exists psi; conclusion forall M>1/(1−eta)","hypotheses":["psi additive on this triple","psi supported on primes dividingabc","Wpsi(a,b)!=0","norm psi<c^eta","excluded(1,N,q),q prime, up to order handled separately"],"conclusion":"Oesterle fixed-exponent abc for M>1/(1−eta)","constant_dependence":"M and finite-exception absorption","uniformity":"global triples; fixed exponent","exceptional_set":"finite in derivative hypothesis","normalization":"norm=sup_p|psi(xi_p)|","direction":"conditional; full abc implies derivatives in reverse viaTheorem4.5","formalization_status":"not formalized; does not close all-epsilon abc"},
{"claim_id":"Exceptional-v2-count","source_id":"exceptional-2410.12234v2","region":"p.2 Theorem1.3","objects":["N_lambda(X)","primitive positivea + b = c","rad(abc)<c^lambda"],"ambient":"natural-number triples in[1,X]^3","quantifiers":"for all lambda in(0,1), for all epsilon>0, all X","hypotheses":["primitive","positive","a + b = c","radical threshold"],"conclusion":"N_lambda(X)<<_{epsilon,lambda}X^(3/5+epsilon)","constant_dependence":"epsilon,lambda","uniformity":"all X; lambda fixed","exceptional_set":"counted, not finite","normalization":"heightc<=X; exponentlambda","direction":"unconditional paper claim; Lean proof open","formalization_status":"not formalized"},
{"claim_id":"Ellenberg-congruence","source_id":"ellenberg-math9909098v1","region":"p.2 Theorem3 and Lemma4","objects":["ABC-solutions","positive modulusN","Theta_n transform"],"ambient":"signed integer triples","quantifiers":"fixedN>0; for all epsilon>0 existsCepsilon","hypotheses":["abc on triples satisfyingN|abc","all-epsilon restricted statement"],"conclusion":"full all-epsilon abc","constant_dependence":"epsilon,N and transform n","uniformity":"global height","exceptional_set":"distinctness exceptional triple must be separately checked","normalization":"Lemma4 epsilon transforms to epsilon/[n+(n−1)epsilon]","direction":"restricted abc=>full abc; conditional reduction","formalization_status":"not formalized"},
{"claim_id":"LANA-eta-compatibility","source_id":"lana-2026-report","region":"p.46(9-1)","objects":["basic prime strip","volume containerVC(I_v)","suitable integral structureS","Rval","Rss"],"ambient":"pointed oriented real vector spaces constructed from adelic measurable regions","quantifiers":"exists suitableS","hypotheses":["exact eta_q native q-pilot construction","exact eta_anab_S reconstruction","Ind1/Ind2/Ind3 admissibility","same source and target identifications"],"conclusion":"eta_q=eta_anab_S","constant_dependence":"indeterminacy and log-volume control open","uniformity":"requires global compatibility; not merely placewise values","exceptional_set":"not stated as finiteexception theorem","normalization":"Rss quotient by equal region volume","direction":"unresolved proposed compatibility; no proof supplied by report","formalization_status":"open"},
]
jsonl("external-search/theorem-signatures.jsonl",signatures)

contradictions=[
{"id":"scale-source-dispute","sources":["ss-bonn","mochizuki-cmt2018-05","mochizuki-cmt2018-08","lana-2026-report"],"regions":["SSpp.9–10§2.2","MayC17","AugC14","LANA§10.5"],"issue":"Whether the intended numerical argument factors through the commuting scalar transport diagram; whether indeterminacies can be represented as scalar maps","status":"unresolved_source_correspondence","not_a_formal_refutation":True},
{"id":"Pasten-quantifier-risk","sources":["pasten-2106.16165v3"],"regions":["Lemma4.1","Cor4.6"],"issue":"Fixed eta only supplies an exponent threshold; abstract wording about equivalence must not be promoted to full forall-epsilon abc","status":"scope_distinction_identified"},
{"id":"Pasten-v3-omission-fix","sources":["pasten-2106.16165v3"],"regions":["arXivabs comments","Lemma4.4"],"issue":"Earlier version omission; v3 explicitly fixes it","status":"version_sensitivity; earlier proof variants not reused"},
{"id":"Dupuy-version-split","sources":["dupuy-hilado-2004.13228v1","dupuy-hilado-2004.13228v2"],"regions":["v2 arXiv comments"],"issue":"v2initial-data article no longer contains all originalindeterminacy material","status":"distinct_occurrences_preserved"},
{"id":"exceptional-stale-search-result","sources":["exceptional-2410.12234v2"],"regions":["v2p.2Theorem1.3","initial arXivsearch abstract"],"issue":"Search still reports original33/50 and threeauthors; v2 has four authors and3/5+epsilon","status":"current_version_selected; no paper correctness claim"},
{"id":"Vojta-CIME-quantifier-inequality","sources":["vojta-cime"],"regions":["printed p.190Conjecture22.6 andeq22.6.1","printedp191precedingExample22.8"],"issue":"Visually confirmed source says finitely many triples satisfying displayed<=; subsequent equivalence uses<=asupperbound. Exact wording retained, apparent typo not silently repaired.","status":"unresolved_source_interpretation; not used as premise"},
{"id":"Joshi-local-global-version","sources":["joshi-2403.10430v2","mochizuki-joshi-2024","joshi-final-report","Scholze-MO-468079"],"regions":["Mochizuki2024§2","MOcomments2024-03-31","Joshi2025claims"],"issue":"Critiques of earlier local/global comparison and assertions of later repair need exact version-to-version theorem checking","status":"unresolved; no current version proof or refutation accepted"},
]
jsonl("external-search/contradictions.jsonl", contradictions)

graph={"nodes":[{"id":r['source_id'],"identity_kind":"source_occurrence","content_digest":r.get('content_digest')} for r in records],"edges":[
{"from":"discussion-2018","to":s,"type":"official_host_link","locator":"page report/comment links"} for s in ['ss-2018-05','ss-2018-08','mochizuki-rpt2018','mochizuki-cmt2018-05','mochizuki-cmt2018-08']
] + [{"from":'ss-bonn',"to":s,"type":"backward_citation","locator":"p.10references; not proof edge"} for s in ['iut-3-author-manuscript','iut-4-author-manuscript']] + [
{"from":"dupuy-hilado-2004.13108v2","to":"dupuy-hilado-2004.13228v1","type":"backward_citation","locator":"DH20b; p.35bibliography"},
{"from":"lana-2026-report","to":"ss-bonn","type":"forward_discussion","locator":"pp.46–49§10; ref15"},
{"from":"lana-2026-report","to":"iut-3-journal-metadata","type":"backward_citation","locator":"refs12and §9–10; original2021theorem pagination distinguished"},
{"from":"mochizuki-joshi-2024","to":"joshi-2403.10430v2","type":"critique_of_earlier_version","locator":"p.1 lists Mar10,2024version; currentv2notidentified"},
{"from":"joshi-final-report","to":"ss-bonn","type":"dissenting_response","locator":"pp.1–7"},
],"edge_semantics":"bibliographic/source relations only; no graph reachability implies mathematical entailment","snowball_depth":1,"complete":False}
write("external-search/source-graph.json",graph)

coverage={"schema":"bounded-source-coverage-v1","generated_at":NOW,"search_engine_query_budget":24,"executed_search_queries":len(queries),"local_content_download_attempt_budget":32,"actual_local_content_download_attempts":len(retrievals),"successful_download_attempts":sum(r['success'] for r in retrievals),"other_network_reads":"web opens/clicks and PDF rendering and read-only git ls-remote metadata are not counted as search queries or local-content downloads; initial urllib index inspections were read-only discovery","source_occurrences":len(records),"journal_full_text_frozen":False,"complete_literature_coverage":False,"kernel_acceptance_from_sources":False,"scope":"selected primary source regions with source-specific interpretation gaps retained","unavailable":["official RIMS SS2018-05 HTTP403","official RIMS SS2018-08 HTTP403","EMS original journal fulltext subscription redirect","Stewart–Yu institutionalURL returned HTML"],"not_searched_or_not_completed":["No exhaustive Crossref/MathSciNet/zbMATH citation graph traversal","No independent Loogle/LeanSearch service calls","No external formal repository code port or consumer compilation by source worker","No exhaustive Isabelle/Coq/HOLLight/Mizar search beyond batched discovery","No full text of all IUT preparatory cited papers","No exact original 1985 Masser–Oesterle source occurrence located","No full statement/proof reconstruction of modified Szpiro/Belyi/global Vojta reductions","No full exact version chain for Arithmetic Teichmuller Spaces I–III and all criticisms","No independent erratum audit of every selected source","No exhaustive hypothesis deletion search (only explicit coprimality negative and derivative degeneracy source inspection)","No complete smooth/S-unit/moment bridge theorem located","No all-height proof of integer abc"],"search_channels_used":["web search","official author pages","journal metadata","arXiv exact-versionPDFs","selectedsourcebibliographies","forward reports/critique discovery","pinnedmathlibsourceinventory","externalformalrepositorymetadata"],"sources_are_not_premises":True,"stop_reason":"declared source query and local-content download budgets reached","resume_cursor":{"next_queries":["exact modifiedSzpiro statement plus Vojta/Belyi hypotheses","LANAequation(9-1) admissible S and cohomological reconstruction","current Dupuy–Hilado First Two Indeterminacies separate article version","Joshi2025Prop6.10.7 and currentIIITheorem9.11.1 versioncomparison"],"first_unavailable_retry":"official SS2018-05/08 access via authorizedpublicsource; never bypass403","preserve_existing_digests":True}}
write("abc-source-coverage.json",coverage)
write("external-search/coverage.json",coverage)

statement_map={"schema":"source-statement-map-v1","journal_to_manuscript_identity":"not established; locators below explicitly refer to author manuscript snapshot unless stated otherwise","entries":[
{"id":"IUT-III-3.11","source_id":"iut-3-author-manuscript","region":"PDFpp153–160","journal_locator_reported_by_LANA":"2021pp573–580","title":"Multiradial Algorithms via LGP-Monoids/Frobenioids","formal_statement":None,"status":"located_not_fully_translated","prerequisites":["initialTheta-data","log-theta lattice","log-shells","pilotobjects","Kummerisomorphisms","Ind1/Ind2/Ind3"]},
{"id":"IUT-III-3.12","source_id":"iut-3-author-manuscript","region":"PDFpp173–174statement; proof175–186","journal_locator_reported_by_LANA":"2021pp597–598","formal_statement":"Source claims −|logTheta| is real and >=−|logq|, with |logq|>0; Theta uses holomorphic hull of union of possible images underInd1/2/3 whileq doesnot.","status":"selected_statement_located; source-correspondence_and_proof_open","prerequisites":["Theorem3.11","Definition3.8(i)","Remark3.9.5(i)","normalizationsRemark3.1.1/Prop3.9","Step(xi)comparison"]},
{"id":"IUT-IV-1.10","source_id":"iut-4-author-manuscript","region":"PDFpp22–24statement, proof24–31","formal_statement":None,"status":"hypotheses_selected; full_constants_and_quantifiers_open","prerequisites":["IUTIII3.12","initialTheta-data","specifiedgoodreduction","specifiedtorsionextensionsandfieldmodels","discriminant/conductor/Tate-degree normalizations"]},
{"id":"IUT-IV-to-abc","source_id":"iut-4-author-manuscript","region":"Corollaries2.2–2.3; source occurrence retained","formal_statement":None,"status":"unreconstructed","prerequisites":["Theorem1.10","Belyimaps","Arithmeticellipticcurvesingeneralposition","uniformfielddegreeandcompactarchimedeanconditions","exceptionalcurvehandling"]},
]}
write("iut-statement-map.json",statement_map)

objections={"schema":"independent-objection-coordinates-v1","objections":[{"objection_id":"SS-scale-j2","exact_proposition":"If the demanded pilot-degree comparisons factor through the described commuting positive-scale cycle, a single j² defect requires j² = 1; removing the weight changes the finite inequality.","source_regions":["ss-bonn:p4(1.5)/(1.6)","ss-bonn:pp9–10§2.2"],"formal_model":"parent-owned positive-scale and finite-sum modules","model_theorem_status":"source worker makes no kernelclaim","application_to_iut_status":"uninstantiated source-correspondence; disputed factorization","responses":[{"source":"mochizuki-cmt2018-05","region":"p5C11–C14,p6C17","claim":"Usual degree uses averaged j²; the claimed loop does not occur; a single container with a log-volume function is asserted."},{"source":"mochizuki-cmt2018-08","region":"p3C10,p4C14","claim":"One pilot with j-indexed components; indeterminacy geometry is nonlinear and is not merely a scalar comparison."},{"source":"lana-2026-report","region":"p46(9-1),pp48–49§10","claim":"The Scholze–Stix hexagon does not commute; the proposed reconstruction instead requires eta_q = eta_anab_S, whose proof has not been reconstructed."}],"repair_obligations":["explicit object and arrow correspondence","admissible S regionandindeterminacyconstraints","native and reconstructed q-comparison equality","retained j² weight or proved aggregate","order and log-volume distortion control","all n-ary comparison cocycles and descent witnesses"],"counterevidence":[],"current_assessment":"unresolved"}],"no_consensus_flag":True,"no_source_claim_is_formal_acceptance":True}
write("abc-iut-objections.json",objections)

routes=[]
for route,subject,source_ids,frontier in [
("A","IUT reconstruction",['iut-3-author-manuscript','iut-4-author-manuscript','ss-bonn','lana-2026-report'],"Reconstruct exact Theorem 3.11 and admissible S for eta comparison (9-1); journal-text identity and global reductions remain open"),
("B","Transport repair",['mochizuki-cmt2018-05','mochizuki-cmt2018-08','lana-2026-report'],"Instantiate explicit line/region comparisons and all indeterminacy control; the model alone cannot identify IUT"),
("C","Later Arithmetic Teichmuller claims",['joshi-2403.10430v2','joshi-final-report','mochizuki-joshi-2024'],"Retrieve current I–III decisive inequalities; check the local/global version mismatch independently"),
("D","Arithmetic derivatives",['pasten-2106.16165v3'],"Formalize the finite Wronskian identity; nondegeneracy and global norm power saving remain open; fixed eta gives only a fixed exponent variant of abc"),
("E","Geometry of numbers",['pasten-2106.16165v3'],"Formalize Theorem 2.6 Siegel product bound; the stronger independent-derivative power saving remains open"),
("F","Congruence reduction",['ellenberg-math9909098v1'],"Port Theta_n and Lemma 4 with exact epsilon dependence; prove primitive and congruence conditions"),
("G","Exceptional sets",['exceptional-2410.12234v2'],"Port N_lambda and the 3/5 + epsilon counting bound; a positive-exponent count does not imply finiteness"),
("H","Function field control",['mathlib-MasonStothers-pinned'],"Compile the pinned Polynomial.abc consumer and audit; preserve the derivative-zero alternative and characteristic hypotheses"),
("I","Elliptic curves/Szpiro",['iut-4-author-manuscript','dupuy-hilado-2004.13108v2','vojta-cime'],"Build exact conductor/discriminant and modified Szpiro interfaces; disputed Corollary 3.12 and Claim 5.0.1 remain undischarged"),
("J","Primitive triple moments",[],"Search did not locate a verified radical-height bridge; finite identities and joint triple information cannot by themselves close abc"),
]:
    routes.append({"route":route,"mathematical_subject":subject,"sources":source_ids,"strongest_checked_theorem":"No Lean theorem accepted by source worker; the parent-owned trust receipt determines formal status","remaining_premises":frontier,"refuted_lemmas":[],"source_coverage":"partial selected sources","formal_coverage":"not assessed by this source ledger","next_smallest_obligation":frontier})
write("route-source-frontier.json",{"routes":routes,"abc_target_closure":False,"status":"OPEN_FRONTIER"})
print(json.dumps({"source_occurrences":len(records),"query_count":len(queries),"retrieval_attempts":len(retrievals),"successful_attempts":sum(r['success'] for r in retrievals),"generated_at":NOW},indent=2))
