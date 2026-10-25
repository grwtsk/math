# StaticStructureM.run

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:61d24db3741c2d172a16164a6ff2095846b6e857629781b5b902f52729764d89",
  "kind": "def",
  "lexical_name": "StaticStructureM.run",
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
  "slug": "staticstructurem-run--390fc06cad2a25b57b6721af",
  "source": {
    "blob": "525ac86ebc47a41e16014bdde1c29e93db685f95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructureStatic/Varianta1e9abf48f5098a4c48112ee118bf609d252940b7d18f059720d110011a7428a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:390fc06cad2a25b57b6721afe036685a52efcb7a11ae5d0ba4a23f77040c3aa2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructureStatic/Varianta1e9abf48f5098a4c48112ee118bf609d252940b7d18f059720d110011a7428a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:61d24db3741c2d172a16164a6ff2095846b6e857629781b5b902f52729764d89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def StaticStructureM.run (script : UScript) (x : StaticStructureM α) :
    CoreM (α × Bool) := do
  let mut steps : Std.HashMap MVarId (Nat × Step) := Std.HashMap.emptyWithCapacity script.size
  for h : i in [:script.size] do
    let step := script[i]
    if h : step.postGoals.size = 1 then
      if step.postGoals[0].goal == step.preGoal then
        continue
    steps := steps.insert step.preGoal (i, step)
  let (a, s) ← ReaderT.run x { steps } |>.run {}
  return (a, s.perfect)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructureStatic/Varianta1e9abf48f5098a4c48112ee118bf609d252940b7d18f059720d110011a7428a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructureStatic/Varianta1e9abf48f5098a4c48112ee118bf609d252940b7d18f059720d110011a7428a.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `525ac86ebc47a41e16014bdde1c29e93db685f95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
