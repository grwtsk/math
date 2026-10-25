# run_stdout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aa306a9376904f603cfc2bb70950ecd1dbab9cdc7109d191473b03920572723d",
  "kind": "def",
  "lexical_name": "run_stdout",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "run-stdout--f1a034d1dd4959a5a61f0d77",
  "source": {
    "blob": "86bab82c88e195c280de3e3780416447fe361bac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant61fa9cecb00b28f4fe6c440c9b88eb7b702c6afbf669bab07ad11394a7065eec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f1a034d1dd4959a5a61f0d77544946826bee55edf7736957bd719ac50c37b631",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant61fa9cecb00b28f4fe6c440c9b88eb7b702c6afbf669bab07ad11394a7065eec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aa306a9376904f603cfc2bb70950ecd1dbab9cdc7109d191473b03920572723d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def run_stdout(*command: str, cwd: Path | None = None) -> str:
    result = subprocess.run(command, capture_output=True, encoding="utf-8", cwd=cwd)
    if result.returncode != 0:
        print(result.stdout, end="", file=sys.stdout)
        print(result.stderr, end="", file=sys.stderr)
        sys.exit(result.returncode)
    return result.stdout


sha = run_stdout("git", "rev-parse", "@", cwd=root_dir).strip()
base_url = f"{upload_url}/{sha}"
report = run_stdout("lakeprof", "report", "-prc", cwd=root_dir)

template = template_file.read_text()
template = template.replace("__BASE_URL__", json.dumps(base_url))
template = template.replace("__LAKEPROF_REPORT__", report)
(root_dir / "index.html").write_text(template)


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant61fa9cecb00b28f4fe6c440c9b88eb7b702c6afbf669bab07ad11394a7065eec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant61fa9cecb00b28f4fe6c440c9b88eb7b702c6afbf669bab07ad11394a7065eec.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86bab82c88e195c280de3e3780416447fe361bac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
