# IneqCnstr.toExprProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:107ac8a730e1a1ba27a5d070ce585f01b2a259d102db85448519125241ba012d",
  "kind": "def",
  "lexical_name": "IneqCnstr.toExprProof",
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
  "slug": "ineqcnstr-toexprproof--d2f915dc32d04db0b151a0d7",
  "source": {
    "blob": "6376ec2f54cf7fc18e2a1157792af7ae1bdaa9c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 413,
    "line": 329,
    "path": "GRWTSK/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d2f915dc32d04db0b151a0d73788d8acd124cf30682c9820c0bb6b0542934637",
  "verification": {
    "reference": "docs/verification/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:107ac8a730e1a1ba27a5d070ce585f01b2a259d102db85448519125241ba012d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–413.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def IneqCnstr.toExprProof (c' : IneqCnstr) : ProofM Expr := caching c' do
  match c'.h with
  | .core e lhs rhs =>
    let h ← if c'.strict then mkIntModLawfulPreOrdThmPrefix ``Grind.Linarith.lt_norm else mkIntModPreOrdThmPrefix ``Grind.Linarith.le_norm
    return mkApp5 h (← mkExprDecl lhs) (← mkExprDecl rhs) (← mkPolyDecl c'.p) eagerReflBoolTrue (mkOfEqTrueCore e (← mkEqTrueProof e))
  | .notCore e lhs rhs =>
    let h ← mkIntModLinOrdThmPrefix (if c'.strict then ``Grind.Linarith.not_le_norm else ``Grind.Linarith.not_lt_norm)
    return mkApp5 h (← mkExprDecl lhs) (← mkExprDecl rhs) (← mkPolyDecl c'.p) eagerReflBoolTrue (mkOfEqFalseCore e (← mkEqFalseProof e))
  | .ring c lhs' =>
    let h ← c.toExprProof
    let h' ← if c'.strict then mkCommRingLTThmPrefix ``Grind.CommRing.lt_int_module else mkCommRingLEThmPrefix ``Grind.CommRing.le_int_module
    let h' := mkApp2 h' (← mkRingPolyDecl c.p) h
    let h ← if c'.strict then mkIntModLawfulPreOrdThmPrefix ``Grind.Linarith.lt_norm else mkIntModPreOrdThmPrefix ``Grind.Linarith.le_norm
    return mkApp5 h (← mkExprDecl lhs') (← mkExprDecl .zero) (← mkPolyDecl c'.p) eagerReflBoolTrue h'
  | .coreOfNat e natStructId lhs rhs =>
    let h' ← OfNatModuleM.run natStructId do
      let a := e.appFn!.appArg!
      let b := e.appArg!
      let ns ← getNatStruct
      let (a', ha) ← ofNatModule a
      let (b', hb) ← ofNatModule b
      let h := if c'.strict then
        mkApp7 (mkConst ``Grind.IntModule.OfNatModule.of_lt [ns.u]) ns.type ns.natModuleInst ns.leInst?.get! ns.ltInst?.get!
          ns.lawfulOrderLTInst?.get! ns.isPreorderInst?.get! ns.orderedAddInst?.get!
      else
        mkApp5 (mkConst ``Grind.IntModule.OfNatModule.of_le [ns.u]) ns.type ns.natModuleInst ns.leInst?.get!
          ns.isPreorderInst?.get! ns.orderedAddInst?.get!
      return mkApp7 h a b a' b' ha hb (mkOfEqTrueCore e (← mkEqTrueProof e))
    let h ← if c'.strict then mkIntModLawfulPreOrdThmPrefix ``Grind.Linarith.lt_norm else mkIntModPreOrdThmPrefix ``Grind.Linarith.le_norm
    return mkApp5 h (← mkExprDecl lhs) (← mkExprDecl rhs) (← mkPolyDecl c'.p) eagerReflBoolTrue h'
  | .notCoreOfNat e natStructId lhs rhs =>
    let h' ← OfNatModuleM.run natStructId do
      let a := e.appFn!.appArg!
      let b := e.appArg!
      let ns ← getNatStruct
      let (a', ha) ← ofNatModule a
      let (b', hb) ← ofNatModule b
      let h := if c'.strict then
        mkApp5 (mkConst ``Grind.IntModule.OfNatModule.of_not_le [ns.u]) ns.type ns.natModuleInst ns.leInst?.get!
          ns.isPreorderInst?.get! ns.orderedAddInst?.get!
      else
        mkApp7 (mkConst ``Grind.IntModule.OfNatModule.of_not_lt [ns.u]) ns.type ns.natModuleInst ns.leInst?.get! ns.ltInst?.get!
          ns.lawfulOrderLTInst?.get! ns.isPreorderInst?.get! ns.orderedAddInst?.get!
      return mkApp7 h a b a' b' ha hb (mkOfEqFalseCore e (← mkEqFalseProof e))
    let h ← mkIntModLinOrdThmPrefix (if c'.strict then ``Grind.Linarith.not_le_norm else ``Grind.Linarith.not_lt_norm)
    return mkApp5 h (← mkExprDecl lhs) (← mkExprDecl rhs) (← mkPolyDecl c'.p) eagerReflBoolTrue h'
  | .combine c₁ c₂ =>
    let (pre, c₁, c₂) :=
      match c₁.strict, c₂.strict with
      | true, true => (mkIntModLawfulPreOrdThmPrefix ``Grind.Linarith.lt_lt_combine, c₁, c₂)
      | true, false => (mkIntModLawfulPreOrdThmPrefix ``Grind.Linarith.le_lt_combine, c₂, c₁)
      | false, true => (mkIntModLawfulPreOrdThmPrefix ``Grind.Linarith.le_lt_combine, c₁, c₂)
      | false, false => (mkIntModPreOrdThmPrefix ``Grind.Linarith.le_le_combine, c₁, c₂)
    return mkApp6 (← pre) (← mkPolyDecl c₁.p) (← mkPolyDecl c₂.p) (← mkPolyDecl c'.p) eagerReflBoolTrue
      (← c₁.toExprProof) (← c₂.toExprProof)
  | .oneGtZero =>
    let s ← getStruct
    let h := mkApp8 (mkConst ``Grind.Linarith.zero_lt_one [s.u]) s.type (← getRingInst) (← getLEInst) (← getLTInst) (← getLawfulOrderLTInst) (← getIsPreorderInst) (← getOrderedRingInst) (← getContext)
    return mkApp3 h (← mkPolyDecl c'.p) eagerReflBoolTrue (← mkEqRefl (← getOne))
  | .ofEq a b la lb =>
    let h ← mkIntModPreOrdThmPrefix ``Grind.Linarith.le_of_eq
    return mkApp5 h (← mkExprDecl la) (← mkExprDecl lb) (← mkPolyDecl c'.p) eagerReflBoolTrue (← mkEqProof a b)
  | .ofEqOfNat a b natStructId la lb =>
    let h' ← OfNatModuleM.run natStructId do
      let ns ← getNatStruct
      let (a', ha) ← ofNatModule a
      let (b', hb) ← ofNatModule b
      return mkApp9 (mkConst ``Grind.IntModule.OfNatModule.of_eq [ns.u]) ns.type ns.natModuleInst
        a b a' b' ha hb (← mkEqProof a b)
    let h ← mkIntModPreOrdThmPrefix ``Grind.Linarith.le_of_eq
    return mkApp5 h (← mkExprDecl la) (← mkExprDecl lb) (← mkPolyDecl c'.p) eagerReflBoolTrue h'
  | .ringEq c lhs =>
    let h' ← c.toExprProof
    let h' := mkApp2 (← mkCommRingThmPrefix ``Grind.CommRing.eq_int_module) (← mkRingPolyDecl c.p) h'
    let h ← mkIntModPreOrdThmPrefix ``Grind.Linarith.le_of_eq
    return mkApp5 h (← mkExprDecl lhs) (← mkExprDecl .zero) (← mkPolyDecl c'.p) eagerReflBoolTrue h'
  | .dec h => return mkFVar h
  | .ofDiseqSplit c₁ fvarId h _ =>
    let hFalse ← h.toExprProofCore
    let lt ← getLtFn
    let hNot := mkLambda `h .default (mkApp2 lt (← c₁.p.denoteExpr) (← getZero)) (hFalse.abstract #[mkFVar fvarId])
    let h ← mkIntModLinOrdThmPrefix ``Grind.Linarith.diseq_split_resolve
    return mkApp5 h (← mkPolyDecl c₁.p) (← mkPolyDecl c'.p) eagerReflBoolTrue (← c₁.toExprProof) hNot
  | .subst .. | .norm .. =>  throwError "NIY"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6376ec2f54cf7fc18e2a1157792af7ae1bdaa9c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
