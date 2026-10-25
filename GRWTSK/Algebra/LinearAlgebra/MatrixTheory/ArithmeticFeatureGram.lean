/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.HermitianGramRealification
import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.PositiveKernelHermitianSymmetry
import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt
import Mathlib.NumberTheory.DirichletCharacter.Basic
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Analysis.SpecialFunctions.Pow.Complex
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Order.Interval.Finset.Nat

set_option autoImplicit false

open scoped BigOperators ComplexConjugate ComplexOrder

/-!
# Finite arithmetic features in the existing Hermitian Gram model

The samples are exactly the integers from 2 through N. Each coordinate has its
own complex parameter and Dirichlet character, with an explicitly chosen level.
Complex powers use Mathlib's principal-log convention. The nonnegative weight
is von Mangoldt divided by the real power of the natural-number radical.

The matrix is the existing complexGram of these actual features, and its
positive-kernel witness uses the full complex matrix. The existing exact
two-row realification is retained. The finite-index hypotheses below concern
this finite matrix specialization; PositiveKernel itself is unchanged and
still permits arbitrary index types with finitely supported tests.

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
No strict gap, rank estimate, infinite-cutoff limit, L-function identity,
abc hypothesis, physical Hamiltonian or Yang-Mills comparison is supplied.
-/

namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticFeatureGram

open GRWTSK.Analysis.ErrorBounds.HermitianGramRealification
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.PositiveKernelTheory

noncomputable section

universe u v

/-- Exactly the finite interval 2,...,N; it is empty when N < 2. -/
abbrev Window (N : ℕ) := ↥(Finset.Icc 2 N)

theorem window_lower {N : ℕ} (n : Window N) : 2 ≤ n.val :=
  (Finset.mem_Icc.mp n.property).1

theorem window_upper {N : ℕ} (n : Window N) : n.val ≤ N :=
  (Finset.mem_Icc.mp n.property).2

/-- Squarefree support of a nontrivial prime power is exactly its prime. -/
theorem radical_prime_power {p k : ℕ} (hp : p.Prime) (hk : 0 < k) :
    UniqueFactorizationMonoid.radical (p ^ k) = p := by
  simpa using UniqueFactorizationMonoid.radical_pow_of_prime hp.prime (Nat.ne_of_gt hk)

theorem vonMangoldt_prime_power {p k : ℕ} (hp : p.Prime) (hk : 0 < k) :
    ArithmeticFunction.vonMangoldt (p ^ k) = Real.log p := by
  rw [ArithmeticFunction.vonMangoldt_apply_pow (Nat.ne_of_gt hk),
    ArithmeticFunction.vonMangoldt_apply_prime hp]

/-- The radical is positive even outside the sampling window. -/
def weight (τ : ℝ) (n : ℕ) : ℝ :=
  ArithmeticFunction.vonMangoldt n / (UniqueFactorizationMonoid.radical n : ℝ) ^ τ

/-- Positivity of the radical makes every real-power denominator strictly positive. -/
theorem radical_power_positive (τ : ℝ) (n : ℕ) :
    0 < (UniqueFactorizationMonoid.radical n : ℝ) ^ τ := by
  exact Real.rpow_pos_of_pos (Nat.cast_pos.mpr (Nat.radical_pos n)) τ

/-- This holds for every real exponent, hence in particular for τ ≥ 0. -/
theorem weight_nonnegative (τ : ℝ) (n : ℕ) : 0 ≤ weight τ n := by
  exact div_nonneg ArithmeticFunction.vonMangoldt_nonneg
    (radical_power_positive τ n).le

/-- The coefficient on p^k is independent of k, with the positive-exponent premise retained. -/
theorem weight_prime_power (τ : ℝ) {p k : ℕ} (hp : p.Prime) (hk : 0 < k) :
    weight τ (p ^ k) = Real.log p / (p : ℝ) ^ τ := by
  rw [weight, radical_prime_power hp hk, vonMangoldt_prime_power hp hk]

