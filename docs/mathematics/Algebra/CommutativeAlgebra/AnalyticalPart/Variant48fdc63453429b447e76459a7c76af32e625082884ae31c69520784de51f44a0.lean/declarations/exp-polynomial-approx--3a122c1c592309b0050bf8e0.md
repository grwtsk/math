# exp_polynomial_approx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:097dbd25-6eab-ecb7-25e0-acce1d2bb3ed",
  "kind": "theorem",
  "lexical_name": "exp_polynomial_approx",
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
  "slug": "exp-polynomial-approx--3a122c1c592309b0050bf8e0",
  "source": {
    "blob": "65f7e8a3bed03c25336391c82b82f1376a4b8c37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 169,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/AnalyticalPart/Variant48fdc63453429b447e76459a7c76af32e625082884ae31c69520784de51f44a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a122c1c592309b0050bf8e07d424d0eb0b8fa8e453dff7ea14ee66f0242b362",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/AnalyticalPart/Variant48fdc63453429b447e76459a7c76af32e625082884ae31c69520784de51f44a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:097dbd25-6eab-ecb7-25e0-acce1d2bb3ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem exp_polynomial_approx (f : ℤ[X]) (hf : f.eval 0 ≠ 0) :
    ∃ c,
      ∀ p > (eval 0 f).natAbs, p.Prime →
        ∃ nₚ : ℤ, ¬ ↑p ∣ nₚ ∧ ∃ gₚ : ℤ[X], gₚ.natDegree ≤ p * f.natDegree - 1 ∧
          ∀ {r : ℂ}, r ∈ f.aroots ℂ →
            ‖nₚ • exp r - p • aeval r gₚ‖ ≤ c ^ p / (p - 1)! := by
  simp_rw [nsmul_eq_mul, zsmul_eq_mul]
  choose c' c'0 abs_P_le using exp_polynomial_approx_aux f
  by_cases h : f.aroots ℂ = 0
  · refine ⟨0, fun p _ pp => ⟨p + 1, ?_, 0, ?_⟩⟩ <;> simp [pp.ne_one, Int.natCast_dvd, h]
  replace h : ((f.aroots ℂ).map c').toFinset.Nonempty := by simpa
  refine ⟨((f.aroots ℂ).map c').toFinset.max' h, fun p p_gt prime_p => ?_⟩
  let h := X ^ (p - 1) * f ^ p
  obtain ⟨gₚ', -, gₚ'_eq⟩ := eval_sumIDeriv_of_pos h prime_p.pos
  refine ⟨f.eval 0 ^ p + p * gₚ'.eval 0, ?_, ?_⟩
  · rw [dvd_add_left (dvd_mul_right _ _)]
    contrapose! p_gt with h
    exact Nat.le_of_dvd (Int.natAbs_pos.mpr hf) (Int.natCast_dvd.mp (Int.Prime.dvd_pow' prime_p h))
  obtain ⟨gₚ, gₚ_le, gₚ_eq⟩ := aeval_sumIDeriv ℂ h p
  refine ⟨gₚ, ?_, ?_⟩
  · refine gₚ_le.trans ((tsub_le_tsub_right natDegree_mul_le p).trans ?_)
    rw [natDegree_X_pow, natDegree_pow, tsub_add_eq_add_tsub prime_p.one_le, tsub_right_comm,
      add_tsub_cancel_left]
  intro r hr
  rw [le_div_iff₀' (Nat.cast_pos.mpr (Nat.factorial_pos _) : (0 : ℝ) < _)]
  calc ↑(p - 1)! * ‖↑(eval 0 f ^ p + ↑p * eval 0 gₚ') * cexp r - ↑p * (aeval r) gₚ‖
    _ = ‖↑(p - 1)! * (↑(eval 0 f ^ p + ↑p * eval 0 gₚ') * cexp r - ↑p * (aeval r) gₚ)‖ := ?_
    _ = ‖(↑(p - 1)! * eval 0 f ^ p + ↑p ! * eval 0 gₚ') * cexp r - ↑p ! * (aeval r) gₚ‖ := ?_
    _ = ‖P (map (algebraMap ℤ ℂ) h) r‖ := ?_
    _ ≤ c' r ^ p := abs_P_le r p prime_p.ne_zero
    _ ≤ _ := pow_le_pow_left₀ (c'0 r) ?_ _
  · rw [norm_mul, norm_natCast]
  · rw [← Nat.mul_factorial_pred prime_p.ne_zero]
    push_cast
    ring_nf
  · specialize gₚ_eq r _
    · rw [mem_roots'] at hr
      rw [Polynomial.map_mul, f.map_pow]
      exact dvd_mul_of_dvd_right (pow_dvd_pow_of_dvd (dvd_iff_isRoot.mpr hr.2) _) _
    specialize gₚ'_eq 0 (by rw [C_0, sub_zero])
    simp_rw [nsmul_eq_mul] at gₚ_eq gₚ'_eq
    rw [P_algebraMap, gₚ_eq, gₚ'_eq, eval_pow]
    push_cast
    ring_nf
  · apply Finset.le_max'
    simpa using Multiset.mem_map_of_mem _ hr

end LindemannWeierstrass
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/AnalyticalPart/Variant48fdc63453429b447e76459a7c76af32e625082884ae31c69520784de51f44a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/AnalyticalPart/Variant48fdc63453429b447e76459a7c76af32e625082884ae31c69520784de51f44a0.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65f7e8a3bed03c25336391c82b82f1376a4b8c37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
