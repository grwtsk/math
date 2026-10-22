/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.FiniteGramWitnessWindow

set_option autoImplicit false

open scoped BigOperators ComplexConjugate

/-!
# Adjoint observation transport and signed finite Gram windows

The same terminal observation is pulled back by A*, not replaced by unrelated
stage tests. The exact identity z*(A R A*)z = (A*z)*R(A*z) produces a finite
signed telescope. It requires neither a whole-matrix contraction bound nor a
stationary residual. Every complete source/model mismatch is still present;
a channel may cost zero only through a proved zero observation or cancellation.

The endpoint source tail and the entire initial residual observation remain
charged. One-sided LOWER bounds are sufficient: favorable signed terms need not
be replaced by their absolute values. The existing modulus estimate remains an
optional supplier when signed information is unavailable.

The backward equations are exact certificate premises. Approximate adjoints,
changing the terminal witness, dropping source terms, or assuming a favorable
sign do not satisfy them. Pullback vectors may grow and their costs must be
bounded where the local modulus adapter is used. No arithmetic source, usable
Weil window, global negative witness, or choice-free dependency audit is supplied.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. No execution or merge authority.
-/

namespace GRWTSK.Analysis.ErrorBounds.AdjointGramWitnessWindow

open GRWTSK.Analysis.ErrorBounds.QuadraticGramResidual
open GRWTSK.Analysis.ErrorBounds.HermitianGramRealification
open GRWTSK.Analysis.ErrorBounds.ComplexModulusGramResidual

noncomputable section

variable {ι τ κ : Type*} [ιFinite : Fintype ι] [τFinite : Fintype τ] [κFinite : Fintype κ]

/-- Explicit rectangular conjugate-transpose action on the terminal observation. -/
def adjointTest (A : τ → ι → ℂ) (test : τ → ℂ) (j : ι) : ℂ :=
  ∑ i, conj (A i j) * test i

omit ιFinite in
/-- The conjugation in the adjoint is essential, even for a real-valued readout. -/
theorem conj_adjointTest [Fintype ι] (A : τ → ι → ℂ) (test : τ → ℂ) (j : ι) :
    conj (adjointTest A test j) = ∑ i, A i j * conj (test i) := by
  simp [adjointTest]

