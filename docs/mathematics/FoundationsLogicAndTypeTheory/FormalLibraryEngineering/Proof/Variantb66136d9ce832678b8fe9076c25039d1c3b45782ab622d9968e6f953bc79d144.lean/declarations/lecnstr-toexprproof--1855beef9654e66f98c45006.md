# LeCnstr.toExprProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:83cba58bac60217d52372f4bfb76ea4e8928931ddc2ced747c4bbee963ab2d5c",
  "kind": "def",
  "lexical_name": "LeCnstr.toExprProof",
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
  "slug": "lecnstr-toexprproof--1855beef9654e66f98c45006",
  "source": {
    "blob": "cf84cd10edc5ac314dcbe6f644a88942bae39c94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 529,
    "line": 451,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1855beef9654e66f98c450066f0f5e9fc39083a07ae65a0c74867b6455580544",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:83cba58bac60217d52372f4bfb76ea4e8928931ddc2ced747c4bbee963ab2d5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 451–529.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def LeCnstr.toExprProof (c' : LeCnstr) : ProofM Expr := caching c' do
  trace[grind.debug.lia.proof] "{← c'.pp}"
  match c'.h with
  | .core e =>
    mkOfEqTrue (← mkEqTrueProof e)
  | .coreNeg e p =>
    let h ← mkOfEqFalse (← mkEqFalseProof e)
    return mkApp5 (mkConst ``Int.Internal.Linear.le_neg) (← getContext) (← mkPolyDecl p) (← mkPolyDecl c'.p) eagerReflBoolTrue h
  | .coreToInt e pos toIntThm lhs rhs =>
    let h ← if pos then pure <| mkOfEqTrueCore e (← mkEqTrueProof e) else pure <| mkOfEqFalseCore e (← mkEqFalseProof e)
    let h := mkApp toIntThm h
    return mkApp6 (mkConst ``Int.Internal.Linear.le_norm_expr) (← getContext) (← mkExprDecl lhs) (← mkExprDecl rhs) (← mkPolyDecl c'.p) eagerReflBoolTrue h
  | .ofNatNonneg a =>
    return mkApp (mkConst ``Nat.ToInt.toNat_nonneg) a
  | .bound h => return h
  | .dec h =>
    return mkFVar h
  | .norm c =>
    return mkApp5 (mkConst ``Int.Internal.Linear.le_norm) (← getContext) (← mkPolyDecl c.p) (← mkPolyDecl c'.p) eagerReflBoolTrue (← c.toExprProof)
  | .divCoeffs c =>
    let k := c.p.gcdCoeffs'
    return mkApp6 (mkConst ``Int.Internal.Linear.le_coeff) (← getContext) (← mkPolyDecl c.p) (← mkPolyDecl c'.p) (toExpr (Int.ofNat k)) eagerReflBoolTrue (← c.toExprProof)
  | .combine c₁ c₂ =>
    return mkApp7 (mkConst ``Int.Internal.Linear.le_combine)
      (← getContext) (← mkPolyDecl c₁.p) (← mkPolyDecl c₂.p) (← mkPolyDecl c'.p)
      eagerReflBoolTrue
      (← c₁.toExprProof) (← c₂.toExprProof)
  | .combineDivCoeffs c₁ c₂ k =>
    return mkApp8 (mkConst ``Int.Internal.Linear.le_combine_coeff)
      (← getContext) (← mkPolyDecl c₁.p) (← mkPolyDecl c₂.p) (← mkPolyDecl c'.p) (toExpr k)
      eagerReflBoolTrue
      (← c₁.toExprProof) (← c₂.toExprProof)
  | .subst x c₁ c₂ =>
    let a := c₁.p.coeff x
    let thm := if a ≥ 0 then
      mkConst ``Int.Internal.Linear.eq_le_subst_nonneg
    else
      mkConst ``Int.Internal.Linear.eq_le_subst_nonpos
    return mkApp8 thm
        (← getContext) (← mkVarDecl x) (← mkPolyDecl c₁.p) (← mkPolyDecl c₂.p) (← mkPolyDecl c'.p)
        eagerReflBoolTrue
        (← c₁.toExprProof) (← c₂.toExprProof)
  | .ofLeDiseq c₁ c₂ =>
    return mkApp7 (mkConst ``Int.Internal.Linear.le_of_le_diseq)
      (← getContext) (← mkPolyDecl c₁.p) (← mkPolyDecl c₂.p) (← mkPolyDecl c'.p)
      eagerReflBoolTrue (← c₁.toExprProof) (← c₂.toExprProof)
  | .dvdTight c₁ c₂ =>
    return mkApp8 (mkConst ``Int.Internal.Linear.dvd_le_tight)
      (← getContext) (toExpr c₁.d) (← mkPolyDecl c₁.p) (← mkPolyDecl c₂.p) (← mkPolyDecl c'.p)
      eagerReflBoolTrue (← c₁.toExprProof) (← c₂.toExprProof)
  | .negDvdTight c₁ c₂ =>
    return mkApp8 (mkConst ``Int.Internal.Linear.dvd_neg_le_tight)
      (← getContext) (toExpr c₁.d) (← mkPolyDecl c₁.p) (← mkPolyDecl c₂.p) (← mkPolyDecl c'.p)
      eagerReflBoolTrue (← c₁.toExprProof) (← c₂.toExprProof)
  | .ofDiseqSplit c₁ fvarId h _ =>
    let p₂ := c₁.p.addConst 1
    let hFalse ← h.toExprProofCore
    let hNot := mkLambda `h .default (mkIntLE (← p₂.denoteExprUsingCurrVars) (mkIntLit 0)) (hFalse.abstract #[mkFVar fvarId])
    return mkApp7 (mkConst ``Int.Internal.Linear.diseq_split_resolve)
      (← getContext) (← mkPolyDecl c₁.p) (← mkPolyDecl p₂) (← mkPolyDecl c'.p) eagerReflBoolTrue (← c₁.toExprProof) hNot
  | .cooper s =>
    let { c₁, c₂, c₃?, left } := s.pred
    let p₁ := c₁.p
    let p₂ := c₂.p
    let coeff := if left then p₂.leadCoeff else p₁.leadCoeff
    match c₃? with
    | none =>
      let thmName := if left then ``Int.Internal.Linear.cooper_left_split_ineq else ``Int.Internal.Linear.cooper_right_split_ineq
      return mkApp8 (mkConst thmName)
        (← getContext) (← mkPolyDecl p₁) (← mkPolyDecl p₂) (toExpr s.k) (toExpr coeff) (← mkPolyDecl c'.p) (← s.toExprProof) eagerReflBoolTrue
    | some c₃ =>
      let thmName := if left then ``Int.Internal.Linear.cooper_dvd_left_split_ineq else ``Int.Internal.Linear.cooper_dvd_right_split_ineq
      return mkApp10 (mkConst thmName)
        (← getContext) (← mkPolyDecl p₁) (← mkPolyDecl p₂) (← mkPolyDecl c₃.p) (toExpr c₃.d) (toExpr s.k) (toExpr coeff) (← mkPolyDecl c'.p) (← s.toExprProof) eagerReflBoolTrue
  | .reorder c => withUnordered <| c.toExprProof
  | .commRingNorm c e p =>
    let h := mkApp4 (mkConst ``Grind.CommRing.norm_int) (← getRingContext) (← mkRingExprDecl e) (← mkRingPolyDecl p) eagerReflBoolTrue
    return mkApp5 (mkConst ``Int.Internal.Linear.le_norm_poly) (← getContext) (← mkPolyDecl c.p) (← mkPolyDecl c'.p) h (← c.toExprProof)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean#L451).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf84cd10edc5ac314dcbe6f644a88942bae39c94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
