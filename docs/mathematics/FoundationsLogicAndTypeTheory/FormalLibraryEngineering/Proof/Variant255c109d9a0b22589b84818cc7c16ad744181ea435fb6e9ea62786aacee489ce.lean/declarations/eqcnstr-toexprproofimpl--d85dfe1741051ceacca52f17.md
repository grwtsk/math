# EqCnstr.toExprProofImpl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ebe282ed3adbfd7bb08508bac03acd32b39c08751bc88c34ea27d249e1ebd91",
  "kind": "def",
  "lexical_name": "EqCnstr.toExprProofImpl",
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
  "slug": "eqcnstr-toexprproofimpl--d85dfe1741051ceacca52f17",
  "source": {
    "blob": "e9b3728968e885da4934f70c241bf6d906cb5091",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 394,
    "line": 340,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d85dfe1741051ceacca52f17829a86c4fa0135d894932cafc320b07816bcba6a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ebe282ed3adbfd7bb08508bac03acd32b39c08751bc88c34ea27d249e1ebd91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–394.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def EqCnstr.toExprProofImpl (c' : EqCnstr) : ProofM Expr := caching c' do
  trace[grind.debug.lia.proof] "{← c'.pp}"
  match c'.h with
  | .core0 a zero =>
    mkEqProof a zero
  | .core a b p₁ p₂ =>
    let h ← mkEqProof a b
    return mkApp6 (mkConst ``Int.Internal.Linear.eq_of_core) (← getContext) (← mkPolyDecl p₁) (← mkPolyDecl p₂) (← mkPolyDecl c'.p) eagerReflBoolTrue h
  | .coreToInt a b toIntThm lhs rhs =>
    let h := mkApp toIntThm (← mkEqProof a b)
    return mkApp6 (mkConst ``Int.Internal.Linear.eq_norm_expr) (← getContext) (← mkExprDecl lhs) (← mkExprDecl rhs) (← mkPolyDecl c'.p) eagerReflBoolTrue h
  | .defn e p =>
    let x ← getVarOf e
    return mkApp6 (mkConst ``Int.Internal.Linear.eq_def) (← getContext) (← mkVarDecl x) (← mkPolyDecl p) (← mkPolyDecl c'.p) eagerReflBoolTrue (← mkEqRefl e)
  | .defnNat h x e =>
    return mkApp6 (mkConst ``Int.Internal.Linear.eq_def') (← getContext) (← mkVarDecl x) (← mkExprDecl e) (← mkPolyDecl c'.p) eagerReflBoolTrue h
  | .norm c =>
    return mkApp5 (mkConst ``Int.Internal.Linear.eq_norm) (← getContext) (← mkPolyDecl c.p) (← mkPolyDecl c'.p) eagerReflBoolTrue (← c.toExprProof)
  | .divCoeffs c =>
    let k := c.p.gcdCoeffs c.p.getConst
    return mkApp6 (mkConst ``Int.Internal.Linear.eq_coeff) (← getContext) (← mkPolyDecl c.p) (← mkPolyDecl c'.p) (toExpr k) eagerReflBoolTrue (← c.toExprProof)
  | .subst x c₁ c₂  =>
    let a := c₁.p.coeff x
    let b := c₂.p.coeff x
    return mkApp9 (mkConst ``Int.Internal.Linear.eq_eq_subst')
      (← getContext) (toExpr a) (toExpr b) (← mkPolyDecl c₁.p) (← mkPolyDecl c₂.p) (← mkPolyDecl c'.p)
      eagerReflBoolTrue (← c₁.toExprProof) (← c₂.toExprProof)
  | .ofLeGe c₁ c₂ =>
    return mkApp6 (mkConst ``Int.Internal.Linear.eq_of_le_ge)
      (← getContext) (← mkPolyDecl c₁.p) (← mkPolyDecl c₂.p)
      eagerReflBoolTrue (← c₁.toExprProof) (← c₂.toExprProof)
  | .ofZeroDvd c =>
    return mkApp3 (mkConst ``Int.Internal.Linear.eq_of_zero_dvd)
      (← getContext) (← mkPolyDecl c.p) (← c.toExprProof)
  | .reorder c => withUnordered <| c.toExprProof
  | .commRingNorm c e p =>
    let h := mkApp4 (mkConst ``Grind.CommRing.norm_int) (← getRingContext) (← mkRingExprDecl e) (← mkRingPolyDecl p) eagerReflBoolTrue
    return mkApp5 (mkConst ``Int.Internal.Linear.eq_norm_poly) (← getContext) (← mkPolyDecl c.p) (← mkPolyDecl c'.p) h (← c.toExprProof)
  | .defnCommRing e p re rp p' =>
    let h := mkApp4 (mkConst ``Grind.CommRing.norm_int) (← getRingContext) (← mkRingExprDecl re) (← mkRingPolyDecl rp) eagerReflBoolTrue
    let x ← getVarOf e
    return mkApp8 (mkConst ``Int.Internal.Linear.eq_def_norm) (← getContext)
      (← mkVarDecl x) (← mkPolyDecl p) (← mkPolyDecl p') (← mkPolyDecl c'.p)
      eagerReflBoolTrue (← mkEqRefl e) h
  | .defnNatCommRing h₁ x e' p re rp p' =>
    let h₂ := mkApp4 (mkConst ``Grind.CommRing.norm_int) (← getRingContext) (← mkRingExprDecl re) (← mkRingPolyDecl rp) eagerReflBoolTrue
    return mkApp9 (mkConst ``Int.Internal.Linear.eq_def'_norm) (← getContext) (← mkVarDecl x) (← mkExprDecl e')
      (← mkPolyDecl p) (← mkPolyDecl p') (← mkPolyDecl c'.p) eagerReflBoolTrue h₁ h₂
  | .mul a? cs =>
    let .add _ x _ := c'.p | c'.throwUnexpected
    mkMulEqProof x a? cs c'
  | .div k y? c => mkDivEqProof k y? c c'
  | .mod k y? c => mkModEqProof k y? c c'
  | .pow ka ca? kb cb? => mkPowEqProof ka ca? kb cb? c'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9b3728968e885da4934f70c241bf6d906cb5091` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
