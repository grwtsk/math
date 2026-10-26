/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and licenses. -/

import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOAOperatorSupport

set_option autoImplicit false

/-!
# Finite QAOA one-site mixer kernels and support

The standard Pauli-X rotation at a finite vertex is represented by the
matrix with entries cos(beta) on the diagonal and -i sin(beta) when
source and target configurations differ by flipping exactly that site.

The source-level results establish:
* site-flip commutation, involutivity, and an exact sum action;
* locality of the actual one-site mixer matrix kernel to the singleton site;
* an explicit four-term Heisenberg mixer polynomial whose support does
  not grow for a kernel satisfying both tensor-locality conditions; and
* exact cancellation of that polynomial when the mixer site is outside
  the support of the observable.

The identification of the four-term polynomial with the double matrix
product M(-beta) K M(beta) is a separate pending supplier; no assertion
about the full QAOA circuit or a depth-p causal cone is made here.
No Lean compilation, fresh kernel check, or transitive axiom audit is
inferred from source inspection.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOAMixerKernelSupport

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinCutEnergy
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QuantumMaxCut
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOAFiniteLocality
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOAOperatorSupport

variable {V : Type*} [Fintype V] [DecidableEq V]

/-- Flips at two sites commute as configuration maps, including equal sites. -/
theorem flipAt_commute (v w : V) (σ : Configuration V) :
    flipAt v (flipAt w σ) = flipAt w (flipAt v σ) := by
  by_cases hvw : v = w
  · subst w
    rfl
  · funext x
    by_cases hxv : x = v
    · subst x
      simp [flipAt, hvw, Ne.symm hvw]
    · by_cases hxw : x = w
      · subst x
        simp [flipAt, hvw, Ne.symm hvw]
      · simp [flipAt, hxv, hxw]

/-- Each coordinate flip is an injective map on configurations. -/
theorem flipAt_injective (v : V) : Function.Injective (flipAt v) := by
  intro σ τ heq
  have h := congrArg (flipAt v) heq
  simpa only [flipAt_involutive] using h

/-- The two possible orientations of a flip equality coincide. -/
theorem eq_flipAt_iff (v : V) (σ τ : Configuration V) :
    σ = flipAt v τ ↔ τ = flipAt v σ := by
  constructor
  · intro h
    have h' := congrArg (flipAt v) h
    simpa only [flipAt_involutive] using h'.symm
  · intro h
    have h' := congrArg (flipAt v) h
    simpa only [flipAt_involutive] using h'.symm

/-- One-site Pauli-X mixer matrix:
    cos(beta) I - i sin(beta) X_v. -/
noncomputable def mixerKernel (β : ℝ) (v : V) : Kernel V :=
  fun σ τ =>
    (if σ = τ then (Real.cos β : ℂ) else 0) -
      (if σ = flipAt v τ then
        Complex.I * (Real.sin β : ℂ) else 0)

/-- The mixer matrix kernel has support at the one vertex on which it acts.
    This uses both off-site zero transitions and outside-flip invariance. -/
theorem mixerKernel_local (β : ℝ) (v : V) :
    IsLocalKernel ({v} : Finset V) (mixerKernel β v) := by
  refine ⟨?_, ?_⟩
  · intro σ τ w hw hdiff
    have hwv : w ≠ v := by simpa using hw
    have hdiag : σ ≠ τ := by
      intro heq
      exact hdiff (congrArg (fun a : Configuration V => a w) heq)
    have hflip : σ ≠ flipAt v τ := by
      intro heq
      apply hdiff
      calc
        σ w = (flipAt v τ) w :=
          congrArg (fun a : Configuration V => a w) heq
        _ = τ w := flipAt_apply_of_ne v w τ hwv
    simp [mixerKernel, hdiag, hflip]
  · intro σ τ w hw
    have hdiag :
        (flipAt w σ = flipAt w τ) ↔ σ = τ :=
      ⟨flipAt_injective w, fun h => congrArg (flipAt w) h⟩
    have hflip :
        (flipAt w σ = flipAt v (flipAt w τ)) ↔
          σ = flipAt v τ := by
      rw [flipAt_commute v w τ]
      exact ⟨flipAt_injective w,
        fun h => congrArg (flipAt w) h⟩
    unfold mixerKernel
    simp only [hdiag, hflip]

/-- Apply a finite complex matrix kernel to a basis-amplitude vector. -/
noncomputable def kernelAction (K : Kernel V) (ψ : State V) : State V :=
  fun σ => ∑ τ : Configuration V, K σ τ * ψ τ

/-- The actual mixer matrix implements the previously defined one-site
    Pauli-X amplitude rotation, including its sign convention. -/
