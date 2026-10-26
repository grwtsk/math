/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and licenses. -/

import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOAGateFactorization

set_option autoImplicit false

/-!
# Non-diagonal finite operator support and single-edge cost conjugation

An operator is represented by its complex matrix kernel on the finite Boolean
computational basis. The support predicate records both:
* matrix entries vanish if the source and target spin configurations differ
  at any vertex outside the declared support; and
* simultaneously flipping an outside spin in both configurations leaves
  each kernel entry unchanged.

These are the finite tensor-factor locality conditions, rather than merely
a commutation condition for diagonal symbols. We prove their monotonicity,
closure under addition and operator-kernel multiplication, and a precise
one-edge Heisenberg cost-phase rule:

* conjugation by the edge phase enlarges support by at most its two endpoints;
* if neither endpoint belongs to the original support, conjugation fixes the
  entire, potentially NON-DIAGONAL, operator.

The latter uses the actual unit-modulus complex edge phase. No unitarity
of a full circuit, mixer conjugation, light-cone iteration, girth transfer,
or SK/Parisi limit is inferred. Lean elaboration, kernel checking, and
transitive axiom auditing remain pending.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOAOperatorSupport

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinCutEnergy
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QuantumMaxCut
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOAFiniteLocality
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOAGateFactorization

variable {V : Type*} [Fintype V] [DecidableEq V]

/-- Finite complex matrix entries of a computational-basis operator. -/
abbrev Kernel (V : Type*) := Configuration V → Configuration V → ℂ

/-- The finite tensor-support conditions for an operator kernel:
zero transition outside S, and invariance under a simultaneous outside flip. -/
structure IsLocalKernel (S : Finset V) (K : Kernel V) : Prop where
  zero_of_outside :
    ∀ σ τ (v : V), v ∉ S → σ v ≠ τ v → K σ τ = 0
  flip_pair :
    ∀ σ τ (v : V), v ∉ S →
      K (flipAt v σ) (flipAt v τ) = K σ τ

/-- A kernel local to S is also local to any larger support T. -/
theorem local_mono (S T : Finset V) (K : Kernel V)
    (hST : S ⊆ T) (hK : IsLocalKernel S K) :
    IsLocalKernel T K := by
  refine ⟨?_, ?_⟩
  · intro σ τ v hv hdiff
    apply hK.zero_of_outside σ τ v
    · intro hvS
      exact hv (hST hvS)
    · exact hdiff
  · intro σ τ v hv
    apply hK.flip_pair σ τ v
    intro hvS
    exact hv (hST hvS)

/-- Sums of kernels with the same support retain that support. -/
theorem local_add (S : Finset V) (K L : Kernel V)
    (hK : IsLocalKernel S K) (hL : IsLocalKernel S L) :
    IsLocalKernel S (fun σ τ => K σ τ + L σ τ) := by
  refine ⟨?_, ?_⟩
  · intro σ τ v hv hdiff
    rw [hK.zero_of_outside σ τ v hv hdiff,
      hL.zero_of_outside σ τ v hv hdiff]
    ring
  · intro σ τ v hv
    rw [hK.flip_pair σ τ v hv, hL.flip_pair σ τ v hv]

/-- Matrix-kernel composition, corresponding to finite operator composition. -/
noncomputable def kernelComposition (K L : Kernel V) : Kernel V :=
  fun σ τ => ∑ ρ : Configuration V, K σ ρ * L ρ τ

/-- Complex-valued finite sums are unchanged by a one-vertex spin flip. -/
private theorem sum_flipAt_complex (v : V) (f : Configuration V → ℂ) :
    (∑ σ : Configuration V, f (flipAt v σ)) =
      ∑ σ : Configuration V, f σ := by
  simpa [flipEquiv] using (Equiv.sum_comp (flipEquiv v) f)

