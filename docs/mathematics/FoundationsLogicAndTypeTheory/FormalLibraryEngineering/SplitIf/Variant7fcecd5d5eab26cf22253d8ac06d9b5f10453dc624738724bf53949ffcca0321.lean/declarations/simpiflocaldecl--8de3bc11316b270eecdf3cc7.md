# simpIfLocalDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2fe8fd311f6141f43d0833613458dd40338dc982d05f245dc639c9b439341f50",
  "kind": "def",
  "lexical_name": "simpIfLocalDecl",
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
  "slug": "simpiflocaldecl--8de3bc11316b270eecdf3cc7",
  "source": {
    "blob": "2c7cfa824de083dacc2a2d73157b51d23aa33eb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 300,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant7fcecd5d5eab26cf22253d8ac06d9b5f10453dc624738724bf53949ffcca0321.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8de3bc11316b270eecdf3cc71d5a7a963650d6020b04b89137efd999cede6128",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant7fcecd5d5eab26cf22253d8ac06d9b5f10453dc624738724bf53949ffcca0321.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2fe8fd311f6141f43d0833613458dd40338dc982d05f245dc639c9b439341f50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def simpIfLocalDecl (mvarId : MVarId) (fvarId : FVarId) (useNewSemantics := false) : MetaM MVarId := do
  if useNewSemantics || !backward.split.get (← getOptions) then
    let ctx ← getSimpContext'
    let numIndices ← getNumIndices mvarId
    let s ← getSimprocs numIndices (useDecide := false)
    let (some (_, mvarId'), _) ← simpLocalDecl mvarId fvarId ctx s (mayCloseGoal := false) | unreachable!
    return mvarId'
  else
    let mut ctx ← getSimpContext
    let (some (_, mvarId'), _) ← simpLocalDecl mvarId fvarId ctx {} (← mvarId.withContext <| mkDischarge?) (mayCloseGoal := false) | unreachable!
    return mvarId'

/--
Split an `if-then-else` in the goal target.
If `useNewSemantics` is `true`, the flag `backward.split` is ignored.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant7fcecd5d5eab26cf22253d8ac06d9b5f10453dc624738724bf53949ffcca0321.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant7fcecd5d5eab26cf22253d8ac06d9b5f10453dc624738724bf53949ffcca0321.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c7cfa824de083dacc2a2d73157b51d23aa33eb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