theorem mixerKernel_action_eq_mixerAt
    (β : ℝ) (v : V) (ψ : State V) :
    kernelAction (mixerKernel β v) ψ = mixerAt β v ψ := by
  classical
  funext σ
  have hf (τ : Configuration V) :
      (σ = flipAt v τ) ↔ (τ = flipAt v σ) :=
    eq_flipAt_iff v σ τ
  change
    (∑ τ : Configuration V,
        ((if σ = τ then (Real.cos β : ℂ) else 0) -
          (if σ = flipAt v τ then
            Complex.I * (Real.sin β : ℂ) else 0)) * ψ τ) =
      (Real.cos β : ℂ) * ψ σ -
        (Complex.I * (Real.sin β : ℂ)) * ψ (flipAt v σ)
  simp_rw [sub_mul]
  rw [Finset.sum_sub_distrib]
  have hcond (τ : Configuration V) :
      (if σ = flipAt v τ then
        Complex.I * (Real.sin β : ℂ) else 0) =
      (if τ = flipAt v σ then
        Complex.I * (Real.sin β : ℂ) else 0) := by
    by_cases h : σ = flipAt v τ
    · simp [h, (hf τ).mp h]
    · simp [h, (hf τ).not.mp h]
  simp_rw [hcond]
  simp [ite_mul, Finset.sum_ite_eq']

/-- Explicit polynomial obtained by expanding
    (cos(beta) I + i sin(beta) X_v) K (cos(beta) I - i sin(beta) X_v).
    Compatibility with actual kernelComposition remains to be checked. -/
noncomputable def mixerHeisenbergPolynomial
    (β : ℝ) (v : V) (K : Kernel V) : Kernel V :=
  fun σ τ =>
    ((Real.cos β ^ 2 : ℝ) : ℂ) * K σ τ +
      ((Real.sin β ^ 2 : ℝ) : ℂ) *
        K (flipAt v σ) (flipAt v τ) +
      (Complex.I * ((Real.cos β * Real.sin β : ℝ) : ℂ)) *
        (K (flipAt v σ) τ - K σ (flipAt v τ))

/-- A tensor-local kernel commutes with moving the flip from its row to
    its column when the mixer site lies outside the declared support. -/
theorem flip_row_eq_flip_column_of_outside
    (S : Finset V) (K : Kernel V) (hK : IsLocalKernel S K)
    (v : V) (hv : v ∉ S) (σ τ : Configuration V) :
    K (flipAt v σ) τ = K σ (flipAt v τ) := by
  have h := hK.flip_pair σ (flipAt v τ) v hv
  simpa only [flipAt_involutive] using h

/-- An outside-site mixer fixes the explicit Heisenberg polynomial exactly,
    including genuinely non-diagonal local kernels. -/
theorem mixerHeisenbergPolynomial_eq_of_outside
    (β : ℝ) (v : V) (S : Finset V)
    (K : Kernel V) (hK : IsLocalKernel S K)
    (hv : v ∉ S) :
    mixerHeisenbergPolynomial β v K = K := by
  funext σ τ
  have hdouble :
      K (flipAt v σ) (flipAt v τ) = K σ τ :=
    hK.flip_pair σ τ v hv
  have hcross :
      K (flipAt v σ) τ = K σ (flipAt v τ) :=
    flip_row_eq_flip_column_of_outside S K hK v hv σ τ
  unfold mixerHeisenbergPolynomial
  rw [hdouble, hcross]
  calc
    ((Real.cos β ^ 2 : ℝ) : ℂ) * K σ τ +
        ((Real.sin β ^ 2 : ℝ) : ℂ) * K σ τ +
        (Complex.I * ((Real.cos β * Real.sin β : ℝ) : ℂ)) *
          (K σ (flipAt v τ) - K σ (flipAt v τ)) =
      ((Real.cos β ^ 2 + Real.sin β ^ 2 : ℝ) : ℂ) * K σ τ := by
        push_cast
        ring
    _ = K σ τ := by
      rw [Real.cos_sq_add_sin_sq]
      simp

/-- The four-term one-site mixer Heisenberg polynomial never increases
    the tensor support of a non-diagonal S-local kernel. -/
theorem mixerHeisenbergPolynomial_local
    (β : ℝ) (v : V) (S : Finset V)
    (K : Kernel V) (hK : IsLocalKernel S K) :
    IsLocalKernel S (mixerHeisenbergPolynomial β v K) := by
  by_cases hv : v ∈ S
  · refine ⟨?_, ?_⟩
    · intro σ τ w hw hdiff
      have hwv : w ≠ v := by
        intro heq
        subst w
        exact hw hv
      have hσ : (flipAt v σ) w = σ w :=
        flipAt_apply_of_ne v w σ hwv
      have hτ : (flipAt v τ) w = τ w :=
        flipAt_apply_of_ne v w τ hwv
      have h00 : K σ τ = 0 :=
        hK.zero_of_outside σ τ w hw hdiff
      have h11 : K (flipAt v σ) (flipAt v τ) = 0 :=
        hK.zero_of_outside (flipAt v σ) (flipAt v τ) w hw
          (by simpa [hσ, hτ] using hdiff)
      have h10 : K (flipAt v σ) τ = 0 :=
        hK.zero_of_outside (flipAt v σ) τ w hw
          (by simpa [hσ] using hdiff)
      have h01 : K σ (flipAt v τ) = 0 :=
        hK.zero_of_outside σ (flipAt v τ) w hw
          (by simpa [hτ] using hdiff)
      simp [mixerHeisenbergPolynomial, h00, h11, h10, h01]
    · intro σ τ w hw
      have hcommσ := flipAt_commute v w σ
      have hcommτ := flipAt_commute v w τ
      have h00 := hK.flip_pair σ τ w hw
      have h11 :=
        hK.flip_pair (flipAt v σ) (flipAt v τ) w hw
      have h10 := hK.flip_pair (flipAt v σ) τ w hw
      have h01 := hK.flip_pair σ (flipAt v τ) w hw
      unfold mixerHeisenbergPolynomial
      simp only [hcommσ, hcommτ, h00, h11, h10, h01]
  · rw [mixerHeisenbergPolynomial_eq_of_outside β v S K hK hv]
    exact hK

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOAMixerKernelSupport
