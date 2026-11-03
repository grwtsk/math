/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.ProbabilityTheoryAndStochasticProcesses.FiniteNoiseScatteringComparator

/-!
# Noise classes and finite amplitude-scattering adapters

Classes are predicates on actual kernels/laws, not an exclusive enumeration:
reset, deterministic, symmetric, uniform-preserving, product-independent,
and lossy. Finite mixtures retain their supplied JOINT law; no independence
of microscopic configurations is inferred. A loss symbol completes a
sub-Markov kernel before any probability comparison is made.

The scattering adapter uses explicit complex amplitude power re^2+im^2,
with a supplied row-energy bound. This models incoherent input populations
in a specified incoming/outgoing basis. The exact two-path interference
identity prevents applying the population kernel to coherent superpositions
without an additional decoherence/source theorem. This is not a universal
Kraus/POVM trace-distance formalization or a continuum optical model.

Primary proofs: finite sums and row normalization; loss completion is exact.
Independent hostile controls in FiniteNoiseScatteringControls show correlated
fair marginals, source-information erasure, and postselection amplification.
The mathematics is classical; novelty is not claimed, and native proof
acceptance and independent human review remain NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.ProbabilityAndMathematicalStatistics.FiniteNoiseScattering

universe u v w
variable {A : Type u} {B : Type v} {O : Type w}
variable [Fintype A] [Fintype B] [Fintype O]

/-- Uniformity is relative to this specified finite alphabet. -/
def uniform [Nonempty A] (_ : A) : ℝ := 1 / (Fintype.card A : ℝ)

theorem uniform_isLaw [Nonempty A] : IsLaw (uniform (A := A)) := by
  have hc : (Fintype.card A : ℝ) ≠ 0 := by exact_mod_cast Fintype.card_ne_zero
  constructor
  · intro a
    unfold uniform
    positivity
  · simp [uniform, hc]

/-- All rows equal a specified output law: the source is completely erased. -/
def reset (q : B → ℝ) (hq : IsLaw q) : Kernel A B where
  weight _ b := q b
  nonnegative _ b := hq.1 b
  row_sum _ := hq.2

def ResetsTo (K : Kernel A B) (q : B → ℝ) : Prop := ∀ a b, K.weight a b = q b

def UniformPreserving [Nonempty A] (K : Kernel A A) : Prop :=
  Preserves K (uniform (A := A))

def Uniformizing [Nonempty B] (K : Kernel A B) : Prop :=
  ResetsTo K (uniform (A := B))

theorem push_reset (p : A → ℝ) (hp : IsLaw p) (q : B → ℝ) (hq : IsLaw q) :
    push (reset q hq) p = q := by
  funext b
  simp only [push, reset, ← Finset.sum_mul, hp.2, one_mul]

theorem push_of_resetsTo (K : Kernel A B) (p : A → ℝ) (hp : IsLaw p)
    (q : B → ℝ) (hK : ResetsTo K q) : push K p = q := by
  funext b
  unfold push
  simp_rw [hK]
  rw [← Finset.sum_mul, hp.2, one_mul]

theorem uniformizing_tv_zero [Nonempty B] (K : Kernel A B)
    (p : A → ℝ) (hp : IsLaw p) (hK : Uniformizing K) :
    tv (push K p) (uniform (A := B)) = 0 := by
  rw [push_of_resetsTo K p hp (uniform (A := B)) hK, tv_self]

/-- Reversible and irreversible deterministic observations are both allowed. -/
def deterministic (f : A → B) : Kernel A B := by
  classical
  exact {
    weight := fun a b => if f a = b then 1 else 0
    nonnegative := by intro a b; split_ifs <;> norm_num
    row_sum := by intro a; simp }

def IsDeterministic (K : Kernel A B) : Prop := ∃ f, K = deterministic f

@[simp] theorem push_identity (p : A → ℝ) :
    push (deterministic (fun a : A => a)) p = p := by
  classical
  funext b
  simp [push, deterministic]

/-- Symmetry is sufficient for uniform preservation, not for strict mixing. -/
def SymmetricKernel (K : Kernel A A) : Prop := ∀ a b, K.weight a b = K.weight b a

