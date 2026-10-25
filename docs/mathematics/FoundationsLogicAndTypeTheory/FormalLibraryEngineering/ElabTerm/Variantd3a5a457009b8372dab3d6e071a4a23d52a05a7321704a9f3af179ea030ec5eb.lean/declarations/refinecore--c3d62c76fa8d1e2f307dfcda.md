# refineCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fc535cf13862431f4df58e9d85b0702783da9cc5794bb5e075a4185e7e656e20",
  "kind": "def",
  "lexical_name": "refineCore",
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
  "slug": "refinecore--c3d62c76fa8d1e2f307dfcda",
  "source": {
    "blob": "f956c86be3f826312d1289018b6f880ec2195509",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 205,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElabTerm/Variantd3a5a457009b8372dab3d6e071a4a23d52a05a7321704a9f3af179ea030ec5eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c3d62c76fa8d1e2f307dfcdaf96058949fe1d5757ab12a45002dca31c1ae7533",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElabTerm/Variantd3a5a457009b8372dab3d6e071a4a23d52a05a7321704a9f3af179ea030ec5eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fc535cf13862431f4df58e9d85b0702783da9cc5794bb5e075a4185e7e656e20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def refineCore (stx : Syntax) (tagSuffix : Name) (allowNaturalHoles : Bool) : TacticM Unit := do
  withMainContext do
    let (val, mvarIds') ← elabTermWithHoles stx (← getMainTarget) tagSuffix allowNaturalHoles
    let mvarId ← getMainGoal
    let val ← instantiateMVars val
    if val == mkMVar mvarId then
      /- `val == mkMVar mvarId` is `true` when we've refined the main goal. Refining the main goal
      (e.g. `refine ?a` when `?a` is the main goal) is an unlikely practice; further, it shouldn't
      be possible to create new mvarIds during elaboration when doing so. But in the rare event
      that somehow this happens, this is how we ought to handle it. -/
      replaceMainGoal (mvarId :: mvarIds')
    else
      /- Ensure that the main goal does not occur in `val`. -/
      if val.findMVar? (· == mvarId) matches some _ then
        throwError "`refine` tactic failed, value{indentExpr val}\ndepends on the main goal metavariable `{mkMVar mvarId}`"
      mvarId.assign val
      replaceMainGoal mvarIds'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElabTerm/Variantd3a5a457009b8372dab3d6e071a4a23d52a05a7321704a9f3af179ea030ec5eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElabTerm/Variantd3a5a457009b8372dab3d6e071a4a23d52a05a7321704a9f3af179ea030ec5eb.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f956c86be3f826312d1289018b6f880ec2195509` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
