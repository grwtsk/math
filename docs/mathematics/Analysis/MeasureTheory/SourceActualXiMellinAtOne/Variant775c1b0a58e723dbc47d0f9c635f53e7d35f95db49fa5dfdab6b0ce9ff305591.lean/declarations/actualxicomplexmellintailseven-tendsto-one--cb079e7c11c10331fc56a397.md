# actualXiComplexMellinTailSeven_tendsto_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa81f8f7-1e81-1357-e363-608dcea08feb",
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
  "slug": "actualxicomplexmellintailseven-tendsto-one--cb079e7c11c10331fc56a397",
  "source": {
    "blob": "56b66a899ec08fbbd13e71fae22b8553db9cb12c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 35,
    "path": "GRWTSK/Analysis/MeasureTheory/SourceActualXiMellinAtOne/Variant775c1b0a58e723dbc47d0f9c635f53e7d35f95db49fa5dfdab6b0ce9ff305591.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb079e7c11c10331fc56a3979dc3fe7da50867b4d4d89ae5d56b07a6b3c9c1a5",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SourceActualXiMellinAtOne/Variant775c1b0a58e723dbc47d0f9c635f53e7d35f95db49fa5dfdab6b0ce9ff305591.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa81f8f7-1e81-1357-e363-608dcea08feb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–78.

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
      (by simpa only [ofReal_re] using (show 1 < s from hs))).aestronglyMeasurable
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
          (Real.rpow_le_rpow_of_exponent_le hy1
            (by linarith [show 1 < s from hs])) (abs_nonneg _)
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

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SourceActualXiMellinAtOne/Variant775c1b0a58e723dbc47d0f9c635f53e7d35f95db49fa5dfdab6b0ce9ff305591.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SourceActualXiMellinAtOne/Variant775c1b0a58e723dbc47d0f9c635f53e7d35f95db49fa5dfdab6b0ce9ff305591.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56b66a899ec08fbbd13e71fae22b8553db9cb12c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