theorem symmetric_uniform_preserving [Nonempty A] (K : Kernel A A)
    (hK : SymmetricKernel K) : UniformPreserving K := by
  funext b
  change (∑ a, (1 / (Fintype.card A : ℝ)) * K.weight a b) =
    1 / (Fintype.card A : ℝ)
  calc
    _ = ∑ a, (1 / (Fintype.card A : ℝ)) * K.weight b a := by
      apply Finset.sum_congr rfl
      intro a ha
      rw [hK a b]
    _ = _ := by rw [← Finset.mul_sum, K.row_sum, mul_one]

/-- Mixtures average actual kernels using an actual finite probability law.
An outcome may encode a whole correlated medium, not independent events. -/
def mixture (mass : O → ℝ) (hmass : IsLaw mass)
    (family : O → Kernel A B) : Kernel A B where
  weight a b := ∑ o, mass o * (family o).weight a b
  nonnegative a b := Finset.sum_nonneg (fun o _ =>
    mul_nonneg (hmass.1 o) ((family o).nonnegative a b))
  row_sum a := by
    rw [Finset.sum_comm]
    simp_rw [← Finset.mul_sum, Kernel.row_sum, mul_one]
    exact hmass.2

theorem push_mixture (mass : O → ℝ) (hmass : IsLaw mass)
    (family : O → Kernel A B) (p : A → ℝ) (b : B) :
    push (mixture mass hmass family) p b = ∑ o, mass o * push (family o) p b := by
  simp only [push, mixture]
  simp_rw [Finset.mul_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro o ho
  apply Finset.sum_congr rfl
  intro a ha
  ring

/-- Independence is the full product factorization, not fair marginals. -/
def firstMarginal (p : A × B → ℝ) (a : A) : ℝ := ∑ b, p (a, b)
def secondMarginal (p : A × B → ℝ) (b : B) : ℝ := ∑ a, p (a, b)
def IndependentCoordinates (p : A × B → ℝ) : Prop :=
  ∀ a b, p (a, b) = firstMarginal p a * secondMarginal p b

/-- Explicitly balanced bit-flip noise for any probability in [0,1]. -/
def bitFlip (r : ℝ) (hr0 : 0 ≤ r) (hr1 : r ≤ 1) : Kernel Bool Bool where
  weight a b := if a = b then 1 - r else r
  nonnegative a b := by split_ifs <;> linarith
  row_sum a := by cases a <;> simp [Fintype.sum_bool] <;> ring

theorem bitFlip_uniform_preserving (r : ℝ) (hr0 : 0 ≤ r) (hr1 : r ≤ 1) :
    UniformPreserving (bitFlip r hr0 hr1) := by
  apply symmetric_uniform_preserving
  intro a b
  simp [bitFlip, eq_comm]

/-- Probability/intensity may leave the observed output alphabet. -/
structure SubKernel (A : Type u) (B : Type v) [Fintype B] where
  weight : A → B → ℝ
  nonnegative : ∀ a b, 0 ≤ weight a b
  row_le_one : ∀ a, (∑ b, weight a b) ≤ 1

/-- `none` is loss, `some b` is the original observed outcome. -/
def lossCompleted (S : SubKernel A B) : Kernel A (Option B) where
  weight a := fun
    | none => 1 - ∑ b, S.weight a b
    | some b => S.weight a b
  nonnegative a b := by
    cases b with
    | none => exact sub_nonneg.mpr (S.row_le_one a)
    | some b => exact S.nonnegative a b
  row_sum a := by simp [Fintype.sum_option]

/-- The loss contribution cannot be silently dropped or renormalized away. -/
theorem completed_tv_exact (S : SubKernel A B) (p q : A → ℝ) :
    tv (push (lossCompleted S) p) (push (lossCompleted S) q) =
      (|push (lossCompleted S) p none - push (lossCompleted S) q none| +
        ∑ b, |push (lossCompleted S) p (some b) -
          push (lossCompleted S) q (some b)|) / 2 := by
  simp only [tv, Fintype.sum_option]

theorem loss_scattering_contracts (S : SubKernel A B) (p q : A → ℝ) :
    tv (push (lossCompleted S) p) (push (lossCompleted S) q) ≤ tv p q :=
  tv_push_le (lossCompleted S) p q

/-- Squared complex amplitude, kept explicit to expose interference. -/
def amplitudePower (z : ℂ) : ℝ := z.re ^ 2 + z.im ^ 2

theorem amplitudePower_nonneg (z : ℂ) : 0 ≤ amplitudePower z := by
  exact add_nonneg (sq_nonneg _) (sq_nonneg _)

/-- Input/output basis and the energy bound are part of the adapter. -/
def amplitudeSubKernel (amp : A → B → ℂ)
    (henergy : ∀ a, (∑ b, amplitudePower (amp a b)) ≤ 1) : SubKernel A B where
  weight a b := amplitudePower (amp a b)
  nonnegative a b := amplitudePower_nonneg (amp a b)
  row_le_one := henergy

/-- Exact measured population law for INCOHERENT incoming populations. -/
theorem amplitude_population_observation (amp : A → B → ℂ)
    (henergy : ∀ a, (∑ b, amplitudePower (amp a b)) ≤ 1)
    (p : A → ℝ) (b : B) :
    push (lossCompleted (amplitudeSubKernel amp henergy)) p (some b) =
      ∑ a, p a * amplitudePower (amp a b) := rfl

/-- Explicit conjugation, to keep this finite observation independent of
any choice of a Hilbert-space completion or trace-class API. -/
def conjugate (z : ℂ) : ℂ := ⟨z.re, -z.im⟩

def diagonalDensity (p : A → ℝ) : A → A → ℂ := by
  classical
  exact fun a c => if a = c then (p a : ℂ) else 0

/-- Real diagonal of A rho A*: ALL ordered input pairs are retained.
An arbitrary rho is not asserted to be positive or normalized here. -/
def densityObservation (amp : A → B → ℂ) (rho : A → A → ℂ) (b : B) : ℝ :=
  ∑ a, ∑ c, (amp a b * rho a c * conjugate (amp c b)).re

theorem scalar_density_power (z : ℂ) (p : ℝ) :
    (z * (p : ℂ) * conjugate z).re = p * amplitudePower z := by
  simp only [Complex.mul_re, Complex.mul_im, Complex.ofReal_re, Complex.ofReal_im]
  dsimp [conjugate, amplitudePower]
  ring

/-- The exact operator-observation bridge for DIAGONAL input density.
The row-energy hypothesis does not imply operator contractivity on
arbitrary coherent inputs; that stronger source premise is not supplied. -/
theorem diagonal_density_scattering_bridge (amp : A → B → ℂ)
    (henergy : ∀ a, (∑ b, amplitudePower (amp a b)) ≤ 1)
    (p : A → ℝ) (b : B) :
    densityObservation amp (diagonalDensity p) b =
      push (lossCompleted (amplitudeSubKernel amp henergy)) p (some b) := by
  classical
  have ht (a c : A) :
      (amp a b * diagonalDensity p a c * conjugate (amp c b)).re =
        if a = c then p a * amplitudePower (amp a b) else 0 := by
    by_cases h : a = c
    · subst c
      simp only [diagonalDensity, if_true]
      exact scalar_density_power (amp a b) (p a)
    · simp [diagonalDensity, h]
  unfold densityObservation
  simp_rw [ht]
  simp only [Finset.sum_ite_eq', Finset.mem_univ, if_true,
    push, lossCompleted, amplitudeSubKernel]

/-- The coherent correction is signed and is not automatically noise. -/
theorem coherent_two_path_identity (a b : ℂ) :
    amplitudePower (a + b) = amplitudePower a + amplitudePower b +
      2 * (a.re * b.re + a.im * b.im) := by
  simp only [amplitudePower, Complex.add_re, Complex.add_im]
  ring

/-- Exact cancellation refutes replacing coherent amplitudes by intensities. -/
theorem opposite_amplitudes_control :
    amplitudePower ((1 : ℂ) + (-1)) = 0 ∧
      amplitudePower (1 : ℂ) + amplitudePower (-1 : ℂ) = 2 := by
  norm_num [amplitudePower]

/-- A general detector is another supplied stochastic map on the FULL
completed output, so loss handling and detector noise remain explicit. -/
theorem scattering_detector_reference (S : SubKernel A B)
    (detector : Kernel (Option B) O) (p u : A → ℝ)
    (v : Option B → ℝ) (z : O → ℝ) :
    tv (push (compose (lossCompleted S) detector) p) z ≤
      tv p u + tv (push (lossCompleted S) u) v + tv (push detector v) z :=
  tv_two_stage_reference (lossCompleted S) detector p u v z

end GRWTSK.ProbabilityAndMathematicalStatistics.FiniteNoiseScattering
