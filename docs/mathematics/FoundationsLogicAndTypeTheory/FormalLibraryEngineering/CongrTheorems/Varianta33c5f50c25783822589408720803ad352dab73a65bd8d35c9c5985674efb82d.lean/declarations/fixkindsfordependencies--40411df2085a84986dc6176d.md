# fixKindsForDependencies

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:015962eb82acbf80a16c945602a1d462b2976b9d86784bbd1e86139fe8d432c9",
  "kind": "def",
  "lexical_name": "fixKindsForDependencies",
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
  "slug": "fixkindsfordependencies--40411df2085a84986dc6176d",
  "source": {
    "blob": "e593393d2884ed01fe5b1a6f3b325e9a9c76bd12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 134,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:40411df2085a84986dc6176db90a8a8c3df70824c04b4a01d271bda6ed42026f",
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

Occurrence: `declaration:015962eb82acbf80a16c945602a1d462b2976b9d86784bbd1e86139fe8d432c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def fixKindsForDependencies (info : FunInfo) (kinds : Array CongrArgKind) : Array CongrArgKind := Id.run do
  let mut kinds := kinds
  for i in *...info.paramInfo.size do
    for hj : j in (i+1)...info.paramInfo.size do
      if info.paramInfo[j].backDeps.contains i then
        if kinds[j]! matches .eq | .fixed then
          -- We must fix `i` because there is a `j` that depends on `i` and `j` is not cast-fixed.
          kinds := kinds.set! i .fixed
          break
  return kinds

/-- Returns `true` if `kinds` contains `.cast` or `.subsingletonInst` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e593393d2884ed01fe5b1a6f3b325e9a9c76bd12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
