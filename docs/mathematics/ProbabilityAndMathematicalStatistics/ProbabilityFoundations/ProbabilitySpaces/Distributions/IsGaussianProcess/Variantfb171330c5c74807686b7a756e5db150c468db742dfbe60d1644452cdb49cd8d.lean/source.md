# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.IsGaussianProcess.Variantfb171330c5c74807686b7a756e5db150c468db742dfbe60d1644452cdb49cd8d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `65bd034344c56c9c94d88905c72a5b053893e8eb` · SHA-256 `2d01a2e139267ff0c2f40594312695794a6884ceeb6d6161b0d69ed726fa7ca0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.OrderEmbOfFinWithBot.Variant17f12259f03807550ef7f8aa9567163de3764b0fcc1d8f2c4a2032301bd467d6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"17f12259f03807550ef7f8aa9567163de3764b0fcc1d8f2c4a2032301bd467d6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.Distributions.SourceCorpus.OrderEmbOfFinWithBot.Variant17f12259f03807550ef7f8aa9567163de3764b0fcc1d8f2c4a2032301bd467d6","mathematical_subject":"Probability.Distributions","original_sha256":"17f12259f03807550ef7f8aa9567163de3764b0fcc1d8f2c4a2032301bd467d6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Probability/Independence/Process/HasIndepIncrements/IsGaussianProcess.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Etienne Marion. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Etienne Marion
-/
module

public import Mathlib.Probability.Distributions.Gaussian.IsGaussianProcess.Def
public import Mathlib.Probability.Independence.Process.HasIndepIncrements.Basic

import Mathlib.Probability.Distributions.Gaussian.HasGaussianLaw.Basic
import Mathlib.Probability.Distributions.Gaussian.HasGaussianLaw.Independence

/-!

# A stochastic process with independent increments and Gaussian marginals is Gaussian

We prove that a stochastic process with independent increments and Gaussian marginals is Gaussian.
To do so, we first define `I.orderEmbOfFinWithBot : Fin (#I + 1) → T`, which is
the map `(⊥, t₁, ..., tₙ)`, where `t₁ < ... < tₙ` are the elements of `I`
and `⊥` is the smallest element of `T`.

Assume then that `X` is a stochastic process with independent increments and Gaussian marginals,
and such that `X ⊥ = 0` almost surely. Then
`X tᵢ = ∑ j ≤ i-1, (X tⱼ₊₁ - X tⱼ)`. Therefore the vector `(X t₁, ..., X tₙ)` can be obtained
from the vector of the increments by a linear map. It remains to show that the vector of
the increments is Gaussian. Because increments are independent, it is enough to show that each
increment is Gaussian. This follows from the fact that `X tᵢ` and `X tᵢ₊₁` are Gaussian,
and `X tᵢ` and `X tᵢ₊₁ - X tᵢ` are independent (see `IndepFun.hasGaussianLaw_sub_of_sub`).

## Main statement

* `HasIndepIncrements.isGaussianProcess`: A stochastic process `X` with independent increments,
  such that `X t` is Gaussian for all `t` and such that `X ⊥ = 0` almost surely
  is a Gaussian process.

## Tags

independent increments, Gaussian process

-/


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.OrderEmbOfFinWithBot.Variant17f12259f03807550ef7f8aa9567163de3764b0fcc1d8f2c4a2032301bd467d6

open MeasureTheory Finset

variable {T Ω E : Type*} {mΩ : MeasurableSpace Ω} {P : Measure Ω} [LinearOrder T]

namespace Finset

variable (I : Finset T)

section Bot

variable [Bot T]

