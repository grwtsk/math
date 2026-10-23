/-
Copyright (c) 2026 grwtsk contributors. MIT.
Source-bound research increment for grwtsk/math issue #966.
Formalization assistance: OpenAI ChatGPT.
Existing imported declarations and Mathlib retain their upstream attributions.
Evidence: SOURCE_DRAFT; NOT_ELABORATED; NOT_KERNEL_CHECKED.
-/
import GRWTSK.NumberTheory.Moebius.RestrictedAdditiveMultiplicativeBridgeAudit

/-!
# Residual-controlled restricted lower frame

This module supplies ONE finite comparison to the existing
\`HasRestrictedLowerFrameBound\` interface. The finite packet energy is
\`sum_i ‖f i‖^2\`, a nonnegative quadratic observable. The arithmetic
transform, reconstruction operator and both bounds are supplied data.

For a restricted difference set D, suppose
  energy (R (T f)) <= C * energy (T f)
  energy (f - R (T f)) <= q * energy f,
with C > 0, 0 <= q and 2*q < 1. Then on D,
  ((1-2*q)/(2*C)) * energy f <= energy (T f).

This sufficient constant is deliberately conservative (the factor 2
comes from a two-term square estimate); no optimal-frame claim is made.

In particular, no arithmetic T, R, D or uniform C,q is constructed.
A finite lower frame is not the missing subpolynomial Moebius estimate,
does not identify the continuum background with the arithmetic linear
part, and does not prove the Riemann Hypothesis.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- Positive-semidefinite finite energy obeys an exact two-term estimate.
The right side is a *sum of squares*, not a signed quadratic form. -/
theorem finitePacketEnergy_add_le_two
    {ι : Type} [Fintype ι] (f g : ι → ℂ) :
    finitePacketEnergy (f + g) ≤
      2 * finitePacketEnergy f + 2 * finitePacketEnergy g := by
  classical
  have hpoint (i : ι) :
      ‖(f + g) i‖ ^ 2 ≤ 2 * ‖f i‖ ^ 2 + 2 * ‖g i‖ ^ 2 := by
    have htri : ‖(f + g) i‖ ≤ ‖f i‖ + ‖g i‖ := by
      change ‖f i + g i‖ ≤ ‖f i‖ + ‖g i‖
      exact norm_add_le (f i) (g i)
    have hsum : 0 ≤ ‖f i‖ + ‖g i‖ :=
      add_nonneg (norm_nonneg _) (norm_nonneg _)
    have hsq : ‖(f + g) i‖ ^ 2 ≤ (‖f i‖ + ‖g i‖) ^ 2 :=
      (sq_le_sq₀ (norm_nonneg _) hsum).2 htri
    have htwo :
        (‖f i‖ + ‖g i‖) ^ 2 ≤
          2 * ‖f i‖ ^ 2 + 2 * ‖g i‖ ^ 2 := by
      nlinarith [sq_nonneg (‖f i‖ - ‖g i‖)]
    exact hsq.trans htwo
  calc
    finitePacketEnergy (f + g) =
        ∑ i : ι, ‖(f + g) i‖ ^ 2 := rfl
    _ ≤ ∑ i : ι, (2 * ‖f i‖ ^ 2 + 2 * ‖g i‖ ^ 2) := by
      apply Finset.sum_le_sum
      intro i _
      exact hpoint i
    _ = 2 * finitePacketEnergy f + 2 * finitePacketEnergy g := by
      simp [finitePacketEnergy, Finset.sum_add_distrib, Finset.mul_sum]

/-- An exact decomposition of a source packet into its reconstructed part and
the *defined* residual, followed by the two-term energy estimate. -/
theorem finitePacketEnergy_le_reconstruction_add_residual
    {ι κ : Type} [Fintype ι] [Fintype κ]
    (T : FiniteArithmeticBridge ι κ)
    (R : (κ → ℂ) → (ι → ℂ))
    (f : FiniteCenteredPacket ι) :
    finitePacketEnergy f ≤
      2 * finitePacketEnergy (R (T.linearPart f)) +
        2 * finitePacketEnergy (ReconstructionResidual T R f) := by
  have hdecomp :
      f = R (T.linearPart f) + ReconstructionResidual T R f := by
    funext i
    change f i =
      (R (T.linearPart f)) i + (f i - (R (T.linearPart f)) i)
    abel
  rw [hdecomp]
  exact finitePacketEnergy_add_le_two _ _

/-- A bounded approximate reconstruction with relative *squared-energy*
residual q < 1/2 supplies the required positive restricted lower frame.
No hypothesis of global injectivity is used, but both estimates must hold on
the SAME restricted difference space D. -/
theorem hasRestrictedLowerFrameBound_of_small_reconstructionResidual
    {ι κ : Type} [Fintype ι] [Fintype κ]
    (T : FiniteArithmeticBridge ι κ)
    (D : RestrictedDifferenceSpace (ι := ι))
    (R : (κ → ℂ) → (ι → ℂ))
    (C q : ℝ)
    (hC : 0 < C)
    (hq : 0 ≤ q)
    (hsmall : 2 * q < 1)
    (hR : ∀ f : FiniteCenteredPacket ι, f ∈ D →
      finitePacketEnergy (R (T.linearPart f)) ≤
        C * finitePacketEnergy (T.linearPart f))
    (hres : ∀ f : FiniteCenteredPacket ι, f ∈ D →
      finitePacketEnergy (ReconstructionResidual T R f) ≤
        q * finitePacketEnergy f) :
    HasRestrictedLowerFrameBound T D ((1 - 2 * q) / (2 * C)) := by
  have hden : 0 < 2 * C := by positivity
  have hnum : 0 < 1 - 2 * q := by linarith
  refine ⟨div_pos hnum hden, ?_⟩
  intro f hfD
  have hsplit :=
    finitePacketEnergy_le_reconstruction_add_residual T R f
  have hcontract :
      finitePacketEnergy f ≤
        2 * C * finitePacketEnergy (T.linearPart f) +
          2 * q * finitePacketEnergy f := by
    nlinarith [hsplit, hR f hfD, hres f hfD]
  have hraw :
      (1 - 2 * q) * finitePacketEnergy f ≤
        finitePacketEnergy (T.linearPart f) * (2 * C) := by
    nlinarith [hcontract]
  calc
    ((1 - 2 * q) / (2 * C)) * finitePacketEnergy f =
        ((1 - 2 * q) * finitePacketEnergy f) / (2 * C) := by
      ring
    _ ≤ finitePacketEnergy (T.linearPart f) :=
      (div_le_iff₀ hden).2 hraw

end GRWTSK.RiemannHypothesis

#print axioms GRWTSK.RiemannHypothesis.finitePacketEnergy_add_le_two
#print axioms GRWTSK.RiemannHypothesis.finitePacketEnergy_le_reconstruction_add_residual
#print axioms GRWTSK.RiemannHypothesis.hasRestrictedLowerFrameBound_of_small_reconstructionResidual
