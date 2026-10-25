# isInMathlib

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:02d1216ce963e0795a3f1a60aae049d242b3a79d41f0ad11c0e6c6cda10748f0",
  "kind": "def",
  "lexical_name": "isInMathlib",
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
  "slug": "isinmathlib--f2f388680ffd6fe0e35548ac",
  "source": {
    "blob": "01ad90dea8e75b614ed32388d6964b7620163a27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 223,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variant70dcdcd99b8f119785545b8d986e8141229b07fe66589e3645d6eafe352d8c37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f2f388680ffd6fe0e35548ac0c7737f4eb23bb19c14fd34013fbda735a2ca1d1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variant70dcdcd99b8f119785545b8d986e8141229b07fe66589e3645d6eafe352d8c37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:02d1216ce963e0795a3f1a60aae049d242b3a79d41f0ad11c0e6c6cda10748f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isInMathlib (modName : Name) : IO Bool := do
  let mlPath := ("Mathlib" : System.FilePath).addExtension "lean"
  if ← mlPath.pathExists then
    let res ← parseImports' (← IO.FS.readFile mlPath) ""
    return (res.imports.map (·.module == modName)).any (·)
  else return false

/-- `inMathlibRef` is
* `none` at initialization time;
* `some true` if the `header` linter has already discovered that the current file
  is imported in `Mathlib.lean`;
* `some false` if the `header` linter has already discovered that the current file
  is *not* imported in `Mathlib.lean`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variant70dcdcd99b8f119785545b8d986e8141229b07fe66589e3645d6eafe352d8c37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variant70dcdcd99b8f119785545b8d986e8141229b07fe66589e3645d6eafe352d8c37.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01ad90dea8e75b614ed32388d6964b7620163a27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
