# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.BoundedVariation.Variant65b1fadfc825238c79930f0c7c7dfd6a8bdbdabec572d56417855e9839e49dba

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `989cdec8c658ebce5354f7985432246b1198827c` · SHA-256 `3328ff1aff4ae01e7981cb9fc1cfff70143a0a8015b443bc6578027466cc20b5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.AeDifferentiableWithinAtOfMemReal.Variantbcde0f1f3a65abb34e7abb71cf4592710fa7b0847c039e4298e60591e79bbdac","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bcde0f1f3a65abb34e7abb71cf4592710fa7b0847c039e4298e60591e79bbdac","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.AeDifferentiableWithinAtOfMemReal.Variantbcde0f1f3a65abb34e7abb71cf4592710fa7b0847c039e4298e60591e79bbdac","mathematical_subject":"Analysis.Calculus","original_sha256":"bcde0f1f3a65abb34e7abb71cf4592710fa7b0847c039e4298e60591e79bbdac","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/BoundedVariation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Sébastien Gouëzel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sébastien Gouëzel
-/
import Mathlib.Analysis.Calculus.FDeriv.Add
import Mathlib.Analysis.Calculus.FDeriv.Equiv
import Mathlib.Analysis.Calculus.FDeriv.Prod
import Mathlib.Analysis.Calculus.Monotone
import Mathlib.Topology.EMetricSpace.BoundedVariation

/-!
# Almost everywhere differentiability of functions with locally bounded variation

In this file we show that a bounded variation function is differentiable almost everywhere.
This implies that Lipschitz functions from the real line into finite-dimensional vector space
are also differentiable almost everywhere.

## Main definitions and results

* `LocallyBoundedVariationOn.ae_differentiableWithinAt` shows that a bounded variation
  function into a finite dimensional real vector space is differentiable almost everywhere.
* `LipschitzOnWith.ae_differentiableWithinAt` is the same result for Lipschitz functions.

We also give several variations around these results.

-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.AeDifferentiableWithinAtOfMemReal.Variantbcde0f1f3a65abb34e7abb71cf4592710fa7b0847c039e4298e60591e79bbdac

open scoped NNReal ENNReal Topology
open Set MeasureTheory Filter

variable {α : Type*} [LinearOrder α] {E : Type*} [PseudoEMetricSpace E]

/-! ##  -/

variable {V : Type*} [NormedAddCommGroup V] [NormedSpace ℝ V] [FiniteDimensional ℝ V]

namespace LocallyBoundedVariationOn

/-- A bounded variation function into `ℝ` is differentiable almost everywhere. Superseded by
`ae_differentiableWithinAt_of_mem`. -/
theorem ae_differentiableWithinAt_of_mem_real {f : ℝ → ℝ} {s : Set ℝ}
    (h : LocallyBoundedVariationOn f s) : ∀ᵐ x, x ∈ s → DifferentiableWithinAt ℝ f s x := by
  obtain ⟨p, q, hp, hq, rfl⟩ : ∃ p q, MonotoneOn p s ∧ MonotoneOn q s ∧ f = p - q :=
    h.exists_monotoneOn_sub_monotoneOn
  filter_upwards [hp.ae_differentiableWithinAt_of_mem, hq.ae_differentiableWithinAt_of_mem] with
    x hxp hxq xs
  exact (hxp xs).sub (hxq xs)

/-- A bounded variation function into a finite dimensional product vector space is differentiable
almost everywhere. Superseded by `ae_differentiableWithinAt_of_mem`. -/
theorem ae_differentiableWithinAt_of_mem_pi {ι : Type*} [Fintype ι] {f : ℝ → ι → ℝ} {s : Set ℝ}
    (h : LocallyBoundedVariationOn f s) : ∀ᵐ x, x ∈ s → DifferentiableWithinAt ℝ f s x := by
  have A : ∀ i : ι, LipschitzWith 1 fun x : ι → ℝ => x i := fun i => LipschitzWith.eval i
  have : ∀ i : ι, ∀ᵐ x, x ∈ s → DifferentiableWithinAt ℝ (fun x : ℝ => f x i) s x := fun i ↦ by
    apply ae_differentiableWithinAt_of_mem_real
    exact LipschitzWith.comp_locallyBoundedVariationOn (A i) h
  filter_upwards [ae_all_iff.2 this] with x hx xs
  exact differentiableWithinAt_pi.2 fun i => hx i xs

/-- A real function into a finite dimensional real vector space with bounded variation on a set
is differentiable almost everywhere in this set. -/
theorem ae_differentiableWithinAt_of_mem {f : ℝ → V} {s : Set ℝ}
    (h : LocallyBoundedVariationOn f s) : ∀ᵐ x, x ∈ s → DifferentiableWithinAt ℝ f s x := by
  let A := (Basis.ofVectorSpace ℝ V).equivFun.toContinuousLinearEquiv
  suffices H : ∀ᵐ x, x ∈ s → DifferentiableWithinAt ℝ (A ∘ f) s x by
    filter_upwards [H] with x hx xs
    have : f = (A.symm ∘ A) ∘ f := by
      simp only [ContinuousLinearEquiv.symm_comp_self, Function.id_comp]
    rw [this]
    exact A.symm.differentiableAt.comp_differentiableWithinAt x (hx xs)
  apply ae_differentiableWithinAt_of_mem_pi
  exact A.lipschitz.comp_locallyBoundedVariationOn h

/-- A real function into a finite dimensional real vector space with bounded variation on a set
is differentiable almost everywhere in this set. -/
theorem ae_differentiableWithinAt {f : ℝ → V} {s : Set ℝ} (h : LocallyBoundedVariationOn f s)
    (hs : MeasurableSet s) : ∀ᵐ x ∂volume.restrict s, DifferentiableWithinAt ℝ f s x := by
  rw [ae_restrict_iff' hs]
  exact h.ae_differentiableWithinAt_of_mem

/-- A real function into a finite dimensional real vector space with bounded variation
is differentiable almost everywhere. -/
theorem ae_differentiableAt {f : ℝ → V} (h : LocallyBoundedVariationOn f univ) :
    ∀ᵐ x, DifferentiableAt ℝ f x := by
  filter_upwards [h.ae_differentiableWithinAt_of_mem] with x hx
  rw [differentiableWithinAt_univ] at hx
  exact hx (mem_univ _)

end LocallyBoundedVariationOn

/-- A real function into a finite dimensional real vector space which is Lipschitz on a set
is differentiable almost everywhere in this set. For the general Rademacher theorem assuming
that the source space is finite dimensional, see `LipschitzOnWith.ae_differentiableWithinAt_of_mem`.
-/
theorem LipschitzOnWith.ae_differentiableWithinAt_of_mem_real {C : ℝ≥0} {f : ℝ → V} {s : Set ℝ}
    (h : LipschitzOnWith C f s) : ∀ᵐ x, x ∈ s → DifferentiableWithinAt ℝ f s x :=
  h.locallyBoundedVariationOn.ae_differentiableWithinAt_of_mem

/-- A real function into a finite dimensional real vector space which is Lipschitz on a set
is differentiable almost everywhere in this set. For the general Rademacher theorem assuming
that the source space is finite dimensional, see `LipschitzOnWith.ae_differentiableWithinAt`. -/
theorem LipschitzOnWith.ae_differentiableWithinAt_real {C : ℝ≥0} {f : ℝ → V} {s : Set ℝ}
    (h : LipschitzOnWith C f s) (hs : MeasurableSet s) :
    ∀ᵐ x ∂volume.restrict s, DifferentiableWithinAt ℝ f s x :=
  h.locallyBoundedVariationOn.ae_differentiableWithinAt hs

/-- A real Lipschitz function into a finite dimensional real vector space is differentiable
almost everywhere. For the general Rademacher theorem assuming
that the source space is finite dimensional, see `LipschitzWith.ae_differentiableAt`. -/
theorem LipschitzWith.ae_differentiableAt_real {C : ℝ≥0} {f : ℝ → V} (h : LipschitzWith C f) :
    ∀ᵐ x, DifferentiableAt ℝ f x :=
  (h.locallyBoundedVariationOn univ).ae_differentiableAt
```
