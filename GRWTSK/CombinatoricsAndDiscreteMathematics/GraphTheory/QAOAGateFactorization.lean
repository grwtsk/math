/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and licenses. -/

import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOAFiniteLocality

set_option autoImplicit false

/-!
# Finite QAOA phase factorization and normalization

This finite-dimensional module retains exactly the Boolean configuration,
complex amplitude, and once-per-undirected-edge carriers of the two
predecessor modules. No new graph conversion is assumed.

The total MaxCut cost phase factors into one diagonal phase per represented
edge, without a hidden global phase or double-counting. The cost gate
preserves each Born weight. A one-site mixer preserves the sum of two Born
weights paired by a coordinate flip. Flip reindexing then proves total
Born mass is preserved by site mixers, fixed ordered sweeps, and finite
cost/mixer QAOA words. Any normalized input therefore has a finite
expected MaxCut cost between zero and the classical maximum cut.

This is source-level mathematics only until compilation, fresh kernel
checking, and transitive axiom auditing actually run. It does not prove
site-order independence, the mixer exponential-of-sum identity, full
Heisenberg support closure, graph girth transfer, or SK/Parisi limits.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOAGateFactorization

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinCutEnergy
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QuantumMaxCut
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOAFiniteLocality

variable {V : Type*} [Fintype V] [DecidableEq V]

/-- The real classical cost cast to complex is the edge-eigenvalue sum. -/
theorem cutSize_complex_eq_sum_edgeCostSymbol
    (G : SimpleEdgePresentation V) (σ : Configuration V) :
    (cutSize G σ : ℂ) = ∑ e ∈ G.edges, edgeCostSymbol e σ := by
  rw [cutSize_eq_pauliZ_sum]
  rw [Complex.ofReal_sum]
  rfl

/-- The total cost phase is exactly the product of the edge phases,
each represented undirected edge occurring precisely once. -/
theorem costLayer_apply_eq_edgePhase_prod
    (G : SimpleEdgePresentation V) (γ : ℝ)
    (ψ : State V) (σ : Configuration V) :
    costLayer G γ ψ σ =
      (∏ e ∈ G.edges, edgePhase γ e σ) * ψ σ := by
  have hsum :
      -Complex.I * (γ : ℂ) * (cutSize G σ : ℂ) =
        ∑ e ∈ G.edges,
          -Complex.I * (γ : ℂ) * edgeCostSymbol e σ := by
    rw [cutSize_complex_eq_sum_edgeCostSymbol]
    rw [← Finset.mul_sum]
  change
    Complex.exp (-Complex.I * (γ : ℂ) * (cutSize G σ : ℂ)) * ψ σ =
      (∏ e ∈ G.edges, edgePhase γ e σ) * ψ σ
  rw [hsum, Complex.exp_sum]
  rfl

/-- One total edge-phase product acting on basis amplitudes. -/
noncomputable def edgeProductLayer
    (G : SimpleEdgePresentation V) (γ : ℝ) (ψ : State V) : State V :=
  fun σ => (∏ e ∈ G.edges, edgePhase γ e σ) * ψ σ

/-- The total cost action equals the product-of-edges action. -/
theorem costLayer_eq_edgeProductLayer
    (G : SimpleEdgePresentation V) (γ : ℝ) (ψ : State V) :
    costLayer G γ ψ = edgeProductLayer G γ ψ := by
  funext σ
  exact costLayer_apply_eq_edgePhase_prod G γ ψ σ

/-- The pure imaginary real-cost exponential has unit complex norm-square. -/
private theorem costPhase_normSq_one (t : ℝ) :
    Complex.normSq (Complex.exp (-Complex.I * (t : ℂ))) = 1 := by
  have harg :
      -Complex.I * (t : ℂ) = ((-t : ℝ) : ℂ) * Complex.I := by
    push_cast
    ring
  rw [harg, Complex.normSq_eq_norm_sq, Complex.norm_exp_ofReal_mul_I]
  norm_num

/-- The total cost gate preserves each individual Born weight. -/
theorem costLayer_bornWeight
    (G : SimpleEdgePresentation V) (γ : ℝ)
    (ψ : State V) (σ : Configuration V) :
    bornWeight (costLayer G γ ψ) σ = bornWeight ψ σ := by
  change
    Complex.normSq
      (Complex.exp (-Complex.I * (γ : ℂ) * (cutSize G σ : ℂ)) * ψ σ) =
      Complex.normSq (ψ σ)
  rw [Complex.normSq_mul]
  have harg :
      -Complex.I * (γ : ℂ) * (cutSize G σ : ℂ) =
        -Complex.I * ((γ * cutSize G σ : ℝ) : ℂ) := by
    push_cast
    ring
  rw [harg, costPhase_normSq_one]
  ring

/-- The finite cost gate preserves normalization. -/
theorem costLayer_normalized
    (G : SimpleEdgePresentation V) (γ : ℝ)
    (ψ : State V) (hψ : IsNormalized ψ) :
    IsNormalized (costLayer G γ ψ) := by
  unfold IsNormalized at *
  simp_rw [costLayer_bornWeight]
  exact hψ

/-- A pair of single-site mixer outputs has precisely the original
combined norm-square; this follows from cos² + sin² = 1. -/
private theorem mixer_pair_normSq (β : ℝ) (z w : ℂ) :
    Complex.normSq
        ((Real.cos β : ℂ) * z -
          (Complex.I * (Real.sin β : ℂ)) * w) +
      Complex.normSq
        ((Real.cos β : ℂ) * w -
          (Complex.I * (Real.sin β : ℂ)) * z) =
      Complex.normSq z + Complex.normSq w := by
  calc
    _ = (Real.cos β ^ 2 + Real.sin β ^ 2) *
        (Complex.normSq z + Complex.normSq w) := by
      simp [Complex.normSq_apply, Complex.sub_re, Complex.sub_im,
        Complex.mul_re, Complex.mul_im]
      ring
    _ = Complex.normSq z + Complex.normSq w := by
      rw [Real.cos_sq_add_sin_sq]
      ring

/-- A site mixer preserves the combined Born weight of a flip pair. -/
theorem mixerAt_bornWeight_pair
    (β : ℝ) (v : V) (ψ : State V) (σ : Configuration V) :
    bornWeight (mixerAt β v ψ) σ +
      bornWeight (mixerAt β v ψ) (flipAt v σ) =
    bornWeight ψ σ + bornWeight ψ (flipAt v σ) := by
  simpa [bornWeight, mixerAt, flipAt_involutive] using
    (mixer_pair_normSq β (ψ σ) (ψ (flipAt v σ)))

/-- Flipping a spin coordinate twice returns the starting assignment. -/
def flipEquiv (v : V) : Configuration V ≃ Configuration V where
  toFun := flipAt v
  invFun := flipAt v
  left_inv := flipAt_involutive v
  right_inv := flipAt_involutive v

/-- Invariance of a finite sum under flip reindexing. -/
theorem sum_flipAt (v : V) (f : Configuration V → ℝ) :
    (∑ σ : Configuration V, f (flipAt v σ)) =
      ∑ σ : Configuration V, f σ := by
  simpa [flipEquiv] using (Equiv.sum_comp (flipEquiv v) f)

/-- No initial normalization is necessary for total mixer mass preservation. -/
theorem mixerAt_bornWeight_sum
    (β : ℝ) (v : V) (ψ : State V) :
    (∑ σ : Configuration V, bornWeight (mixerAt β v ψ) σ) =
      ∑ σ : Configuration V, bornWeight ψ σ := by
  have hpair :
      (∑ σ : Configuration V,
        (bornWeight (mixerAt β v ψ) σ +
          bornWeight (mixerAt β v ψ) (flipAt v σ))) =
      ∑ σ : Configuration V,
        (bornWeight ψ σ + bornWeight ψ (flipAt v σ)) := by
    apply Finset.sum_congr rfl
    intro σ hσ
    exact mixerAt_bornWeight_pair β v ψ σ
  simp only [Finset.sum_add_distrib] at hpair
  rw [sum_flipAt v (bornWeight (mixerAt β v ψ)),
      sum_flipAt v (bornWeight ψ)] at hpair
  linarith

/-- A single-site mixer preserves unit Born mass. -/
theorem mixerAt_normalized
    (β : ℝ) (v : V) (ψ : State V)
    (hψ : IsNormalized ψ) :
    IsNormalized (mixerAt β v ψ) := by
  unfold IsNormalized at *
  rw [mixerAt_bornWeight_sum]
  exact hψ

/-- Any finite list of mixers preserves normalization in its stated order. -/
theorem mixerList_normalized
    (β : ℝ) (vs : List V) (ψ : State V)
    (hψ : IsNormalized ψ) :
    IsNormalized (mixerList β vs ψ) := by
  induction vs with
  | nil =>
      simpa [mixerList] using hψ
  | cons v vs ih =>
      change IsNormalized (mixerAt β v (mixerList β vs ψ))
      exact mixerAt_normalized β v (mixerList β vs ψ) ih

/-- The existing full-site mixer sweep is norm preserving. -/
theorem mixerLayer_normalized
    (β : ℝ) (ψ : State V) (hψ : IsNormalized ψ) :
    IsNormalized (mixerLayer β ψ) := by
  exact mixerList_normalized β Finset.univ.toList ψ hψ

/-- Every cost-then-mixer QAOA round preserves normalization. -/
theorem qaoaRound_normalized
    (G : SimpleEdgePresentation V) (γ β : ℝ)
    (ψ : State V) (hψ : IsNormalized ψ) :
    IsNormalized (qaoaRound G γ β ψ) := by
  exact mixerLayer_normalized β (costLayer G γ ψ)
    (costLayer_normalized G γ ψ hψ)

/-- An arbitrary finite word of the defined QAOA rounds preserves unit mass. -/
theorem qaoaCircuit_normalized
    (G : SimpleEdgePresentation V)
    (angles : List (ℝ × ℝ))
    (ψ : State V) (hψ : IsNormalized ψ) :
    IsNormalized (qaoaCircuit G angles ψ) := by
  induction angles generalizing ψ with
  | nil =>
      simpa [qaoaCircuit] using hψ
  | cons pair rest ih =>
      change IsNormalized
        ((pair :: rest).foldl
          (fun current params =>
            qaoaRound G params.1 params.2 current) ψ)
      rw [List.foldl_cons]
      exact ih (qaoaRound G pair.1 pair.2 ψ)
        (qaoaRound_normalized G pair.1 pair.2 ψ hψ)

/-- Every finite normalized QAOA circuit has nonnegative expected MaxCut
cost bounded by the classical optimum. No optimality limit follows. -/
theorem qaoaCircuit_expected_cost_bounds
    (G : SimpleEdgePresentation V)
    (angles : List (ℝ × ℝ))
    (ψ : State V) (hψ : IsNormalized ψ) :
    0 ≤ hamiltonianExpectation G (qaoaCircuit G angles ψ) ∧
      hamiltonianExpectation G (qaoaCircuit G angles ψ) ≤ maxCut G := by
  exact ⟨hamiltonianExpectation_nonneg G (qaoaCircuit G angles ψ),
    hamiltonianExpectation_le_maxCut G (qaoaCircuit G angles ψ)
      (qaoaCircuit_normalized G angles ψ hψ)⟩

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOAGateFactorization
