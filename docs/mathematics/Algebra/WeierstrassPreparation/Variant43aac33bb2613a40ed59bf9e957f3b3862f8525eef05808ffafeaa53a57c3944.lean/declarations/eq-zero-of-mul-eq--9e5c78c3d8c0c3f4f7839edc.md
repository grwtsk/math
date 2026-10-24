# eq_zero_of_mul_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b11c6287-c93d-bff5-1414-4d32a8d201d7",
  "kind": "theorem",
  "lexical_name": "eq_zero_of_mul_eq",
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
  "slug": "eq-zero-of-mul-eq--9e5c78c3d8c0c3f4f7839edc",
  "source": {
    "blob": "31cd361ff4a4d09e6a6f0618d0a8f34cf9b22ee2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 289,
    "path": "GRWTSK/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e5c78c3d8c0c3f4f7839edc7fd3a78ef1073ac8485b009fe965c650ac9aeaa7",
  "verification": {
    "reference": "docs/verification/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b11c6287-c93d-bff5-1414-4d32a8d201d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_zero_of_mul_eq [IsHausdorff I A]
    {q : A⟦X⟧} {r : A[X]} (hdeg : r.degree < (g.map (Ideal.Quotient.mk I)).order.toNat)
    (heq : g * q = r) : q = 0 ∧ r = 0 := by
  suffices ∀ k i, coeff A i q ∈ I ^ k by
    have hq : q = 0 := by
      ext i
      refine IsHausdorff.haus' (I := I) _ fun k ↦ ?_
      rw [SModEq.zero, smul_eq_mul, Ideal.mul_top]
      exact this _ _
    rw [hq, mul_zero, Eq.comm, Polynomial.coe_eq_zero_iff] at heq
    exact ⟨hq, heq⟩
  intro k
  induction k with
  | zero => simp
  | succ k ih =>
    rw [g.eq_X_pow_mul_shift_add_trunc (g.map (Ideal.Quotient.mk I)).order.toNat] at heq
    have h1 : ∀ i, coeff A i r ∈ I ^ (k + 1) := fun i ↦ by
      rcases lt_or_le i (g.map (Ideal.Quotient.mk I)).order.toNat with hi | hi
      · rw [← heq, pow_succ']
        refine coeff_mul_mem_ideal_mul_ideal_of_coeff_mem_ideal i (fun j hj ↦ ?_)
          (fun j _ ↦ ih j) i le_rfl
        rw [map_add, Polynomial.coeff_coe]
        refine Ideal.add_mem _ ?_ (g.coeff_trunc_order_mem I j)
        simp_rw [coeff_X_pow_mul', if_neg (lt_of_le_of_lt hj hi).not_le, zero_mem]
      simp_rw [Polynomial.coeff_coe,
        Polynomial.coeff_eq_zero_of_degree_lt (lt_of_lt_of_le hdeg (by simpa)), zero_mem]
    rw [add_mul, mul_comm (X ^ _), ← eq_sub_iff_add_eq] at heq
    replace heq := congr(H.isUnit_shift.unit⁻¹ * $heq)
    rw [← mul_assoc, ← mul_assoc, IsUnit.val_inv_mul, one_mul] at heq
    intro i
    rw [← coeff_X_pow_mul _ (g.map (Ideal.Quotient.mk I)).order.toNat i, heq]
    refine coeff_mul_mem_ideal_of_coeff_right_mem_ideal' (fun i ↦ ?_) _
    rw [map_sub]
    refine Ideal.sub_mem _ (h1 _) ?_
    rw [pow_succ']
    refine coeff_mul_mem_ideal_mul_ideal_of_coeff_mem_ideal' (fun i ↦ ?_) ih _
    simp_rw [Polynomial.coeff_coe, g.coeff_trunc_order_mem]

/-- If `g * q + r = g * q' + r'` for some power series `q`, `q'` and some polynomials `r`, `r'`
whose degrees are `< n`, then `q = q'` and `r = r'` are all zero.
This implies the uniqueness of Weierstrass division. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31cd361ff4a4d09e6a6f0618d0a8f34cf9b22ee2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
