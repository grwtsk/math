# weightedCenteredInterval_abs_le_variation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cc337d78a4207621e5620c4abcb9cbf5c9a41e0b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/ca854444e00baca67b07e863764fa5f754ff685b48f08c3a2e7086a7652bcce5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:81df5f38-4ad8-c1a3-548e-e74255890f03",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2df39d8a-7e69-fc8a-3176-943107631044",
  "kind": "theorem",
  "lexical_name": "weightedCenteredInterval_abs_le_variation",
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
  "slug": "weightedcenteredinterval-abs-le-variation--f44758bbb0e5d02e33a53657",
  "source": {
    "blob": "cc337d78a4207621e5620c4abcb9cbf5c9a41e0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 60,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantca854444e00baca67b07e863764fa5f754ff685b48f08c3a2e7086a7652bcce5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f44758bbb0e5d02e33a53657b055d1b51d05b65aa37043dc3feefb7888f1780b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantca854444e00baca67b07e863764fa5f754ff685b48f08c3a2e7086a7652bcce5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2df39d8a-7e69-fc8a-3176-943107631044`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedCenteredInterval_abs_le_variation (A : ℝ) (m U L H : ℕ) (hA : 1 ≤ A)
    (hm : 1 ≤ m) (hU : 1 ≤ U) (hUL : U ≤ L) (hLH : L ≤ H) :
    |weightedCenteredInterval A m U L H| ≤ betaPrefixBudget U *
      (|rowWeight A m (H : ℝ)| +
        ∫ x in Ioc (L : ℝ) (H : ℝ), |deriv (rowWeight A m) x|) := by
  have hL0 : 0 < (L : ℝ) := by exact_mod_cast (by omega : 0 < L)
  have hi : IntegrableOn (fun x ↦ |deriv (rowWeight A m) x|) (Icc (L : ℝ) (H : ℝ)) :=
    (rowWeight_deriv_integrable A m (by linarith) hm (L : ℝ) H hL0).abs
  have hg : IntegrableOn
      (fun x ↦ |deriv (rowWeight A m) x * discrepancyPrefix U L x|)
      (Icc (L : ℝ) (H : ℝ)) := (discrepancyKernel_integrable A m U L H hA hm hU hUL).abs
  have hb : 0 ≤ betaPrefixBudget U := Finset.sum_nonneg (fun _ _ ↦ abs_nonneg _)
  have hj : |∫ x in Ioc (L : ℝ) (H : ℝ),
      deriv (rowWeight A m) x * discrepancyPrefix U L x| ≤
      betaPrefixBudget U * ∫ x in Ioc (L : ℝ) (H : ℝ), |deriv (rowWeight A m) x| := by
    calc
      _ ≤ ∫ x in Ioc (L : ℝ) (H : ℝ),
          |deriv (rowWeight A m) x * discrepancyPrefix U L x| := by
        simpa only [Real.norm_eq_abs] using norm_integral_le_integral_norm
          (μ := volume.restrict (Ioc (L : ℝ) (H : ℝ)))
          (fun x ↦ deriv (rowWeight A m) x * discrepancyPrefix U L x)
      _ ≤ ∫ x in Ioc (L : ℝ) (H : ℝ), betaPrefixBudget U * |deriv (rowWeight A m) x| := by
        apply integral_mono_ae (hg.mono_set Ioc_subset_Icc_self)
          ((hi.mono_set Ioc_subset_Icc_self).const_mul _)
        filter_upwards [ae_restrict_mem measurableSet_Ioc] with x hx
        rw [abs_mul]
        nlinarith [mul_le_mul_of_nonneg_left
          (discrepancyPrefix_abs_le U L x hU hUL hx.1.le) (abs_nonneg (deriv (rowWeight A m) x))]
      _ = _ := integral_const_mul _ _
  rw [weightedCenteredInterval_eq_abel A m U L H hA hm hU hUL hLH]
  unfold abelDiscrepancyMoment
  refine (abs_add_le _ _).trans ?_
  rw [abs_mul, abs_neg]
  have hEnd := mul_le_mul_of_nonneg_left
    (discrepancyPrefix_abs_le U L (H : ℝ) hU hUL (by exact_mod_cast hLH))
    (abs_nonneg (rowWeight A m (H : ℝ)))
  nlinarith

/-- The same deterministic bound displays the exact extracted inverse square-root m scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantca854444e00baca67b07e863764fa5f754ff685b48f08c3a2e7086a7652bcce5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantca854444e00baca67b07e863764fa5f754ff685b48f08c3a2e7086a7652bcce5.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc337d78a4207621e5620c4abcb9cbf5c9a41e0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
