# Matrix.isAdjointPair_equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f976a91-db90-8e43-9272-aece089823c0",
  "kind": "theorem",
  "lexical_name": "Matrix.isAdjointPair_equiv",
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
  "slug": "matrix-isadjointpair-equiv--64ee096545b146cfcad6f55f",
  "source": {
    "blob": "16059923752c0ee67c34f06507385927faaedb49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 624,
    "line": 599,
    "path": "GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Variantb517bf3a5de848c8faffa66dfa20a3b993058651d10c02ee0a0770aed3de001a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64ee096545b146cfcad6f55f64f5c8715bd38a1a8309cd284e838c4624e94c5f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SesquilinearForm/Variantb517bf3a5de848c8faffa66dfa20a3b993058651d10c02ee0a0770aed3de001a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f976a91-db90-8e43-9272-aece089823c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 599–624.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Matrix.isAdjointPair_equiv (P : Matrix n n R) (h : IsUnit P) :
    (Pᵀ * J * P).IsAdjointPair (Pᵀ * J * P) A₁ A₁ ↔
      J.IsAdjointPair J (P * A₁ * P⁻¹) (P * A₁ * P⁻¹) := by
  have h' : IsUnit P.det := P.isUnit_iff_isUnit_det.mp h
  let u := P.nonsingInvUnit h'
  let v := Pᵀ.nonsingInvUnit (P.isUnit_det_transpose h')
  let x := A₁ᵀ * Pᵀ * J
  let y := J * P * A₁
  -- TODO(mathlib4#6607): fix elaboration so `val` isn't needed
  suffices x * u.val = v.val * y ↔ (v⁻¹).val * x = y * (u⁻¹).val by
    dsimp only [Matrix.IsAdjointPair]
    simp only [Matrix.transpose_mul]
    simp only [← mul_assoc, P.transpose_nonsing_inv]
    -- porting note: the previous proof used `conv` and was causing timeouts, so we use `convert`
    convert this using 2
    · rw [mul_assoc, mul_assoc, ←mul_assoc J]
      rfl
    · rw [mul_assoc, mul_assoc, ←mul_assoc _ _ J]
      rfl
  rw [Units.eq_mul_inv_iff_mul_eq]
  conv_rhs => rw [mul_assoc]
  rw [v.inv_mul_eq_iff_eq_mul]
#align matrix.is_adjoint_pair_equiv Matrix.isAdjointPair_equiv

/-- The submodule of pair-self-adjoint matrices with respect to bilinear forms corresponding to
given matrices `J`, `J₂`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SesquilinearForm/Variantb517bf3a5de848c8faffa66dfa20a3b993058651d10c02ee0a0770aed3de001a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Variantb517bf3a5de848c8faffa66dfa20a3b993058651d10c02ee0a0770aed3de001a.lean#L599).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16059923752c0ee67c34f06507385927faaedb49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