/-- Composition of arbitrary non-diagonal local kernels is supported on
the union of their supports. -/
theorem kernelComposition_local
    (S T : Finset V) (K L : Kernel V)
    (hK : IsLocalKernel S K) (hL : IsLocalKernel T L) :
    IsLocalKernel (S ∪ T) (kernelComposition K L) := by
  classical
  refine ⟨?_, ?_⟩
  · intro σ τ v hv hdiff
    have hvS : v ∉ S := by
      intro h
      exact hv (Finset.mem_union.mpr (Or.inl h))
    have hvT : v ∉ T := by
      intro h
      exact hv (Finset.mem_union.mpr (Or.inr h))
    unfold kernelComposition
    apply Finset.sum_eq_zero
    intro ρ hρ
    by_cases hσρ : σ v = ρ v
    · have hρτ : ρ v ≠ τ v := by
        intro h
        exact hdiff (hσρ.trans h)
      simp [hL.zero_of_outside ρ τ v hvT hρτ]
    · simp [hK.zero_of_outside σ ρ v hvS hσρ]
  · intro σ τ v hv
    have hvS : v ∉ S := by
      intro h
      exact hv (Finset.mem_union.mpr (Or.inl h))
    have hvT : v ∉ T := by
      intro h
      exact hv (Finset.mem_union.mpr (Or.inr h))
    change
      (∑ ρ : Configuration V,
        K (flipAt v σ) ρ * L ρ (flipAt v τ)) =
      ∑ ρ : Configuration V, K σ ρ * L ρ τ
    calc
      _ = ∑ ρ : Configuration V,
          K (flipAt v σ) (flipAt v ρ) *
            L (flipAt v ρ) (flipAt v τ) := by
              symm
              exact sum_flipAt_complex v
                (fun ρ => K (flipAt v σ) ρ * L ρ (flipAt v τ))
      _ = ∑ ρ : Configuration V, K σ ρ * L ρ τ := by
        apply Finset.sum_congr rfl
        intro ρ hρ
        rw [hK.flip_pair σ ρ v hvS, hL.flip_pair ρ τ v hvT]

/-- A diagonal kernel with eigenvalue f at each configuration. -/
def diagonalKernel (f : Configuration V → ℂ) : Kernel V :=
  fun σ τ => if σ = τ then f σ else 0

/-- An S-local diagonal symbol determines an S-local *operator kernel*. -/
theorem diagonalKernel_local
    (S : Finset V) (f : Configuration V → ℂ)
    (hf : IsLocalDiagonal S f) :
    IsLocalKernel S (diagonalKernel f) := by
  refine ⟨?_, ?_⟩
  · intro σ τ v hv hdiff
    have hne : σ ≠ τ := by
      intro heq
      exact hdiff (congrArg (fun x : Configuration V => x v) heq)
    simp [diagonalKernel, hne]
  · intro σ τ v hv
    by_cases heq : σ = τ
    · subst τ
      simp [diagonalKernel,
        localDiagonal_flipInvariant S f hf v hv σ]
    · have hne : flipAt v σ ≠ flipAt v τ := by
        intro heqflip
        apply heq
        have hinv := congrArg (flipAt v) heqflip
        simpa only [flipAt_involutive] using hinv
      simp [diagonalKernel, heq, hne]

/-- The actual matrix-kernel Heisenberg conjugation by a diagonal edge
cost phase U_e: K ↦ U_e† K U_e. -/
noncomputable def edgePhaseConjugate (γ : ℝ) (e : V × V)
    (K : Kernel V) : Kernel V :=
  fun σ τ =>
    Complex.conj (edgePhase γ e σ) * K σ τ * edgePhase γ e τ

