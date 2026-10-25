# elabMPure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b223050c42e51a8c7162b7f790d57ea0fb51f9850ea59f88564fed823dc86c23",
  "kind": "def",
  "lexical_name": "elabMPure",
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
  "slug": "elabmpure--30560cca4bed62ee3c573a7e",
  "source": {
    "blob": "81114d88ecc3d99c4eac482cda24f2d88651594e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pure/Variantf8f918ba947ebded6842f8312b3eb3cef5765a130daf8ee23ada8d8c7f783231.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:30560cca4bed62ee3c573a7e9743045076fbadec872bdb75281be30cba439e74",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pure/Variantf8f918ba947ebded6842f8312b3eb3cef5765a130daf8ee23ada8d8c7f783231.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b223050c42e51a8c7162b7f790d57ea0fb51f9850ea59f88564fed823dc86c23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabMPure : Tactic
  | `(tactic| mpure $hyp) => do
    let (mvar, goal) ← mStartMainGoal
    mvar.withContext do
    let res ← goal.focusHypWithInfo hyp
    let (m, _new_goal, prf) ← mPureCore goal.σs res.focusHyp (← `(binderIdent| $hyp:ident)) fun _ _ => do
      let goal := res.restGoal goal
      let m ← mkFreshExprSyntheticOpaqueMVar goal.toExpr
      return (m, goal, m)
    let prf := res.rewriteHyps goal prf
    mvar.assign prf
    replaceMainGoal [m.mvarId!]
  | _ => throwUnsupportedSyntax

-- NB: We do not use MVarId.intro because that would mean we require all callers to supply an MVarId.
-- This function only knows about the hypothesis H=⌜φ⌝ to destruct.
-- It will provide a proof for Q ∧ H ⊢ₛ T
-- if `k` produces a proof for Q ⊢ₛ T that may range over a pure proof h : φ.
-- It calls `k` with the φ in H = ⌜φ⌝ and a proof `h : φ` thereof.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pure/Variantf8f918ba947ebded6842f8312b3eb3cef5765a130daf8ee23ada8d8c7f783231.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pure/Variantf8f918ba947ebded6842f8312b3eb3cef5765a130daf8ee23ada8d8c7f783231.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81114d88ecc3d99c4eac482cda24f2d88651594e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