/-- The untwisted arithmetic family is retained explicitly, without a character premise. -/
def baseFeature {ι : Type u} (N : ℕ) (τ : ℝ) (s : ι → ℂ)
    (n : Window N) (i : ι) : ℂ :=
  (Real.sqrt (weight τ n.val) : ℂ) * (n.val : ℂ) ^ (-s i)

/-- Actual arithmetic features; character levels may vary with the coordinate. -/
def feature {ι : Type u} (N : ℕ) (τ : ℝ) (level : ι → ℕ)
    (χ : ∀ i, DirichletCharacter ℂ (level i)) (s : ι → ℂ)
    (n : Window N) (i : ι) : ℂ :=
  (Real.sqrt (weight τ n.val) : ℂ) * χ i (n.val : ZMod (level i)) *
    (n.val : ℂ) ^ (-s i)

theorem feature_eq_character_mul_base {ι : Type u}
    (N : ℕ) (τ : ℝ) (level : ι → ℕ)
    (χ : ∀ i, DirichletCharacter ℂ (level i)) (s : ι → ℂ)
    (n : Window N) (i : ι) :
    feature N τ level χ s n i = χ i (n.val : ZMod (level i)) * baseFeature N τ s n i := by
  unfold feature baseFeature
  ring

/-- Every sampled base is nonzero, so the power has its explicit principal-log formula. -/
theorem feature_eq_exp {ι : Type u} (N : ℕ) (τ : ℝ) (level : ι → ℕ)
    (χ : ∀ i, DirichletCharacter ℂ (level i)) (s : ι → ℂ)
    (n : Window N) (i : ι) :
    feature N τ level χ s n i =
      (Real.sqrt (weight τ n.val) : ℂ) * χ i (n.val : ZMod (level i)) *
        Complex.exp (Complex.log (n.val : ℂ) * (-s i)) := by
  have hn : (n.val : ℂ) ≠ 0 := by
    exact Nat.cast_ne_zero.mpr
      (Nat.ne_of_gt (lt_of_lt_of_le (by decide : 0 < 2) (window_lower n)))
  unfold feature
  rw [Complex.cpow_def_of_ne_zero hn]

/-- The finite-index existing complex Gram is exactly A times its conjugate transpose. -/
theorem complexGram_posSemidef {ι : Type u} {κ : Type v} [Fintype ι] [Fintype κ]
    (f : κ → ι → ℂ) : (fun i j => complexGram f (i, j)).PosSemidef := by
  let A : Matrix ι κ ℂ := fun i k => f k i
  have hGram : (fun i j => complexGram f (i, j)) = A * Matrix.conjTranspose A := by
    funext i j
    rfl
  rw [hGram]
  exact Matrix.posSemidef_self_mul_conjTranspose A

/-- The untwisted finite arithmetic Gram uses the same existing complex Gram. -/
def baseGram {ι : Type u} (N : ℕ) (τ : ℝ) (s : ι → ℂ) : Matrix ι ι ℂ :=
  fun i j => complexGram (baseFeature N τ s) (i, j)

theorem baseGram_posSemidef {ι : Type u} [Fintype ι]
    (N : ℕ) (τ : ℝ) (s : ι → ℂ) : (baseGram N τ s).PosSemidef :=
  complexGram_posSemidef (baseFeature N τ s)

theorem baseGram_isHermitian {ι : Type u} [Fintype ι]
    (N : ℕ) (τ : ℝ) (s : ι → ℂ) : (baseGram N τ s).IsHermitian :=
  (baseGram_posSemidef N τ s).isHermitian

theorem baseGram_realification {ι : Type u} [Fintype ι]
    (N : ℕ) (τ : ℝ) (s : ι → ℂ) :
    realSource (fun p => baseGram N τ s p.1 p.2) =
      GRWTSK.Analysis.ErrorBounds.QuadraticGramResidual.gram
        (pairedFeatures (baseFeature N τ s)) :=
  realSource_gram (baseFeature N τ s)

