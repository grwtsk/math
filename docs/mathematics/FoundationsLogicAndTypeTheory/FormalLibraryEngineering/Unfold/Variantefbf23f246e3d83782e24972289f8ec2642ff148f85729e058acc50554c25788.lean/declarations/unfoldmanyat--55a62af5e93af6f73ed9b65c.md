# unfoldManyAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c9454d835346e573c23a2a7556f408643f7a4cc11f0508d4da0132400df04e29",
  "kind": "def",
  "lexical_name": "unfoldManyAt",
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
  "slug": "unfoldmanyat--55a62af5e93af6f73ed9b65c",
  "source": {
    "blob": "76fa6127a2c544568a4bafeae5f10385ed8dc55f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 94,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variantefbf23f246e3d83782e24972289f8ec2642ff148f85729e058acc50554c25788.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:55a62af5e93af6f73ed9b65ca51fde57617ebfdc4f7e278c404fd8250d9c4e7a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variantefbf23f246e3d83782e24972289f8ec2642ff148f85729e058acc50554c25788.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c9454d835346e573c23a2a7556f408643f7a4cc11f0508d4da0132400df04e29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unfoldManyAt (unfold? : Name → Option (Option Name)) (goal : MVarId)
    (fvarId : FVarId) : MetaM (Option (MVarId × Array Name)) :=
  goal.withContext do
    let type ← instantiateMVars $ ← fvarId.getType
    let (result, usedDecls) ←
      unfoldManyCore (← mkUnfoldSimpContext) unfold? type |>.run #[]
    if result.expr == type then
      return none
    let some (_, goal) ←
        applySimpResultToLocalDecl goal fvarId result (mayCloseGoal := false)
      | throwTacticEx `aesop_unfold goal "internal error: unexpected result of applySimpResultToLocalDecl"
    return some (goal, usedDecls)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variantefbf23f246e3d83782e24972289f8ec2642ff148f85729e058acc50554c25788.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variantefbf23f246e3d83782e24972289f8ec2642ff148f85729e058acc50554c25788.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76fa6127a2c544568a4bafeae5f10385ed8dc55f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
