# Complete source: GRWTSK.Analysis.FunctionalAnalysis.StarOrder.Variant152631e0f28a46b2de3b305faa7049fffc9af8788e5aec4afb2f8547c4ddfcf1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `007ab338bf61390b0f181db11d3bdd1e14cfe8d1` · SHA-256 `d51fcc4b33cc3717c1a68271f8bdf7bd7ba42420333ba8b14049af9b12d78716`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.IsPositiveSpectrumRestricts.Variante76721d2fbc45976bc6a8fa7f4ff3d4d8b061a22cc7f2a622ddc1d41d1f3d1b4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e76721d2fbc45976bc6a8fa7f4ff3d4d8b061a22cc7f2a622ddc1d41d1f3d1b4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.IsPositiveSpectrumRestricts.Variante76721d2fbc45976bc6a8fa7f4ff3d4d8b061a22cc7f2a622ddc1d41d1f3d1b4","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"e76721d2fbc45976bc6a8fa7f4ff3d4d8b061a22cc7f2a622ddc1d41d1f3d1b4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/InnerProductSpace/StarOrder.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jireh Loreaux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux
-/
import Mathlib.Analysis.InnerProductSpace.Positive
import Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Basic
import Mathlib.Analysis.CStarAlgebra.ContinuousLinearMap

/-!
# Continuous linear maps on a Hilbert space are a `StarOrderedRing`

In this file we show that the continuous linear maps on a complex Hilbert space form a
`StarOrderedRing`.  Note that they are already equipped with the Loewner partial order. We also
prove that, with respect to this partial order, a map is positive if every element of the
real spectrum is nonnegative. Consequently, when `H` is a Hilbert space, then `H →L[ℂ] H` is
equipped with all the usual instances of the continuous functional calculus.

-/


namespace GRWTSK.Analysis.FunctionalAnalysis.IsPositiveSpectrumRestricts.Variante76721d2fbc45976bc6a8fa7f4ff3d4d8b061a22cc7f2a622ddc1d41d1f3d1b4

namespace ContinuousLinearMap

open RCLike
open scoped NNReal

variable {𝕜 H : Type*} [RCLike 𝕜] [NormedAddCommGroup H] [InnerProductSpace 𝕜 H] [CompleteSpace H]
variable [Algebra ℝ (H →L[𝕜] H)] [IsScalarTower ℝ 𝕜 (H →L[𝕜] H)]

open scoped InnerProductSpace in
lemma IsPositive.spectrumRestricts {f : H →L[𝕜] H} (hf : f.IsPositive) :
    SpectrumRestricts f ContinuousMap.realToNNReal := by
  rw [SpectrumRestricts.nnreal_iff]
  intro c hc
  contrapose! hc
  rw [spectrum.notMem_iff, IsUnit.sub_iff, sub_eq_add_neg, ← map_neg]
  rw [← neg_pos] at hc
  set c := -c
  exact isUnit_of_forall_le_norm_inner_map _ (c := ⟨c, hc.le⟩) hc fun x ↦ calc
    ‖x‖ ^ 2 * c = re ⟪algebraMap ℝ (H →L[𝕜] H) c x, x⟫_𝕜 := by
      rw [Algebra.algebraMap_eq_smul_one, ← algebraMap_smul 𝕜 c (1 : (H →L[𝕜] H)), coe_smul',
        Pi.smul_apply, one_apply, inner_smul_left, RCLike.algebraMap_eq_ofReal, conj_ofReal,
        re_ofReal_mul, inner_self_eq_norm_sq, mul_comm]
    _ ≤ re ⟪(f + (algebraMap ℝ (H →L[𝕜] H)) c) x, x⟫_𝕜 := by
      simpa only [add_apply, inner_add_left, map_add, le_add_iff_nonneg_left]
        using hf.inner_nonneg_left x
    _ ≤ ‖⟪(f + (algebraMap ℝ (H →L[𝕜] H)) c) x, x⟫_𝕜‖ := RCLike.re_le_norm _

instance : NonnegSpectrumClass ℝ (H →L[𝕜] H) where
  quasispectrum_nonneg_of_nonneg f hf :=
    QuasispectrumRestricts.nnreal_iff.mp <| sub_zero f ▸ hf.spectrumRestricts

/-- Because this takes `ContinuousFunctionalCalculus ℝ (H →L[𝕜] H) IsSelfAdjoint` as an argument,
and for the moment we only have this for `𝕜 := ℂ`, this is not registered as an instance. -/
lemma instStarOrderedRingRCLike
    [ContinuousFunctionalCalculus ℝ (H →L[𝕜] H) IsSelfAdjoint] :
    StarOrderedRing (H →L[𝕜] H) where
  le_iff f g := by
    constructor
    · intro h
      rw [le_def] at h
      obtain ⟨p, hp₁, -, hp₃⟩ :=
        CFC.exists_sqrt_of_isSelfAdjoint_of_spectrumRestricts h.1 h.spectrumRestricts
      refine ⟨p ^ 2, ?_, by symm; rwa [add_comm, ← eq_sub_iff_add_eq]⟩
      exact AddSubmonoid.subset_closure ⟨p, by simp only [hp₁.star_eq, sq]⟩
    · rintro ⟨p, hp, rfl⟩
      rw [le_def, add_sub_cancel_left]
      induction hp using AddSubmonoid.closure_induction with
      | mem _ hf =>
        obtain ⟨f, rfl⟩ := hf
        simpa using ContinuousLinearMap.IsPositive.adjoint_conj isPositive_one f
      | one => exact isPositive_zero
      | mul f g _ _ hf hg => exact hf.add hg

instance instStarOrderedRing {H : Type*} [NormedAddCommGroup H]
    [InnerProductSpace ℂ H] [CompleteSpace H] : StarOrderedRing (H →L[ℂ] H) :=
  instStarOrderedRingRCLike

end ContinuousLinearMap
```
