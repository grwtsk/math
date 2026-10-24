# DiseqCnstr.toExprProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:34e8804beb76af847122d762021f50c5829caf0914819c1d7b408be6460c2316",
  "kind": "def",
  "lexical_name": "DiseqCnstr.toExprProof",
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
  "slug": "diseqcnstr-toexprproof--8ae747526aa5b9997173f976",
  "source": {
    "blob": "09b069e22dfcacb3208604738b57eeb6bd44578b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 453,
    "line": 422,
    "path": "GRWTSK/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8ae747526aa5b9997173f976b68cb479045ef56fafc7b9e497730151ca6be506",
  "verification": {
    "reference": "docs/verification/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:34e8804beb76af847122d762021f50c5829caf0914819c1d7b408be6460c2316`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 422–453.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def DiseqCnstr.toExprProof (c' : DiseqCnstr) : ProofM Expr := caching c' do
  match c'.h with
  | .core a b lhs rhs =>
    let h ← mkIntModThmPrefix ``Grind.Linarith.diseq_norm
    return mkApp5 h (← mkExprDecl lhs) (← mkExprDecl rhs) (← mkPolyDecl c'.p) eagerReflBoolTrue (← mkDiseqProof a b)
  | .ring c lhs =>
    let h' ← c.toExprProof
    let h' := mkApp2 (← mkCommRingThmPrefix ``Grind.CommRing.diseq_int_module) (← mkRingPolyDecl c.p) h'
    let h ← mkIntModThmPrefix ``Grind.Linarith.diseq_norm
    return mkApp5 h (← mkExprDecl lhs) (← mkExprDecl .zero) (← mkPolyDecl c'.p) eagerReflBoolTrue h'
  | .coreOfNat a b natStructId lhs rhs =>
    let h ← OfNatModuleM.run natStructId do
      let ns ← getNatStruct
      let (a', ha) ← ofNatModule a
      let (b', hb) ← ofNatModule b
      return mkApp10 (mkConst ``Grind.IntModule.OfNatModule.of_diseq [ns.u]) ns.type ns.natModuleInst ns.addRightCancelInst?.get!
        a b a' b' ha hb (← mkDiseqProof a b)
    return mkApp5 (← mkIntModThmPrefix ``Grind.Linarith.diseq_norm)
      (← mkExprDecl lhs) (← mkExprDecl rhs) (← mkPolyDecl c'.p) eagerReflBoolTrue h
  | .neg c =>
    let h ← mkIntModThmPrefix ``Grind.Linarith.diseq_neg
    return mkApp4 h (← mkPolyDecl c.p) (← mkPolyDecl c'.p) eagerReflBoolTrue (← c.toExprProof)
  | .subst k₁ k₂ c₁ c₂ =>
    let h ← mkIntModNoNatDivThmPrefix ``Grind.Linarith.eq_diseq_subst
    return mkApp8 h (toExpr k₁) (toExpr k₂) (← mkPolyDecl c₁.p) (← mkPolyDecl c₂.p) (← mkPolyDecl c'.p)
      eagerReflBoolTrue (← c₁.toExprProof) (← c₂.toExprProof)
  | .subst1 k c₁ c₂ =>
    let h ← mkIntModThmPrefix ``Grind.Linarith.eq_diseq_subst1
    return mkApp7 h (toExpr k) (← mkPolyDecl c₁.p) (← mkPolyDecl c₂.p) (← mkPolyDecl c'.p) eagerReflBoolTrue
      (← c₁.toExprProof) (← c₂.toExprProof)
  | .oneNeZero => throwError "not implemented yet"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean#L422).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09b069e22dfcacb3208604738b57eeb6bd44578b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
