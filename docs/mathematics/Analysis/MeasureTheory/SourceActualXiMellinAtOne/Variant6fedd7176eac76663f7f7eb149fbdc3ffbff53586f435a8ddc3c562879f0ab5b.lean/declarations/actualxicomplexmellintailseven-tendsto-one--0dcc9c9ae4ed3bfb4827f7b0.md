# actualXiComplexMellinTailSeven_tendsto_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3caacfa-b5d1-1ffd-36ee-01942f59eee1",
  "kind": "theorem",
  "lexical_name": "actualXiComplexMellinTailSeven_tendsto_one",
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
  "slug": "actualxicomplexmellintailseven-tendsto-one--0dcc9c9ae4ed3bfb4827f7b0",
  "source": {
    "blob": "0d3bec4a9b271850c8d4aec526a19c53a508cb79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 35,
    "path": "GRWTSK/Analysis/MeasureTheory/SourceActualXiMellinAtOne/Variant6fedd7176eac76663f7f7eb149fbdc3ffbff53586f435a8ddc3c562879f0ab5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0dcc9c9ae4ed3bfb4827f7b00df63c10d601e97df828dac31fbdf8de3f9baa7e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SourceActualXiMellinAtOne/Variant6fedd7176eac76663f7f7eb149fbdc3ffbff53586f435a8ddc3c562879f0ab5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3caacfa-b5d1-1ffd-36ee-01942f59eee1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiComplexMellinTailSeven_tendsto_one :
    Tendsto (fun s : ℝ => actualXiComplexMellinTailSeven (s : ℂ)) (𝓝[>] 1)
      (𝓝 ((∫ y in Ioi (7 : ℝ), shiftedActualChebyshev y / y ^ 2 : ℝ) : ℂ)) := by
  have hmeas : ∀ᶠ s : ℝ in 𝓝[>] 1, AEStronglyMeasurable
      (fun y : ℝ => (shiftedActualChebyshev y : ℂ) * (y : ℂ) ^ (-((s : ℂ) + 1)))
        (volume.restrict (Ioi 7)) := by
    filter_upwards [self_mem_nhdsWithin] with s hs
    exact (actualXiComplexMellinTailSeven_integrableOn
      (by simpa only [ofReal_re] using hs)).aestronglyMeasurable
  have hbound : ∀ᶠ s : ℝ in 𝓝[>] 1, ∀ᵐ y ∂volume.restrict (Ioi (7 : ℝ)),
      ‖(shiftedActualChebyshev y : ℂ) * (y : ℂ) ^ (-((s : ℂ) + 1))‖ ≤
        |shiftedActualChebyshev y / y ^ 2| := by
    filter_upwards [self_mem_nhdsWithin] with s hs
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with y hy
    have hy0 : 0 < y := by linarith [show (7 : ℝ) < y from hy]
    have hy1 : 1 ≤ y := by linarith [show (7 : ℝ) < y from hy]
    rw [norm_mul, norm_real, Real.norm_eq_abs, norm_cpow_eq_rpow_re_of_pos hy0]
    simp only [neg_re, add_re, ofReal_re, one_re]
    calc
      _ ≤ |shiftedActualChebyshev y| * y ^ (-(2 : ℝ)) :=
        mul_le_mul_of_nonneg_left
          (Real.rpow_le_rpow_of_exponent_le hy1 (by linarith)) (abs_nonneg _)
      _ = |shiftedActualChebyshev y / y ^ 2| := by
        rw [Real.rpow_neg hy0.le, Real.rpow_two, abs_div,
          abs_of_nonneg (sq_nonneg y), div_eq_mul_inv]
  have hlim : ∀ᵐ y ∂volume.restrict (Ioi (7 : ℝ)),
      Tendsto (fun s : ℝ => (shiftedActualChebyshev y : ℂ) *
        (y : ℂ) ^ (-((s : ℂ) + 1))) (𝓝[>] 1)
        (𝓝 ((shiftedActualChebyshev y : ℂ) * (y : ℂ) ^ (-((1 : ℂ) + 1)))) := by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with y hy
    have hy0 : 0 < y := by linarith [show (7 : ℝ) < y from hy]
    simp_rw [cpow_def_of_ne_zero (ofReal_ne_zero.mpr hy0.ne')]
    exact (by fun_prop : Continuous (fun s : ℝ => (shiftedActualChebyshev y : ℂ) *
      Complex.exp (Complex.log (y : ℂ) * (-((s : ℂ) + 1))))).continuousAt.tendsto.mono_left
        nhdsWithin_le_nhds
  have h := tendsto_integral_filter_of_dominated_convergence
    (fun y : ℝ => |shiftedActualChebyshev y / y ^ 2|) hmeas hbound
      actualXiInverseSquarePhysical_integrableOn.norm hlim
  change Tendsto (fun s : ℝ => actualXiComplexMellinTailSeven (s : ℂ)) (𝓝[>] 1)
    (𝓝 (actualXiComplexMellinTailSeven 1)) at h
  rwa [actualXiComplexMellinTailSeven_at_one_eq_physical] at h

/-- The genuine ordinary integral equals the complete authentic pole-one value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SourceActualXiMellinAtOne/Variant6fedd7176eac76663f7f7eb149fbdc3ffbff53586f435a8ddc3c562879f0ab5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SourceActualXiMellinAtOne/Variant6fedd7176eac76663f7f7eb149fbdc3ffbff53586f435a8ddc3c562879f0ab5b.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d3bec4a9b271850c8d4aec526a19c53a508cb79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
