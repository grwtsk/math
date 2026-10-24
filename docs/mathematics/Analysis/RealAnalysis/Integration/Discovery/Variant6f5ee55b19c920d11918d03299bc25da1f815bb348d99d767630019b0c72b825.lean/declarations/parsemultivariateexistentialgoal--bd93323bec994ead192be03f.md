# parseMultivariateExistentialGoal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bbaac5bd7f37e1e3d4580e9094b843edd0ff8e1446da74d0b06f0756a52f32d7",
  "kind": "def",
  "lexical_name": "parseMultivariateExistentialGoal",
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
  "slug": "parsemultivariateexistentialgoal--bd93323bec994ead192be03f",
  "source": {
    "blob": "92fb150c1d062d61fbe2ce8022786a50a261615a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1110,
    "line": 1083,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Discovery/Variant6f5ee55b19c920d11918d03299bc25da1f815bb348d99d767630019b0c72b825.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd93323bec994ead192be03fc9f9167381ba64229b579adfa14fcbe0a4586e8d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Discovery/Variant6f5ee55b19c920d11918d03299bc25da1f815bb348d99d767630019b0c72b825.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bbaac5bd7f37e1e3d4580e9094b843edd0ff8e1446da74d0b06f0756a52f32d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1083–1110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parseMultivariateExistentialGoal (goalType : Lean.Expr) :
    MetaM (Option MultivariateExistentialGoal) := do
  let goalType ← whnf goalType
  -- Match: ∃ m, body where body is a forall chain
  if let .app (.app (.const ``Exists _) _) body := goalType then
    if let .lam mName mTy mBody _ := body then
      withLocalDeclD mName mTy fun m => do
        let mBodyInst := mBody.instantiate1 m
        -- Now parse the multivariate forall chain
        if let some mvGoal ← LeanCert.Tactic.Auto.parseMultivariateBoundGoal mBodyInst then
          match mvGoal with
          | .forallGe vars func bound =>
            -- c ≤ f(...) where c should be our existential variable m
            let boundContainsM := bound.containsFVar m.fvarId!
            if boundContainsM then
              return some (.minimize mTy vars func)
            else return none
          | .forallLe vars func bound =>
            -- f(...) ≤ c where c should be our existential variable m
            let boundContainsM := bound.containsFVar m.fvarId!
            if boundContainsM then
              return some (.maximize mTy vars func)
            else return none
        else return none
    else return none
  else return none

/-- The interval_minimize_mv tactic implementation for multivariate goals -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Discovery/Variant6f5ee55b19c920d11918d03299bc25da1f815bb348d99d767630019b0c72b825.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Discovery/Variant6f5ee55b19c920d11918d03299bc25da1f815bb348d99d767630019b0c72b825.lean#L1083).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92fb150c1d062d61fbe2ce8022786a50a261615a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
