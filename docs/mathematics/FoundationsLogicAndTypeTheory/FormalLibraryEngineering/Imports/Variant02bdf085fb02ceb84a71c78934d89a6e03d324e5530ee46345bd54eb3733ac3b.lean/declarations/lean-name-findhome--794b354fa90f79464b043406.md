# Lean.Name.findHome

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f0461a1537bdb684e8ace4d28140f6c946f1d46e652ff5ea1abe5a8b62ee5124",
  "kind": "def",
  "lexical_name": "Lean.Name.findHome",
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
  "slug": "lean-name-findhome--794b354fa90f79464b043406",
  "source": {
    "blob": "19057ae2f229ff04681481ad6cbc6d9daa067837",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 159,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imports/Variant02bdf085fb02ceb84a71c78934d89a6e03d324e5530ee46345bd54eb3733ac3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:794b354fa90f79464b043406ff1df8582b57231059db469c946bdc5f07d0e446",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imports/Variant02bdf085fb02ceb84a71c78934d89a6e03d324e5530ee46345bd54eb3733ac3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f0461a1537bdb684e8ace4d28140f6c946f1d46e652ff5ea1abe5a8b62ee5124`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Lean.Name.findHome (n : Name) : CoreM NameSet := do
  let required ← n.requiredModules
  let imports := (← getEnv).importGraph.transitiveClosure
  let mut candidates : NameSet := {}
  for (n, i) in imports do
    if required.all fun r => n == r || i.contains r then
      candidates := candidates.insert n
  for c in candidates do
    for i in candidates do
      if imports.find? i |>.getD {} |>.contains c then
        candidates := candidates.erase i
  return candidates

open Elab in
/--
Find locations as high as possible in the import hierarchy
where the named declaration could live.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imports/Variant02bdf085fb02ceb84a71c78934d89a6e03d324e5530ee46345bd54eb3733ac3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imports/Variant02bdf085fb02ceb84a71c78934d89a6e03d324e5530ee46345bd54eb3733ac3b.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19057ae2f229ff04681481ad6cbc6d9daa067837` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