theorem baseGram_readout_nonnegative {ι : Type u} [Fintype ι]
    (N : ℕ) (τ : ℝ) (s : ι → ℂ) (test : ι → ℂ) :
    0 ≤ (complexReadout test (fun p => baseGram N τ s p.1 p.2)).re :=
  complex_gram_readout_nonnegative test (baseFeature N τ s)

/-- The complete complex arithmetic matrix; no imaginary coordinates are projected away. -/
def arithmeticGram {ι : Type u} (N : ℕ) (τ : ℝ) (level : ι → ℕ)
    (χ : ∀ i, DirichletCharacter ℂ (level i)) (s : ι → ℂ) : Matrix ι ι ℂ :=
  fun i j => complexGram (feature N τ level χ s) (i, j)

theorem arithmeticGram_posSemidef {ι : Type u} [Fintype ι]
    (N : ℕ) (τ : ℝ) (level : ι → ℕ)
    (χ : ∀ i, DirichletCharacter ℂ (level i)) (s : ι → ℂ) :
    (arithmeticGram N τ level χ s).PosSemidef :=
  complexGram_posSemidef (feature N τ level χ s)

theorem arithmeticGram_isHermitian {ι : Type u} [Fintype ι]
    (N : ℕ) (τ : ℝ) (level : ι → ℕ)
    (χ : ∀ i, DirichletCharacter ℂ (level i)) (s : ι → ℂ) :
    (arithmeticGram N τ level χ s).IsHermitian :=
  (arithmeticGram_posSemidef N τ level χ s).isHermitian

/-- Reuse the existing positive-kernel object with an actual arithmetic matrix and witness. -/
def arithmeticKernel {ι : Type u} [Fintype ι]
    (N : ℕ) (τ : ℝ) (level : ι → ℕ)
    (χ : ∀ i, DirichletCharacter ℂ (level i)) (s : ι → ℂ) : PositiveKernel ι where
  matrix := arithmeticGram N τ level χ s
  positiveSemidefinite := arithmeticGram_posSemidef N τ level χ s

theorem arithmeticKernel_matrix {ι : Type u} [Fintype ι]
    (N : ℕ) (τ : ℝ) (level : ι → ℕ)
    (χ : ∀ i, DirichletCharacter ℂ (level i)) (s : ι → ℂ) :
    (arithmeticKernel N τ level χ s).matrix = arithmeticGram N τ level χ s :=
  rfl

/-- The arithmetic specialization retains both real rows and the exact normalization. -/
theorem arithmeticGram_realification {ι : Type u} [Fintype ι]
    (N : ℕ) (τ : ℝ) (level : ι → ℕ)
    (χ : ∀ i, DirichletCharacter ℂ (level i)) (s : ι → ℂ) :
    realSource (fun p => arithmeticGram N τ level χ s p.1 p.2) =
      GRWTSK.Analysis.ErrorBounds.QuadraticGramResidual.gram
        (pairedFeatures (feature N τ level χ s)) :=
  realSource_gram (feature N τ level χ s)

theorem arithmeticGram_readout_nonnegative {ι : Type u} [Fintype ι]
    (N : ℕ) (τ : ℝ) (level : ι → ℕ)
    (χ : ∀ i, DirichletCharacter ℂ (level i)) (s : ι → ℂ) (test : ι → ℂ) :
    0 ≤ (complexReadout test (fun p => arithmeticGram N τ level χ s p.1 p.2)).re :=
  complex_gram_readout_nonnegative test (feature N τ level χ s)

theorem arithmeticGram_readout_im_zero {ι : Type u} [Fintype ι]
    (N : ℕ) (τ : ℝ) (level : ι → ℕ)
    (χ : ∀ i, DirichletCharacter ℂ (level i)) (s : ι → ℂ) (test : ι → ℂ) :
    (complexReadout test (fun p => arithmeticGram N τ level χ s p.1 p.2)).im = 0 :=
  hermitian_readout_im_zero test (complexGram (feature N τ level χ s))
    (complexGram_hermitian (feature N τ level χ s))

end

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticFeatureGram
