# DvdCnstr.toExprProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:860ed706daf40082bec353529f18563bd11760caa7601d777231d1a9cd9d96db",
  "kind": "def",
  "lexical_name": "DvdCnstr.toExprProof",
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
  "slug": "dvdcnstr-toexprproof--15ce5af2a01095d1f363e830",
  "source": {
    "blob": "cf84cd10edc5ac314dcbe6f644a88942bae39c94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 450,
    "line": 387,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:15ce5af2a01095d1f363e8301b9f7190c00a249d9ee4b098c2d680d22d69cb3e",
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

Occurrence: `declaration:860ed706daf40082bec353529f18563bd11760caa7601d777231d1a9cd9d96db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 387–450.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def DvdCnstr.toExprProof (c' : DvdCnstr) : ProofM Expr := caching c' do
  trace[grind.debug.lia.proof] "{← c'.pp}"
  match c'.h with
  | .core e =>
    mkOfEqTrue (← mkEqTrueProof e)
  | .coreOfNat e thm d a' =>
    let h := mkApp thm (← mkOfEqTrue (← mkEqTrueProof e))
    return mkApp6 (mkConst ``Int.Internal.Linear.dvd_norm_expr) (← getContext) (toExpr (Int.ofNat d)) (← mkExprDecl a') (← mkPolyDecl c'.p) eagerReflBoolTrue h
  | .norm c =>
    return mkApp6 (mkConst ``Int.Internal.Linear.dvd_norm) (← getContext) (toExpr c.d) (← mkPolyDecl c.p) (← mkPolyDecl c'.p) eagerReflBoolTrue (← c.toExprProof)
  | .elim c =>
    return mkApp7 (mkConst ``Int.Internal.Linear.dvd_elim) (← getContext) (toExpr c.d) (← mkPolyDecl c.p) (toExpr c'.d) (← mkPolyDecl c'.p) eagerReflBoolTrue (← c.toExprProof)
  | .divCoeffs c =>
    let g := c.p.gcdCoeffs c.d
    let g := if c.d < 0 then -g else g
    return mkApp8 (mkConst ``Int.Internal.Linear.dvd_coeff) (← getContext) (toExpr c.d) (← mkPolyDecl c.p) (toExpr c'.d) (← mkPolyDecl c'.p) (toExpr g) eagerReflBoolTrue (← c.toExprProof)
  | .solveCombine c₁ c₂ =>
    let (d₁, a₁) ← c₁.get_d_a
    let (d₂, a₂) ← c₂.get_d_a
    let (g, α, β) := gcdExt (a₁*d₂) (a₂*d₁)
    let r := mkApp10 (mkConst ``Int.Internal.Linear.dvd_solve_combine)
      (← getContext) (toExpr c₁.d) (← mkPolyDecl c₁.p) (toExpr c₂.d) (← mkPolyDecl c₂.p) (toExpr c'.d) (← mkPolyDecl c'.p)
      (toExpr g) (toExpr α) (toExpr β)
    return mkApp3 r eagerReflBoolTrue (← c₁.toExprProof) (← c₂.toExprProof)
  | .solveElim c₁ c₂ =>
    return mkApp10 (mkConst ``Int.Internal.Linear.dvd_solve_elim)
      (← getContext) (toExpr c₁.d) (← mkPolyDecl c₁.p) (toExpr c₂.d) (← mkPolyDecl c₂.p) (toExpr c'.d) (← mkPolyDecl c'.p)
      eagerReflBoolTrue (← c₁.toExprProof) (← c₂.toExprProof)
  | .ofEq x c =>
    return mkApp7 (mkConst ``Int.Internal.Linear.dvd_of_eq)
      (← getContext) (← mkVarDecl x) (← mkPolyDecl c.p) (toExpr c'.d) (← mkPolyDecl c'.p)
      eagerReflBoolTrue (← c.toExprProof)
  | .subst x c₁ c₂ =>
    return mkApp10 (mkConst ``Int.Internal.Linear.eq_dvd_subst)
      (← getContext) (← mkVarDecl x) (← mkPolyDecl c₁.p) (toExpr c₂.d) (← mkPolyDecl c₂.p) (toExpr c'.d) (← mkPolyDecl c'.p)
      eagerReflBoolTrue (← c₁.toExprProof) (← c₂.toExprProof)
  | .cooper₁ s =>
    let { c₁, c₂, c₃?, left } := s.pred
    let p₁ := c₁.p
    let p₂ := c₂.p
    match c₃? with
    | none =>
      let thmName := if left then ``Int.Internal.Linear.cooper_left_split_dvd else ``Int.Internal.Linear.cooper_right_split_dvd
      return mkApp8 (mkConst thmName)
        (← getContext) (← mkPolyDecl p₁) (← mkPolyDecl p₂) (toExpr s.k) (toExpr c'.d) (← mkPolyDecl c'.p) (← s.toExprProof) eagerReflBoolTrue
    | some c₃ =>
      let thmName := if left then ``Int.Internal.Linear.cooper_dvd_left_split_dvd1 else ``Int.Internal.Linear.cooper_dvd_right_split_dvd1
      return mkApp10 (mkConst thmName)
        (← getContext) (← mkPolyDecl p₁) (← mkPolyDecl p₂) (← mkPolyDecl c₃.p) (toExpr c₃.d) (toExpr s.k) (toExpr c'.d) (← mkPolyDecl c'.p)
        (← s.toExprProof) eagerReflBoolTrue
  | .cooper₂ s =>
    let { c₁, c₂, c₃?, left } := s.pred
    let p₁ := c₁.p
    let p₂ := c₂.p
    let some c₃ := c₃? | throwError "`grind` internal error, unexpected `cooper₂` proof"
    let thmName := if left then ``Int.Internal.Linear.cooper_dvd_left_split_dvd2 else ``Int.Internal.Linear.cooper_dvd_right_split_dvd2
    return mkApp10 (mkConst thmName)
      (← getContext) (← mkPolyDecl p₁) (← mkPolyDecl p₂) (← mkPolyDecl c₃.p) (toExpr c₃.d) (toExpr s.k) (toExpr c'.d) (← mkPolyDecl c'.p)
      (← s.toExprProof) eagerReflBoolTrue
  | .reorder c => withUnordered <| c.toExprProof
  | .commRingNorm c e p =>
    let h := mkApp4 (mkConst ``Grind.CommRing.norm_int) (← getRingContext) (← mkRingExprDecl e) (← mkRingPolyDecl p) eagerReflBoolTrue
    return mkApp6 (mkConst ``Int.Internal.Linear.dvd_norm_poly) (← getContext) (toExpr c.d) (← mkPolyDecl c.p) (← mkPolyDecl c'.p) h (← c.toExprProof)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean#L387).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf84cd10edc5ac314dcbe6f644a88942bae39c94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
