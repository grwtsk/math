# convexBodyLT'_volume

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2bc2e229-1021-82da-192b-b758eba0b624",
  "kind": "theorem",
  "lexical_name": "convexBodyLT'_volume",
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
  "slug": "convexbodylt-volume--12ba9e826681f941123ef5a1",
  "source": {
    "blob": "bcde65f4321c7c9d0b30b0a7f1e30d92000fe051",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 217,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12ba9e826681f941123ef5a1207d77d49e1665216696965818f5d408fe2c77d7",
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

Occurrence: `result:2bc2e229-1021-82da-192b-b758eba0b624`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convexBodyLT'_volume :
    volume (convexBodyLT' K f w₀) = convexBodyLT'Factor K * ∏ w, (f w) ^ (mult w) := by
  have vol_box : ∀ B : ℝ≥0, volume {x : ℂ | |x.re| < 1 ∧ |x.im| < B ^ 2} = 4 * B ^ 2 := by
    intro B
    rw [← (Complex.volume_preserving_equiv_real_prod.symm).measure_preimage]
    · simp_rw [Set.preimage_ofPred_eq, Complex.measurableEquivRealProd_symm_apply]
      rw [show {a : ℝ × ℝ | |a.1| < 1 ∧ |a.2| < B ^ 2} =
        Set.Ioo (-1 : ℝ) (1 : ℝ) ×ˢ Set.Ioo (-(B : ℝ) ^ 2) ((B : ℝ) ^ 2) by
          ext; simp_rw [Set.mem_ofPred_eq, Set.mem_prod, Set.mem_Ioo, abs_lt]]
      simp_rw [volume_eq_prod, prod_prod, Real.volume_Ioo, sub_neg_eq_add, one_add_one_eq_two,
        ← two_mul, ofReal_mul zero_le_two, ofReal_pow (coe_nonneg B), ofReal_ofNat,
        ofReal_coe_nnreal, ← mul_assoc, show (2 : ℝ≥0∞) * 2 = 4 by norm_num]
    · refine (MeasurableSet.inter ?_ ?_).nullMeasurableSet
      · exact measurableSet_lt (measurable_norm.comp Complex.measurable_re) measurable_const
      · exact measurableSet_lt (measurable_norm.comp Complex.measurable_im) measurable_const
  calc
    _ = (∏ x : {w // InfinitePlace.IsReal w}, ENNReal.ofReal (2 * (f x.val))) *
          ((∏ x ∈ Finset.univ.erase w₀, ENNReal.ofReal (f x.val) ^ 2 * pi) *
          (4 * (f w₀) ^ 2)) := by
      simp_rw [volume_eq_prod, prod_prod, volume_pi, pi_pi, Real.volume_ball]
      rw [← Finset.prod_erase_mul _ _ (Finset.mem_univ w₀)]
      congr 2
      · refine Finset.prod_congr rfl (fun w' hw' ↦ ?_)
        rw [ite_eq_right (Finset.ne_of_mem_erase hw'), Complex.volume_ball]
      · simpa only [ite_true] using vol_box (f w₀)
    _ = ((2 : ℝ≥0) ^ nrRealPlaces K *
          (∏ x : {w // InfinitePlace.IsReal w}, ENNReal.ofReal (f x.val))) *
            ((∏ x ∈ Finset.univ.erase w₀, ENNReal.ofReal (f x.val) ^ 2) *
              ↑pi ^ (nrComplexPlaces K - 1) * (4 * (f w₀) ^ 2)) := by
      simp_rw [ofReal_mul (by simp : 0 ≤ (2 : ℝ)), Finset.prod_mul_distrib, Finset.prod_const,
        Finset.card_erase_of_mem (Finset.mem_univ _), Finset.card_univ, ofReal_ofNat,
        ofReal_coe_nnreal, coe_ofNat]
    _ = convexBodyLT'Factor K * (∏ x : {w // InfinitePlace.IsReal w}, ENNReal.ofReal (f x.val))
        * (∏ x : {w // IsComplex w}, ENNReal.ofReal (f x.val) ^ 2) := by
      rw [show (4 : ℝ≥0∞) = (2 : ℝ≥0) ^ 2 by norm_num, convexBodyLT'Factor, pow_add,
        ← Finset.prod_erase_mul _ _ (Finset.mem_univ w₀), ofReal_coe_nnreal]
      simp_rw [coe_mul, ENNReal.coe_pow]
      ring
    _ = convexBodyLT'Factor K * ∏ w, (f w) ^ (mult w) := by
      simp_rw [prod_eq_prod_mul_prod, coe_mul, ofNNReal_finsetProd, mult_isReal, mult_isComplex,
        pow_one, ENNReal.coe_pow, ofReal_coe_nnreal, mul_assoc]

end convexBodyLT'

section convexBodySum

open ENNReal MeasureTheory Fintype

open scoped Real NNReal

variable [NumberField K] (B : ℝ)
variable {K}

/-- The function that sends `x : mixedSpace K` to `∑ w, ‖x.1 w‖ + 2 * ∑ w, ‖x.2 w‖`. It defines a
norm and it used to define `convexBodySum`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variant0455cc52db1c8c5e12d5f209a31f568a6bb88a28b71ee84fff80baae41e36846.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcde65f4321c7c9d0b30b0a7f1e30d92000fe051` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
