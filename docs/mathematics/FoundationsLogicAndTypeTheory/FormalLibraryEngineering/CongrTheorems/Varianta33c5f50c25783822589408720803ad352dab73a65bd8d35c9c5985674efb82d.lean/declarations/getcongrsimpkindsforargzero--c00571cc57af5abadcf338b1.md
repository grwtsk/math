# getCongrSimpKindsForArgZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:766b4f903c0eacc41b16dc5ebf1fc10a4cdd2b2fe49dfaa6c22c44da6cf9e2d1",
  "kind": "def",
  "lexical_name": "getCongrSimpKindsForArgZero",
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
  "slug": "getcongrsimpkindsforargzero--c00571cc57af5abadcf338b1",
  "source": {
    "blob": "e593393d2884ed01fe5b1a6f3b325e9a9c76bd12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 228,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c00571cc57af5abadcf338b183dfc41be32cf526d771cbaec7336f3f6fdcbf60",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:766b4f903c0eacc41b16dc5ebf1fc10a4cdd2b2fe49dfaa6c22c44da6cf9e2d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getCongrSimpKindsForArgZero (info : FunInfo) : MetaM (Array CongrArgKind) := do
  let mut result := #[]
  for h : i in *...info.paramInfo.size do
    if info.resultDeps.contains i then
      result := result.push .fixed
    else if i == 0 then
      result := result.push .eq
    else if info.paramInfo[i].isProp then
      result := result.push .cast
    else if info.paramInfo[i].isInstance then
      if shouldUseSubsingletonInst info result i then
        result := result.push .subsingletonInst
      else
        result := result.push .fixed
    else
      result := result.push .fixed
  return fixKindsForDependencies info result

/--
Auxiliary type for applying `mkCast` at `mkCongrSimpCore?`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e593393d2884ed01fe5b1a6f3b325e9a9c76bd12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
