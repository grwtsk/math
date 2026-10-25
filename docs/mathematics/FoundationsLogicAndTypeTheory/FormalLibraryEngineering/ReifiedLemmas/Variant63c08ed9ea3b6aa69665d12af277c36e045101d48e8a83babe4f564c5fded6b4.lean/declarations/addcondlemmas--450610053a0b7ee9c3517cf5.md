# addCondLemmas

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:79bae9302b1cb6126d32e38d396b8a4f720d83b99caefb0a3b20cc8e6b1d39a0",
  "kind": "def",
  "lexical_name": "addCondLemmas",
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
  "slug": "addcondlemmas--450610053a0b7ee9c3517cf5",
  "source": {
    "blob": "391f64895d36691f99219ae72edd427232a5f716",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 29,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReifiedLemmas/Variant63c08ed9ea3b6aa69665d12af277c36e045101d48e8a83babe4f564c5fded6b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:450610053a0b7ee9c3517cf5886376cf2df7122e0b44dbba204e296f48bd0eee",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReifiedLemmas/Variant63c08ed9ea3b6aa69665d12af277c36e045101d48e8a83babe4f564c5fded6b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:79bae9302b1cb6126d32e38d396b8a4f720d83b99caefb0a3b20cc8e6b1d39a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def addCondLemmas (discr : ReifiedBVLogical) (atom lhs rhs : ReifiedBVExpr)
    (discrExpr atomExpr lhsExpr rhsExpr : Expr) : LemmaM Unit := do
  let some trueLemma ← mkCondTrueLemma discr atom lhs discrExpr atomExpr lhsExpr rhsExpr | return ()
  LemmaM.addLemma trueLemma
  let some falseLemma ← mkCondFalseLemma discr atom rhs discrExpr atomExpr lhsExpr rhsExpr | return ()
  LemmaM.addLemma falseLemma
where
  mkCondTrueLemma (discr : ReifiedBVLogical) (atom lhs : ReifiedBVExpr)
      (discrExpr atomExpr lhsExpr rhsExpr : Expr) : M (Option SatAtBVLogical) := do
    let resExpr := lhsExpr
    let resValExpr := lhs
    let lemmaName := ``Std.Tactic.BVDecide.Reflect.BitVec.cond_true

    let notDiscrExpr := mkApp (mkConst ``Bool.not) discrExpr
    let notDiscr ← ReifiedBVLogical.mkNot discr discrExpr notDiscrExpr

    let eqBVExpr ← mkAppM ``BEq.beq #[atomExpr, resExpr]
    let some eqBVPred ← ReifiedBVPred.mkBinPred atom resValExpr atomExpr resExpr .eq eqBVExpr
      | return none
    let eqBV ← ReifiedBVLogical.ofPred eqBVPred

    let orExpr := mkApp2 (mkConst ``Bool.or) notDiscrExpr eqBVExpr
    let imp ← ReifiedBVLogical.mkGate notDiscr eqBV notDiscrExpr eqBVExpr .or orExpr

    let proof := do
      let evalExpr ← ReifiedBVLogical.mkEvalExpr imp.expr
      let congrProof := (← imp.evalsAtAtoms).getD (ReifiedBVLogical.mkRefl evalExpr)
      let lemmaProof := mkApp4 (mkConst lemmaName) (toExpr lhs.width) discrExpr lhsExpr rhsExpr

      -- !discr || (atom == rhs)
      let impExpr := mkApp2 (mkConst ``Bool.or) notDiscrExpr eqBVExpr

      return mkApp4
        (mkConst ``Std.Tactic.BVDecide.Reflect.Bool.lemma_congr)
        impExpr
        evalExpr
        congrProof
        lemmaProof
    return some ⟨imp.bvExpr, proof, imp.expr⟩

  mkCondFalseLemma (discr : ReifiedBVLogical) (atom rhs : ReifiedBVExpr)
      (discrExpr atomExpr lhsExpr rhsExpr : Expr) : M (Option SatAtBVLogical) := do
    let resExpr := rhsExpr
    let resValExpr := rhs
    let lemmaName := ``Std.Tactic.BVDecide.Reflect.BitVec.cond_false

    let eqBVExpr ← mkAppM ``BEq.beq #[atomExpr, resExpr]
    let some eqBVPred ← ReifiedBVPred.mkBinPred atom resValExpr atomExpr resExpr .eq eqBVExpr
      | return none
    let eqBV ← ReifiedBVLogical.ofPred eqBVPred

    let orExpr := mkApp2 (mkConst ``Bool.or) discrExpr eqBVExpr
    let imp ← ReifiedBVLogical.mkGate discr eqBV discrExpr eqBVExpr .or orExpr

    let proof := do
      let evalExpr ← ReifiedBVLogical.mkEvalExpr imp.expr
      let congrProof := (← imp.evalsAtAtoms).getD (ReifiedBVLogical.mkRefl evalExpr)
      let lemmaProof := mkApp4 (mkConst lemmaName) (toExpr rhs.width) discrExpr lhsExpr rhsExpr

      -- discr || (atom == rhs)
      let impExpr := mkApp2 (mkConst ``Bool.or) discrExpr eqBVExpr

      return mkApp4
        (mkConst ``Std.Tactic.BVDecide.Reflect.Bool.lemma_congr)
        impExpr
        evalExpr
        congrProof
        lemmaProof
    return some ⟨imp.bvExpr, proof, imp.expr⟩

end Lean.Meta.Tactic.BVDecide
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReifiedLemmas/Variant63c08ed9ea3b6aa69665d12af277c36e045101d48e8a83babe4f564c5fded6b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReifiedLemmas/Variant63c08ed9ea3b6aa69665d12af277c36e045101d48e8a83babe4f564c5fded6b4.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `391f64895d36691f99219ae72edd427232a5f716` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
