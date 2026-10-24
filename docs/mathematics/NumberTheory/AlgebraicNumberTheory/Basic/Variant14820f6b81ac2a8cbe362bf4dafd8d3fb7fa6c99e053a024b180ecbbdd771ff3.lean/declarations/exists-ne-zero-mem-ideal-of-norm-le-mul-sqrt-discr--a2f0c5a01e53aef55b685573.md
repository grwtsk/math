# exists_ne_zero_mem_ideal_of_norm_le_mul_sqrt_discr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a4f5c40-b362-0616-97bc-5b31ba8be3e6",
  "kind": "theorem",
  "lexical_name": "exists_ne_zero_mem_ideal_of_norm_le_mul_sqrt_discr",
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
  "slug": "exists-ne-zero-mem-ideal-of-norm-le-mul-sqrt-discr--a2f0c5a01e53aef55b685573",
  "source": {
    "blob": "82dca3d7e001b7b624715e339e8eb2ff175c4ae3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 153,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant14820f6b81ac2a8cbe362bf4dafd8d3fb7fa6c99e053a024b180ecbbdd771ff3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2f0c5a01e53aef55b6855739f57f750bd5331c00fa703010d061393056696da",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant14820f6b81ac2a8cbe362bf4dafd8d3fb7fa6c99e053a024b180ecbbdd771ff3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a4f5c40-b362-0616-97bc-5b31ba8be3e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_ne_zero_mem_ideal_of_norm_le_mul_sqrt_discr (I : (FractionalIdeal (𝓞 K)⁰ K)ˣ) :
    ∃ a ∈ (I : FractionalIdeal (𝓞 K)⁰ K), a ≠ 0 ∧
      |Algebra.norm ℚ (a : K)| ≤ FractionalIdeal.absNorm I.1 * (4 / π) ^ nrComplexPlaces K *
        (finrank ℚ K).factorial / (finrank ℚ K) ^ (finrank ℚ K) * Real.sqrt |discr K| := by
  classical
  -- The smallest possible value for `exists_ne_zero_mem_ideal_of_norm_le`
  let B := (minkowskiBound K I * (convexBodySumFactor K)⁻¹).toReal ^ (1 / (finrank ℚ K : ℝ))
  have h_le : (minkowskiBound K I) ≤ volume (convexBodySum K B) := by
    refine le_of_eq ?_
    rw [convexBodySum_volume, ← ENNReal.ofReal_pow (by positivity), ← Real.rpow_natCast,
      ← Real.rpow_mul toReal_nonneg, div_mul_cancel₀, Real.rpow_one, ofReal_toReal, mul_comm,
      mul_assoc, ← coe_mul, inv_mul_cancel₀ (convexBodySumFactor_ne_zero K), ENNReal.coe_one,
      mul_one]
    · exact mul_ne_top (ne_of_lt (minkowskiBound_lt_top K I)) coe_ne_top
    · exact (Nat.cast_ne_zero.mpr (ne_of_gt finrank_pos))
  convert! exists_ne_zero_mem_ideal_of_norm_le K I h_le
  rw [div_pow B, ← Real.rpow_natCast B, ← Real.rpow_mul (by positivity), div_mul_cancel₀ _
    (Nat.cast_ne_zero.mpr <| ne_of_gt finrank_pos), Real.rpow_one, mul_comm_div, mul_div_assoc']
  congr 1
  rw [eq_comm]
  calc
    _ = FractionalIdeal.absNorm I.1 * (2 : ℝ)⁻¹ ^ nrComplexPlaces K * sqrt ‖discr K‖₊ *
          (2 : ℝ) ^ finrank ℚ K * ((2 : ℝ) ^ nrRealPlaces K * (π / 2) ^ nrComplexPlaces K /
            (Nat.factorial (finrank ℚ K)))⁻¹ := by
      simp_rw [minkowskiBound, convexBodySumFactor,
        volume_fundamentalDomain_fractionalIdealLatticeBasis,
        volume_fundamentalDomain_latticeBasis, toReal_mul, toReal_pow, toReal_inv, coe_toReal,
        toReal_ofNat, mixedEmbedding.finrank, mul_assoc]
      rw [ENNReal.toReal_ofReal (Rat.cast_nonneg.mpr (FractionalIdeal.absNorm_nonneg I.1))]
      simp_rw [NNReal.coe_inv, NNReal.coe_div, NNReal.coe_mul, NNReal.coe_pow, NNReal.coe_div,
        coe_real_pi, NNReal.coe_ofNat, NNReal.coe_natCast]
    _ = FractionalIdeal.absNorm I.1 * (2 : ℝ) ^ (finrank ℚ K - nrComplexPlaces K - nrRealPlaces K +
          nrComplexPlaces K : ℤ) * Real.sqrt ‖discr K‖ * Nat.factorial (finrank ℚ K) *
            π⁻¹ ^ (nrComplexPlaces K) := by
      simp_rw [inv_div, div_eq_mul_inv, mul_inv, ← zpow_neg_one, ← zpow_natCast, mul_zpow,
        ← zpow_mul, neg_one_mul, mul_neg_one, neg_neg, Real.coe_sqrt, coe_nnnorm, sub_eq_add_neg,
        zpow_add₀ (two_ne_zero : (2 : ℝ) ≠ 0)]
      ring
    _ = FractionalIdeal.absNorm I.1 * (2 : ℝ) ^ (2 * nrComplexPlaces K : ℤ) * Real.sqrt ‖discr K‖ *
          Nat.factorial (finrank ℚ K) * π⁻¹ ^ (nrComplexPlaces K) := by
      congr
      rw [← card_add_two_mul_card_eq_rank, Nat.cast_add, Nat.cast_mul, Nat.cast_ofNat]
      ring
    _ = FractionalIdeal.absNorm I.1 * (4 / π) ^ nrComplexPlaces K * (finrank ℚ K).factorial *
          Real.sqrt |discr K| := by
      rw [Int.norm_eq_abs, zpow_mul, show (2 : ℝ) ^ (2 : ℤ) = 4 by norm_cast, div_pow,
        inv_eq_one_div, div_pow, one_pow, zpow_natCast]
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant14820f6b81ac2a8cbe362bf4dafd8d3fb7fa6c99e053a024b180ecbbdd771ff3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant14820f6b81ac2a8cbe362bf4dafd8d3fb7fa6c99e053a024b180ecbbdd771ff3.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82dca3d7e001b7b624715e339e8eb2ff175c4ae3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
