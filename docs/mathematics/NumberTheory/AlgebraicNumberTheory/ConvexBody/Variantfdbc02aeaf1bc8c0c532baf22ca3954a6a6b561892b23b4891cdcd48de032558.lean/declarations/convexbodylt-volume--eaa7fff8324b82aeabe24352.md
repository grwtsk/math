# convexBodyLT'_volume

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b476eb4ed08625e70f96597062f535e968c201d3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 201,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9ed4215d-4de5-3486-833d-58ac6622f5d3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:263ceeba-9c0d-b1c7-bf1e-c2af18d3cf29",
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
  "slug": "convexbodylt-volume--eaa7fff8324b82aeabe24352",
  "source": {
    "blob": "b476eb4ed08625e70f96597062f535e968c201d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 201,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eaa7fff8324b82aeabe243522d9cfe782c252044f3e388376d40225d780b2444",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:263ceeba-9c0d-b1c7-bf1e-c2af18d3cf29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convexBodyLT'_volume :
    volume (convexBodyLT' K f w₀) = convexBodyLT'Factor K * ∏ w, (f w) ^ (mult w) := by
  have vol_box : ∀ B : ℝ≥0, volume {x : ℂ | |x.re| < 1 ∧ |x.im| < B^2} = 4*B^2 := by
    intro B
    rw [← (Complex.volume_preserving_equiv_real_prod.symm).measure_preimage]
    · simp_rw [Set.preimage_setOf_eq, Complex.measurableEquivRealProd_symm_apply]
      rw [show {a : ℝ × ℝ | |a.1| < 1 ∧ |a.2| < B ^ 2} =
        Set.Ioo (-1 : ℝ) (1 : ℝ) ×ˢ Set.Ioo (- (B : ℝ) ^ 2) ((B : ℝ) ^ 2) by
          ext; simp_rw [Set.mem_setOf_eq, Set.mem_prod, Set.mem_Ioo, abs_lt]]
      simp_rw [volume_eq_prod, prod_prod, Real.volume_Ioo, sub_neg_eq_add, one_add_one_eq_two,
        ← two_mul, ofReal_mul zero_le_two, ofReal_pow (coe_nonneg B), ofReal_ofNat,
        ofReal_coe_nnreal, ← mul_assoc, show (2 : ℝ≥0∞) * 2 = 4 by norm_num]
    · refine (MeasurableSet.inter ?_ ?_).nullMeasurableSet
      · exact measurableSet_lt (measurable_norm.comp Complex.measurable_re) measurable_const
      · exact measurableSet_lt (measurable_norm.comp Complex.measurable_im) measurable_const
  calc
    _ = (∏ x : {w // InfinitePlace.IsReal w}, ENNReal.ofReal (2 * (f x.val))) *
          ((∏ x ∈ Finset.univ.erase  w₀, ENNReal.ofReal (f x.val) ^ 2 * pi) *
          (4 * (f w₀) ^ 2)) := by
      simp_rw [volume_eq_prod, prod_prod, volume_pi, pi_pi, Real.volume_ball]
      rw [← Finset.prod_erase_mul _ _ (Finset.mem_univ w₀)]
      congr 2
      · refine Finset.prod_congr rfl (fun w' hw' ↦ ?_)
        rw [if_neg (Finset.ne_of_mem_erase hw'), Complex.volume_ball]
      · simpa only [ite_true] using vol_box (f w₀)
    _ = ((2 : ℝ≥0) ^ nrRealPlaces K *
          (∏ x : {w // InfinitePlace.IsReal w}, ENNReal.ofReal (f x.val))) *
            ((∏ x ∈ Finset.univ.erase  w₀, ENNReal.ofReal (f x.val) ^ 2) *
              ↑pi ^ (nrComplexPlaces K - 1) * (4 * (f w₀) ^ 2)) := by
      simp_rw [ofReal_mul (by norm_num : 0 ≤ (2 : ℝ)), Finset.prod_mul_distrib, Finset.prod_const,
        Finset.card_erase_of_mem (Finset.mem_univ _), Finset.card_univ, ofReal_ofNat,
        ofReal_coe_nnreal, coe_ofNat]
    _ = convexBodyLT'Factor K * (∏ x : {w // InfinitePlace.IsReal w}, ENNReal.ofReal (f x.val))
        * (∏ x : {w // IsComplex w}, ENNReal.ofReal (f x.val) ^ 2) := by
      rw [show (4 : ℝ≥0∞) = (2 : ℝ≥0) ^ 2 by norm_num, convexBodyLT'Factor, pow_add,
        ← Finset.prod_erase_mul _ _ (Finset.mem_univ w₀), ofReal_coe_nnreal]
      simp_rw [coe_mul, ENNReal.coe_pow]
      ring
    _ = convexBodyLT'Factor K * ∏ w, (f w) ^ (mult w) := by
      simp_rw [prod_eq_prod_mul_prod, coe_mul, coe_finset_prod, mult_isReal, mult_isComplex,
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

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b476eb4ed08625e70f96597062f535e968c201d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