/-- Exact observation transport for an arbitrary signed complex matrix. -/
theorem readout_transport_adjoint (A : τ → ι → ℂ) (test : τ → ℂ)
    (H : ι × ι → ℂ) :
    complexReadout test (complexTransport A H) = complexReadout (adjointTest A test) H := by
  unfold complexReadout complexTransport
  simp_rw [Finset.mul_sum, Finset.sum_mul]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro q _
  rw [conj_adjointTest]
  simp only [adjointTest, Fintype.sum_prod_type, Finset.sum_mul, Finset.mul_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
  ring

/-- Linearity in the complete matrix retains all signed contributions. -/
theorem readout_add (test : ι → ℂ) (H J : ι × ι → ℂ) :
    complexReadout test (fun p => H p + J p) =
      complexReadout test H + complexReadout test J := by
  simp only [complexReadout, mul_add, add_mul, Finset.sum_add_distrib]

theorem readout_sub (test : ι → ℂ) (H J : ι × ι → ℂ) :
    complexReadout test (fun p => H p - J p) =
      complexReadout test H - complexReadout test J := by
  simp only [complexReadout, mul_sub, sub_mul, Finset.sum_sub_distrib]

/-- One complete residual step is observed at the adjoint-pulled-back test. -/
theorem readout_residual_step (A : τ → ι → ℂ) (test : τ → ℂ)
    (residual : ι × ι → ℂ) (nextResidual forcing : τ × τ → ℂ)
    (evolution : ∀ p, nextResidual p = complexTransport A residual p + forcing p) :
    complexReadout test nextResidual =
      complexReadout (adjointTest A test) residual + complexReadout test forcing := by
  rw [funext evolution, readout_add, readout_transport_adjoint]

section Window

variable {I K : ℕ → Type*} [∀ n, Fintype (I n)] [∀ n, Fintype (K n)]

/-- Finite telescoping of the SAME observation. The backward equations prohibit
independent stagewise choice of a convenient test. Only j < k is used. -/
theorem adjoint_window_identity
    (gain : ∀ n, I (n + 1) → I n → ℂ)
    (residual : ∀ n, I n × I n → ℂ)
    (forcing : ∀ n, I (n + 1) × I (n + 1) → ℂ)
    (test : ∀ n, I n → ℂ) : ∀ k : ℕ,
    (∀ j, j < k → ∀ p, residual (j + 1) p =
      complexTransport (gain j) (residual j) p + forcing j p) →
    (∀ j, j < k → test j = adjointTest (gain j) (test (j + 1))) →
    complexReadout (test k) (residual k) =
      complexReadout (test 0) (residual 0) +
        ∑ j ∈ Finset.range k, complexReadout (test (j + 1)) (forcing j) := by
  intro k
  induction k with
  | zero =>
      intro _ _
      simp
  | succ k ih =>
      intro evolution backward
      have previous := ih
        (fun j hj => evolution j (Nat.lt_succ_of_lt hj))
        (fun j hj => backward j (Nat.lt_succ_of_lt hj))
      have terminal := readout_residual_step (gain k) (test (k + 1))
        (residual k) (residual (k + 1)) (forcing k)
        (evolution k (Nat.lt_succ_self k))
      rw [← backward k (Nat.lt_succ_self k)] at terminal
      rw [terminal, previous, Finset.sum_range_succ]
      ring

/-- The signed telescope is attached to the actual source-minus-Gram mismatch.
All mixed and newborn terms must already be included in the exact model update.
A window starting at N is obtained by reindexing the supplied families by N+j. -/
theorem gram_adjoint_window_identity
    (gain : ∀ n, I (n + 1) → I n → ℂ)
    (source : ∀ n, I n × I n → ℂ) (feature : ∀ n, K n → I n → ℂ)
    (injection : ∀ n, I (n + 1) × I (n + 1) → ℂ)
    (test : ∀ n, I n → ℂ) (k : ℕ) (actual tail : ℝ)
    (modelUpdate : ∀ j, j < k → ∀ p, complexGram (feature (j + 1)) p =
      complexTransport (gain j) (complexGram (feature j)) p + injection j p)
    (backward : ∀ j, j < k → test j = adjointTest (gain j) (test (j + 1)))
    (sourceReadout : actual = (complexReadout (test k) (source k)).re + tail) :
    actual - (complexReadout (test k) (complexGram (feature k))).re =
      (complexReadout (test 0) (fun p => source 0 p - complexGram (feature 0) p)).re +
        (∑ j ∈ Finset.range k,
          (complexReadout (test (j + 1)) (complexMismatch gain source injection j)).re) + tail := by
  have evolution (j : ℕ) (hj : j < k) :
      ∀ p, source (j + 1) p - complexGram (feature (j + 1)) p =
        complexTransport (gain j) (fun q => source j q - complexGram (feature j) q) p +
          complexMismatch gain source injection j p :=
    complex_residual_evolution (gain j) (source j) (complexGram (feature j))
      (source (j + 1)) (complexGram (feature (j + 1))) (injection j) (modelUpdate j hj)
  have identity := adjoint_window_identity gain
    (fun n p => source n p - complexGram (feature n) p)
    (complexMismatch gain source injection) test k evolution backward
  have realIdentity := congrArg Complex.re identity
  rw [readout_sub, Complex.sub_re, Complex.add_re, Complex.re_sum] at realIdentity
  rw [sourceReadout]
  linarith

end Window

/-- Existing modulus estimates supply safe local LOWER bounds when no better sign
information is available. The weights must bound the actual pulled-back test. -/
theorem readout_real_lower_of_modulus (weight : ι → ℝ) (test : ι → ℂ)
    (H : ι × ι → ℂ) (error : ℝ)
    (weightsNonnegative : ∀ i, 0 ≤ weight i) (testBound : ∀ i, ‖test i‖ ≤ weight i)
    (massBound : modulusMass (pairWeight weight) H ≤ error) :
    -error ≤ (complexReadout test H).re := by
  have bound := (Complex.abs_re_le_norm (complexReadout test H)).trans
    ((readout_modulus_bound weight test H weightsNonnegative testBound).trans massBound)
  exact (abs_le.mp bound).1

/-- A signed complete observation sum gives a lower bound on the fixed source.
Lower bounds may be positive: favorable signs are retained before any absolute estimate. -/
theorem source_lower_bound_of_signed_window
    (test : ι → ℂ) (feature : κ → ι → ℂ)
    (actual initial tail initialLower tailLower : ℝ)
    (forcing forcingLower : ℕ → ℝ) (k : ℕ)
    (identity : actual - (complexReadout test (complexGram feature)).re =
      initial + (∑ j ∈ Finset.range k, forcing j) + tail)
    (initialEstimate : initialLower ≤ initial)
    (forcingEstimate : ∀ j, j < k → forcingLower j ≤ forcing j)
    (tailEstimate : tailLower ≤ tail) :
    initialLower + (∑ j ∈ Finset.range k, forcingLower j) + tailLower ≤ actual := by
  have sumBound : (∑ j ∈ Finset.range k, forcingLower j) ≤
      ∑ j ∈ Finset.range k, forcing j :=
    Finset.sum_le_sum fun j hj => forcingEstimate j (Finset.mem_range.mp hj)
  have positive := complex_gram_readout_nonnegative test feature
  linarith

/-- Finite signed witness exclusion. Its exact identity can be supplied by
`gram_adjoint_window_identity`; no norm contraction or limit theorem is needed. -/
theorem no_fixed_negative_of_signed_window
    (test : ι → ℂ) (feature : κ → ι → ℂ)
    (actual strength initial tail initialLower tailLower : ℝ)
    (forcing forcingLower : ℕ → ℝ) (k : ℕ)
    (identity : actual - (complexReadout test (complexGram feature)).re =
      initial + (∑ j ∈ Finset.range k, forcing j) + tail)
    (initialEstimate : initialLower ≤ initial)
    (forcingEstimate : ∀ j, j < k → forcingLower j ≤ forcing j)
    (tailEstimate : tailLower ≤ tail)
    (negative : actual ≤ -strength)
    (margin : -strength < initialLower + (∑ j ∈ Finset.range k, forcingLower j) + tailLower) :
    False := by
  have lower := source_lower_bound_of_signed_window test feature actual initial tail
    initialLower tailLower forcing forcingLower k identity initialEstimate forcingEstimate tailEstimate
  linarith

/-- A phase-bearing diagonal transition distinguishes A* from an ordinary transpose. -/
def phaseGain (i j : Fin 2) : ℂ :=
  if i = j then (if i = 0 then Complex.I else 1) else 0

/-- Omitting conjugation reverses the sign of this retained imaginary-block readout. -/
theorem adjoint_conjugation_required_fixture :
    (complexReadout (adjointTest phaseGain (fun _ : Fin 2 => (1 : ℂ))) imaginaryBlock).re = -2 ∧
    (complexReadout (fun i : Fin 2 => if i = 0 then Complex.I else 1) imaginaryBlock).re = 2 := by
  norm_num [complexReadout, adjointTest, phaseGain, imaginaryBlock,
    Fintype.sum_prod_type, Fin.sum_univ_two]

/-- An exactly unobserved coordinate is not a certificate of full matrix recovery. -/
def unobservedBlock (p : Fin 2 × Fin 2) : ℂ :=
  if p.1 = 1 ∧ p.2 = 1 then 100 else 0

/-- A particular observation can be zero even with a large complete residual mass.
Using this requires its exact observation identity, not omission from the source ledger. -/
theorem directional_mass_fixture :
    complexReadout (fun i : Fin 2 => if i = 0 then 1 else 0) unobservedBlock = 0 ∧
      modulusMass (pairWeight (fun _ : Fin 2 => (1 : ℝ))) unobservedBlock = 100 := by
  norm_num [complexReadout, modulusMass, pairWeight, unobservedBlock,
    Fintype.sum_prod_type, Fin.sum_univ_two]

/-- Large opposite signed observations may cancel before taking absolute bounds. -/
theorem signed_cancellation_fixture :
    (-100 : ℝ) + 100 + 1 / 8 = 1 / 8 ∧
      |(-100 : ℝ)| + |(100 : ℝ)| + 1 / 8 = 1601 / 8 := by
  norm_num

/-- A convenient zero at an earlier stage does not satisfy the exact backward equation. -/
theorem erased_pullback_rejected_fixture :
    adjointTest (fun (_ : Unit) (_ : Unit) => (2 : ℂ)) (fun _ : Unit => (1 : ℂ)) () = 2 ∧
    adjointTest (fun (_ : Unit) (_ : Unit) => (2 : ℂ)) (fun _ : Unit => (1 : ℂ)) () ≠ 0 := by
  norm_num [adjointTest, map_ofNat]

end

end GRWTSK.Analysis.ErrorBounds.AdjointGramWitnessWindow