/-- A non-diagonal kernel supported on S becomes supported on at most
S union the two endpoints after conjugation by one edge phase. -/
theorem edgePhaseConjugate_local
    (γ : ℝ) (e : V × V) (S : Finset V)
    (K : Kernel V) (hK : IsLocalKernel S K) :
    IsLocalKernel (S ∪ ({e.1, e.2} : Finset V))
      (edgePhaseConjugate γ e K) := by
  refine ⟨?_, ?_⟩
  · intro σ τ v hv hdiff
    have hvS : v ∉ S := by
      intro h
      exact hv (Finset.mem_union.mpr (Or.inl h))
    simp [edgePhaseConjugate,
      hK.zero_of_outside σ τ v hvS hdiff]
  · intro σ τ v hv
    have hvS : v ∉ S := by
      intro h
      exact hv (Finset.mem_union.mpr (Or.inl h))
    have hvE : v ∉ ({e.1, e.2} : Finset V) := by
      intro h
      exact hv (Finset.mem_union.mpr (Or.inr h))
    have hσ : edgePhase γ e (flipAt v σ) = edgePhase γ e σ :=
      localDiagonal_flipInvariant ({e.1, e.2} : Finset V)
        (edgePhase γ e) (edgePhase_local γ e) v hvE σ
    have hτ : edgePhase γ e (flipAt v τ) = edgePhase γ e τ :=
      localDiagonal_flipInvariant ({e.1, e.2} : Finset V)
        (edgePhase γ e) (edgePhase_local γ e) v hvE τ
    change
      Complex.conj (edgePhase γ e (flipAt v σ)) *
          K (flipAt v σ) (flipAt v τ) *
          edgePhase γ e (flipAt v τ) =
        Complex.conj (edgePhase γ e σ) * K σ τ *
          edgePhase γ e τ
    rw [hσ, hτ, hK.flip_pair σ τ v hvS]

/-- The actual complex edge phase has unit norm-square for every
real angle and every spin configuration. -/
private theorem edgePhase_normSq_one
    (γ : ℝ) (e : V × V) (σ : Configuration V) :
    Complex.normSq (edgePhase γ e σ) = 1 := by
  have harg :
      -Complex.I * (γ : ℂ) * edgeCostSymbol e σ =
        Complex.I *
          ((-(γ * pauliZEdgeCost (σ e.1) (σ e.2)) : ℝ) : ℂ) := by
    unfold edgeCostSymbol
    push_cast
    ring
  unfold edgePhase
  rw [harg, Complex.normSq_eq_norm_sq,
    Complex.norm_exp_I_mul_ofReal]
  norm_num

/-- If the edge has no endpoint in S, its diagonal cost gate has no
Heisenberg effect on an arbitrary S-local, possibly non-diagonal kernel. -/
theorem edgePhaseConjugate_eq_of_disjoint
    (γ : ℝ) (e : V × V) (S : Finset V)
    (K : Kernel V) (hK : IsLocalKernel S K)
    (hu : e.1 ∉ S) (hv : e.2 ∉ S) :
    edgePhaseConjugate γ e K = K := by
  funext σ τ
  by_cases hz : K σ τ = 0
  · simp [edgePhaseConjugate, hz]
  · have hσu : σ e.1 = τ e.1 := by
      by_contra hne
      exact hz (hK.zero_of_outside σ τ e.1 hu hne)
    have hσv : σ e.2 = τ e.2 := by
      by_contra hne
      exact hz (hK.zero_of_outside σ τ e.2 hv hne)
    have hphase : edgePhase γ e τ = edgePhase γ e σ := by
      simp [edgePhase, edgeCostSymbol, hσu, hσv]
    have hunit :
        Complex.conj (edgePhase γ e σ) * edgePhase γ e σ = 1 := by
      calc
        _ = (Complex.normSq (edgePhase γ e σ) : ℂ) :=
          (Complex.normSq_eq_conj_mul_self
            (z := edgePhase γ e σ)).symm
        _ = 1 := by
          rw [edgePhase_normSq_one]
          norm_num
    change Complex.conj (edgePhase γ e σ) *
        K σ τ * edgePhase γ e τ = K σ τ
    rw [hphase]
    calc
      Complex.conj (edgePhase γ e σ) *
          K σ τ * edgePhase γ e σ =
        (Complex.conj (edgePhase γ e σ) *
          edgePhase γ e σ) * K σ τ := by ring
      _ = K σ τ := by rw [hunit]; ring

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOAOperatorSupport
