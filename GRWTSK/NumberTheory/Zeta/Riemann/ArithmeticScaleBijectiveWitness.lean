/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Algebra.FreeAbelianGroup.Finsupp
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Tactic

set_option autoImplicit false

noncomputable section

/-!
# PNT-free arithmetic logarithmic and p-adic scale coordinates

The common arithmetic carrier is the free abelian group on prime labels.  Its
canonical coordinate realization is the finitely supported family of integer
prime exponents.  A selected `p`-coordinate is a split projection; the complete
all-prime family is the additive equivalence.

This module contains only the arithmetic coordinate layer.  It is deliberately
independent of external-theorem admission, zeta nonvanishing, detector
certificates, Weil forms, and quartic extraction.  In particular, its
bijectivity is not a theorem-acceptance criterion.

The Archimedean realization is the finite sum `Σ_p n_p log p`.  No
prime-counting asymptotic or prime-number-theorem result is used.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.ArithmeticScale

/-- Prime labels for the arithmetic scale basis. -/
abbrev PrimeIndex := {p : ℕ // Nat.Prime p}

/-- The finitely supported family of integer prime exponents. -/
abbrev PrimeExponentLattice := PrimeIndex →₀ ℤ

/-- Formal arithmetic logarithmic scales as the free abelian group on primes. -/
abbrev ArithmeticLogScale := FreeAbelianGroup PrimeIndex

/-- The complete finitely supported family of local `p`-adic scale exponents. -/
abbrev PAdicScaleFamily := PrimeExponentLattice

/-- The canonical all-prime additive equivalence. -/
def logarithmicToPAdicFamily : ArithmeticLogScale ≃+ PAdicScaleFamily :=
  FreeAbelianGroup.equivFinsupp PrimeIndex

/-- The all-prime scale map is bijective.  This is an arithmetic coordinate
theorem, not an external-proof admission rule. -/
theorem logarithmicToPAdicFamily_bijective :
    Function.Bijective
      (logarithmicToPAdicFamily : ArithmeticLogScale → PAdicScaleFamily) :=
  logarithmicToPAdicFamily.bijective

/-- The local `p`-adic scale exponent is the coefficient at the prime basis
label. -/
def pAdicExponent (p : PrimeIndex) : ArithmeticLogScale →+ ℤ :=
  FreeAbelianGroup.coeff p

/-- Insert an integer scale exponent into the `p`-primary coordinate. -/
def pPrimaryEmbedding (p : PrimeIndex) : ℤ →+ ArithmeticLogScale :=
  Finsupp.toFreeAbelianGroup.comp (Finsupp.singleAddHom p)

/-- The all-prime equivalence sends a primary insertion to the corresponding
single-coordinate family. -/
@[simp]
theorem logarithmicToPAdicFamily_pPrimaryEmbedding
    (p : PrimeIndex) (n : ℤ) :
    logarithmicToPAdicFamily (pPrimaryEmbedding p n) = Finsupp.single p n := by
  change
    FreeAbelianGroup.toFinsupp
        (Finsupp.toFreeAbelianGroup (Finsupp.single p n)) =
      Finsupp.single p n
  simp

/-- The local coordinate is a left inverse of its `p`-primary embedding. -/
@[simp]
theorem pAdicExponent_pPrimaryEmbedding (p : PrimeIndex) (n : ℤ) :
    pAdicExponent p (pPrimaryEmbedding p n) = n := by
  change
    (FreeAbelianGroup.toFinsupp
      (Finsupp.toFreeAbelianGroup (Finsupp.single p n))) p = n
  simp

/-- Bundled split identity for the local coordinate and primary embedding. -/
theorem pAdicExponent_comp_pPrimaryEmbedding (p : PrimeIndex) :
    (pAdicExponent p).comp (pPrimaryEmbedding p) = AddMonoidHom.id ℤ := by
  apply AddMonoidHom.ext
  intro n
  exact pAdicExponent_pPrimaryEmbedding p n

/-- The `p`-primary embedding is injective because its local coordinate is a
left inverse. -/
theorem pPrimaryEmbedding_injective (p : PrimeIndex) :
    Function.Injective (pPrimaryEmbedding p) := by
  intro m n hmn
  have h := congrArg (fun x => pAdicExponent p x) hmn
  simpa using h

/-- A different prime basis vector has zero `p`-coordinate. -/
@[simp]
theorem pAdicExponent_pPrimaryEmbedding_of_ne
    {p q : PrimeIndex} (hpq : p ≠ q) (n : ℤ) :
    pAdicExponent p (pPrimaryEmbedding q n) = 0 := by
  have hqp : q ≠ p := Ne.symm hpq
  change
    (FreeAbelianGroup.toFinsupp
      (Finsupp.toFreeAbelianGroup (Finsupp.single q n))) p = 0
  simp [hpq, hqp]

/-- Every local coordinate of the all-prime equivalence is the corresponding
`p`-adic exponent homomorphism. -/
theorem logarithmicToPAdicFamily_apply
    (x : ArithmeticLogScale) (p : PrimeIndex) :
    logarithmicToPAdicFamily x p = pAdicExponent p x := by
  change FreeAbelianGroup.toFinsupp x p = FreeAbelianGroup.toFinsupp x p
  rfl

/-- Equality of every local exponent recovers the arithmetic logarithmic scale. -/
theorem ext_of_pAdicExponent_eq
    {x y : ArithmeticLogScale}
    (h : ∀ p, pAdicExponent p x = pAdicExponent p y) : x = y := by
  apply logarithmicToPAdicFamily.injective
  ext p
  change pAdicExponent p x = pAdicExponent p y
  exact h p

/-- Additive contribution of one prime basis coordinate to the real
Archimedean logarithmic realization. -/
def archimedeanBasisHom (p : PrimeIndex) : ℤ →+ ℝ where
  toFun n := (n : ℝ) * Real.log (p.1 : ℝ)
  map_zero' := by simp
  map_add' m n := by
    simp [add_mul]

/-- Finite Archimedean realization `Σ_p n_p log p` of the common exponent
lattice.  Injectivity of this real-valued map is deliberately not used. -/
def archimedeanLogRealization : ArithmeticLogScale →+ ℝ :=
  (Finsupp.liftAddHom fun p => archimedeanBasisHom p).comp
    logarithmicToPAdicFamily.toAddMonoidHom

/-- The bundled realization is the expected finite logarithmic sum. -/
theorem archimedeanLogRealization_apply (x : ArithmeticLogScale) :
    archimedeanLogRealization x =
      (logarithmicToPAdicFamily x).sum
        fun p n => (n : ℝ) * Real.log (p.1 : ℝ) :=
  rfl

/-- The real realization sends a `p`-primary scale to `n log p`. -/
@[simp]
theorem archimedeanLogRealization_pPrimaryEmbedding
    (p : PrimeIndex) (n : ℤ) :
    archimedeanLogRealization (pPrimaryEmbedding p n) =
      (n : ℝ) * Real.log (p.1 : ℝ) := by
  change
    (Finsupp.liftAddHom fun q : PrimeIndex => archimedeanBasisHom q)
        (logarithmicToPAdicFamily (pPrimaryEmbedding p n)) =
      (n : ℝ) * Real.log (p.1 : ℝ)
  rw [logarithmicToPAdicFamily_pPrimaryEmbedding,
    Finsupp.liftAddHom_apply_single]
  rfl

end GRWTSK.ArithmeticScale