/-- Given a finite set `I : Finset T` of cardinality `n`,
`I.orderEmbOfFinWithBot : Fin (#I + 1) → T` is the map `(⊥, t₁, ..., tₙ)`,
where `t₁ < ... < tₙ` are the elements of `I` and `⊥` is the smallest element of `T`. -/
noncomputable def orderEmbOfFinWithBot (i : Fin (#I + 1)) : T :=
  if h : i = 0
    then ⊥
    else I.orderEmbOfFin rfl (i.pred h)

@[simp]
lemma orderEmbOfFinWithBot_zero : I.orderEmbOfFinWithBot 0 = ⊥ := rfl

lemma orderEmbOfFinWithBot_of_ne_zero (i : Fin (#I + 1)) (hi : i ≠ 0) :
    I.orderEmbOfFinWithBot i = I.orderEmbOfFin rfl (i.pred hi) := by
  rw [orderEmbOfFinWithBot, dite_eq_right hi]

@[simp]
lemma orderEmbOfFinWithBot_succ (i : Fin #I) :
    I.orderEmbOfFinWithBot i.succ = I.orderEmbOfFin rfl i := by
  rw [orderEmbOfFinWithBot_of_ne_zero, Fin.pred_succ]
  simp

end Bot

lemma monotone_orderEmbOfFinWithBot [OrderBot T] : Monotone (I.orderEmbOfFinWithBot) := by
  intro i j hij
  obtain rfl | hi := eq_or_ne i 0
  · simp
  rw [orderEmbOfFinWithBot_of_ne_zero I i hi, orderEmbOfFinWithBot_of_ne_zero I j (by grind)]
  exact OrderEmbedding.monotone _ (by simpa)

end Finset

namespace ProbabilityTheory

/-- `incrementsToRestrict I` is a continuous linear map `f` such that if `t₁ < ... < tₙ` are
then elements of `I`, then `f (xₜ₁, xₜ₂ - xₜ₁, ..., xₜₙ - xₜₙ₋₁) = (xₜ₁, ..., xₜₙ)`. -/
noncomputable def incrementsToRestrict (R : Type*) [Semiring R] [AddCommMonoid E]
    [Module R E] [TopologicalSpace E] [ContinuousAdd E] (I : Finset T) :
    (Fin #I → E) →L[R] (I → E) :=
  { toFun x i := ∑ j ≤ (I.orderIsoOfFin rfl).symm i, x j
    map_add' x y := by ext; simp [sum_add_distrib]
    map_smul' m x := by ext; simp [smul_sum]
    cont := by fun_prop }

lemma incrementsToRestrict_increments_orderEmbOfFinWithBot_ae_eq_restrict [Bot T] (R : Type*)
    [Semiring R] [AddCommGroup E] [Module R E] [TopologicalSpace E] [ContinuousAdd E]
    {X : T → Ω → E} (h : ∀ᵐ ω ∂P, X ⊥ ω = 0) (I : Finset T) :
    (fun ω ↦ I.restrict (X · ω)) =ᵐ[P]
      (incrementsToRestrict R I) ∘
        (fun ω i ↦ X (I.orderEmbOfFinWithBot i.succ) ω -
          X (I.orderEmbOfFinWithBot i.castSucc) ω) := by
  filter_upwards [h] with ω hω
  ext t
  simp only [restrict, incrementsToRestrict, ContinuousLinearMap.coe_mk', LinearMap.coe_mk,
    AddHom.coe_mk, Function.comp_apply]
  rw [Fin.sum_Iic_sub _ (fun j ↦ X (I.orderEmbOfFinWithBot j) ω)]
  simp [hω, orderEmbOfFin]

/-- A stochastic process `X` with independent increments, such that `X t` is Gaussian for
all `t` and such that `X ⊥ = 0` almost surely is a Gaussian process. -/
public lemma HasIndepIncrements.isGaussianProcess [OrderBot T]
    [NormedAddCommGroup E] [NormedSpace ℝ E] [MeasurableSpace E] [BorelSpace E]
    [SecondCountableTopology E] [CompleteSpace E]
    {X : T → Ω → E} (law : ∀ t, HasGaussianLaw (X t) P) (h_bot : ∀ᵐ ω ∂P, X ⊥ ω = 0)
    (incr : HasIndepIncrements X P) :
    IsGaussianProcess X P where
  hasGaussianLaw I := by
    -- Label `t₁ < ... < tₙ` the elements of `I`.
    -- We want to show that `(X t₁, ..., X tₙ)` is Gaussian.
    have := (law ⊥).isProbabilityMeasure
    obtain rfl | hI := I.eq_empty_or_nonempty
    · -- If `I` is empty, there is nothing to say.
      exact .of_subsingleton
    -- Otherwise we know that `(X t₁, ..., X tₙ) = f (X t₁ - X ⊥, X t₂ - X t₁, ..., X tₙ - X tₙ₋₁)`
    -- almost surely (because `X ⊥ = 0` almost surely)
    -- for a certain continuous linear map `f` called here `incrementsToRestrict I`.
    have := incrementsToRestrict_increments_orderEmbOfFinWithBot_ae_eq_restrict ℝ h_bot I
    -- Therefore it is enough to show that `(X t₁ - X ⊥, X t₂ - X t₁, ..., X tₙ - X tₙ₋₁)` is
    -- Gaussian.
    refine .congr (.map ?_ _) this.symm
    -- Because they are independent, it is enough to show that each `X tᵢ₊₁ - X tᵢ` is Gaussian.
    refine (incr _ _ (monotone_orderEmbOfFinWithBot I)).hasGaussianLaw fun i ↦ ?_
    -- Because `X tᵢ` and `X tᵢ₊₁` are Gaussian, it is enough to show that
    -- `X tᵢ` is independent from `X tᵢ₊₁ - X tᵢ`.
    refine IndepFun.hasGaussianLaw_sub_of_sub (law _) (law _) ?_
    -- This follows from the fact that `X` has independent increments and `X ⊥ = 0` almost surely.
    exact incr.indepFun_eval_sub bot_le
      (monotone_orderEmbOfFinWithBot I (Fin.castSucc_le_succ i)) h_bot

end ProbabilityTheory
```
