# convexBodySum_volume

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7ca0a69-745a-8a1c-69db-9f0170d76f43",
  "kind": "theorem",
  "lexical_name": "convexBodySum_volume",
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
  "slug": "convexbodysum-volume--37a8d77af19a156303407240",
  "source": {
    "blob": "bcde65f4321c7c9d0b30b0a7f1e30d92000fe051",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 451,
    "line": 385,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37a8d77af19a156303407240013b37468501d167a11566a8a85d87140b105442",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7ca0a69-745a-8a1c-69db-9f0170d76f43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–451.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convexBodySum_volume :
    volume (convexBodySum K B) = (convexBodySumFactor K) * (.ofReal B) ^ (finrank ℚ K) := by
  obtain hB | hB := le_or_gt B 0
  · rw [convexBodySum_volume_eq_zero_of_le_zero K hB, ofReal_eq_zero.mpr hB, zero_pow, mul_zero]
    exact finrank_pos.ne'
  · suffices volume (convexBodySum K 1) = (convexBodySumFactor K) by
      rw [mul_comm]
      convert! addHaar_smul volume B (convexBodySum K 1)
      · simp_rw [← Set.preimage_smul_inv₀ (ne_of_gt hB), Set.preimage_ofPred_eq, convexBodySumFun,
        normAtPlace_smul, abs_inv, abs_eq_self.mpr (le_of_lt hB), ← mul_assoc, mul_comm, mul_assoc,
        ← Finset.mul_sum, inv_mul_le_iff₀ hB, mul_one]
      · rw [abs_pow, ofReal_pow (abs_nonneg _), abs_eq_self.mpr (le_of_lt hB),
          mixedEmbedding.finrank]
      · exact this.symm
    rw [MeasureTheory.measure_le_eq_lt _ ((convexBodySumFun_eq_zero_iff 0).mpr rfl)
      convexBodySumFun_neg convexBodySumFun_add_le
      (fun hx => (convexBodySumFun_eq_zero_iff _).mp hx)
      (fun r x => le_of_eq (convexBodySumFun_smul r x))]
    rw [measure_lt_one_eq_integral_div_gamma (g := fun x : (mixedSpace K) => convexBodySumFun x)
      volume ((convexBodySumFun_eq_zero_iff 0).mpr rfl) convexBodySumFun_neg convexBodySumFun_add_le
      (fun hx => (convexBodySumFun_eq_zero_iff _).mp hx)
      (fun r x => le_of_eq (convexBodySumFun_smul r x)) zero_lt_one]
    simp_rw [mixedEmbedding.finrank, div_one, Gamma_nat_eq_factorial, ofReal_div_of_pos
      (Nat.cast_pos.mpr (Nat.factorial_pos _)), Real.rpow_one, ofReal_natCast]
    suffices ∫ x : mixedSpace K, exp (-convexBodySumFun x) =
        (2 : ℝ) ^ nrRealPlaces K * (π / 2) ^ nrComplexPlaces K by
      rw [this, convexBodySumFactor, ofReal_mul (by positivity), ofReal_pow zero_le_two,
        ofReal_pow (by positivity), ofReal_div_of_pos zero_lt_two, ofReal_ofNat,
        ← NNReal.coe_real_pi, ofReal_coe_nnreal, coe_div (Nat.cast_ne_zero.mpr
        (Nat.factorial_ne_zero _)), coe_mul, coe_pow, coe_pow, coe_ofNat, coe_div two_ne_zero,
        coe_ofNat, coe_natCast]
    calc
      _ = (∫ x : {w : InfinitePlace K // IsReal w} → ℝ, ∏ w, exp (-‖x w‖)) *
              (∫ x : {w : InfinitePlace K // IsComplex w} → ℂ, ∏ w, exp (-2 * ‖x w‖)) := by
        simp_rw [convexBodySumFun_apply', neg_add, ← neg_mul, Finset.mul_sum,
          ← Finset.sum_neg_distrib, exp_add, exp_sum, ← integral_prod_mul, volume_eq_prod]
      _ = (∫ x : ℝ, exp (-|x|)) ^ nrRealPlaces K *
              (∫ x : ℂ, Real.exp (-2 * ‖x‖)) ^ nrComplexPlaces K := by
        rw [integral_fintype_prod_volume_eq_pow (fun x => exp (-‖x‖)),
          integral_fintype_prod_volume_eq_pow (fun x => exp (-2 * ‖x‖))]
        simp_rw [norm_eq_abs]
      _ = (2 * Gamma (1 / 1 + 1)) ^ nrRealPlaces K *
              (π * (2 : ℝ) ^ (-(2 : ℝ) / 1) * Gamma (2 / 1 + 1)) ^ nrComplexPlaces K := by
        rw [integral_comp_abs (f := fun x => exp (-x)), ← integral_exp_neg_rpow zero_lt_one,
          ← Complex.integral_exp_neg_mul_rpow le_rfl zero_lt_two]
        simp_rw [Real.rpow_one]
      _ = (2 : ℝ) ^ nrRealPlaces K * (π / 2) ^ nrComplexPlaces K := by
        simp_rw [div_one, one_add_one_eq_two, Gamma_add_one two_ne_zero, Gamma_two, mul_one,
          mul_assoc, ← Real.rpow_add_one two_ne_zero, show (-2 : ℝ) + 1 = -1 by norm_num,
          Real.rpow_neg_one, div_eq_mul_inv]

end convexBodySum

section minkowski

open MeasureTheory MeasureTheory.Measure Module ZSpan Real Submodule

open scoped ENNReal NNReal nonZeroDivisors IntermediateField

variable [NumberField K] (I : (FractionalIdeal (𝓞 K)⁰ K)ˣ)

open scoped Classical in
/-- The bound that appears in **Minkowski Convex Body theorem**, see
`MeasureTheory.exists_ne_zero_mem_lattice_of_measure_mul_two_pow_lt_measure`. See
`NumberField.mixedEmbedding.volume_fundamentalDomain_idealLatticeBasis_eq` and
`NumberField.mixedEmbedding.volume_fundamentalDomain_latticeBasis` for the computation of
`volume (fundamentalDomain (idealLatticeBasis K))`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcde65f4321c7c9d0b30b0a7f1e30d92000fe051` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
