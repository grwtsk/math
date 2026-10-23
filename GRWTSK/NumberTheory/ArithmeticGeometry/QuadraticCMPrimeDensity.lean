/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Farey.CyclicResidueHodge
import Mathlib.Tactic

/-!
# Conditional quadratic CM split/inert and ordinary/supersingular prime densities

The finite prime counters are actual filters of natural prime numbers p >= 3,
not arbitrary weights, and exclude the ramified prime 2. The only external
mathematical inputs for the density conclusion are:
  (1) the density-1/2 split/inert prime classes, i.e. the Q(i)
      special case of Dirichlet/Chebotarev;
  (2) the classification of ordinary and supersingular reduction of the
      stated CM elliptic curve (e.g. y^2=x^3-x) by p mod 4.

The classification is a separately supplied geometric theorem, not derived
from a Farey determinant, an abstract CM sign row, or a numeric Hodge slope.
The density supplier is NOT constructed in this module. No zeros of zeta or
Dirichlet L-functions are counted by these prime counters.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.NumberTheory.ArithmeticGeometry.QuadraticCMPrimeDensity

open Filter Topology

/-- All primes in the odd window 3 <= p <= X. -/
def oddPrimeWindow (X : ℕ) : Finset ℕ :=
  (Finset.Icc 3 X).filter Nat.Prime

/-- Finite arithmetic prime counters. -/
def oddPrimeCount (X : ℕ) : ℕ := (oddPrimeWindow X).card

def splitPrimeCount (X : ℕ) : ℕ :=
  ((Finset.Icc 3 X).filter (fun p => Nat.Prime p ∧ p % 4 = 1)).card

def inertPrimeCount (X : ℕ) : ℕ :=
  ((Finset.Icc 3 X).filter (fun p => Nat.Prime p ∧ p % 4 = 3)).card

/-- A relative density among odd primes, not a density of zeta zeros. -/
def HasRelativePrimeDensityHalf (count : ℕ → ℕ) : Prop :=
  Tendsto (fun X : ℕ => (count X : ℝ) / (oddPrimeCount X : ℝ))
    atTop (nhds ((1 : ℝ) / 2))

/-- The uninstantiated analytic density input at the exact prime classes. -/
structure QuadraticPrimeDensitySupplier : Prop where
  split_half : HasRelativePrimeDensityHalf splitPrimeCount
  inert_half : HasRelativePrimeDensityHalf inertPrimeCount

/-- Geometric classification supplier for an identified CM elliptic curve
with CM by Z[i]. In the intended application, ordinary and supersingular
mean reduction types of y^2=x^3-x at odd primes. They are not inferred
from a finite sign-count lemma or from a generic Hodge realization. -/
structure QuadraticCMReductionProfile where
  ordinary : ℕ → Prop
  supersingular : ℕ → Prop
  ordinary_iff_split :
    ∀ p, Nat.Prime p → 3 ≤ p → (ordinary p ↔ p % 4 = 1)
  supersingular_iff_inert :
    ∀ p, Nat.Prime p → 3 ≤ p → (supersingular p ↔ p % 4 = 3)

/-- The density-bearing reduction counters use the identical odd prime window. -/
def ordinaryPrimeCount (P : QuadraticCMReductionProfile) (X : ℕ) : ℕ := by
  classical
  exact ((Finset.Icc 3 X).filter (fun p => Nat.Prime p ∧ P.ordinary p)).card

def supersingularPrimeCount (P : QuadraticCMReductionProfile) (X : ℕ) : ℕ := by
  classical
  exact ((Finset.Icc 3 X).filter (fun p => Nat.Prime p ∧ P.supersingular p)).card

/-- Deuring's supplied split classification identifies the full finite counts. -/
theorem ordinaryPrimeCount_eq_splitPrimeCount
    (P : QuadraticCMReductionProfile) (X : ℕ) :
    ordinaryPrimeCount P X = splitPrimeCount X := by
  classical
  unfold ordinaryPrimeCount splitPrimeCount
  congr 1
  ext p
  constructor
  · intro hp
    rcases Finset.mem_filter.mp hp with ⟨hmem, hprime, hord⟩
    exact Finset.mem_filter.mpr
      ⟨hmem, hprime, (P.ordinary_iff_split p hprime
        (Finset.mem_Icc.mp hmem).1).mp hord⟩
  · intro hp
    rcases Finset.mem_filter.mp hp with ⟨hmem, hprime, hsplit⟩
    exact Finset.mem_filter.mpr
      ⟨hmem, hprime, (P.ordinary_iff_split p hprime
        (Finset.mem_Icc.mp hmem).1).mpr hsplit⟩

theorem supersingularPrimeCount_eq_inertPrimeCount
    (P : QuadraticCMReductionProfile) (X : ℕ) :
    supersingularPrimeCount P X = inertPrimeCount X := by
  classical
  unfold supersingularPrimeCount inertPrimeCount
  congr 1
  ext p
  constructor
  · intro hp
    rcases Finset.mem_filter.mp hp with ⟨hmem, hprime, hsuper⟩
    exact Finset.mem_filter.mpr
      ⟨hmem, hprime, (P.supersingular_iff_inert p hprime
        (Finset.mem_Icc.mp hmem).1).mp hsuper⟩
  · intro hp
    rcases Finset.mem_filter.mp hp with ⟨hmem, hprime, hinert⟩
    exact Finset.mem_filter.mpr
      ⟨hmem, hprime, (P.supersingular_iff_inert p hprime
        (Finset.mem_Icc.mp hmem).1).mpr hinert⟩

/-- Conditional ordinary-prime density theorem with both suppliers explicit. -/
theorem ordinaryPrimeDensity_half
    (P : QuadraticCMReductionProfile)
    (h : QuadraticPrimeDensitySupplier) :
    HasRelativePrimeDensityHalf (ordinaryPrimeCount P) := by
  unfold HasRelativePrimeDensityHalf at *
  simpa only [ordinaryPrimeCount_eq_splitPrimeCount] using h.split_half

/-- Conditional supersingular-prime density theorem with both suppliers explicit. -/
theorem supersingularPrimeDensity_half
    (P : QuadraticCMReductionProfile)
    (h : QuadraticPrimeDensitySupplier) :
    HasRelativePrimeDensityHalf (supersingularPrimeCount P) := by
  unfold HasRelativePrimeDensityHalf at *
  simpa only [supersingularPrimeCount_eq_inertPrimeCount] using h.inert_half

/-- Joint Deuring/Chebotarev density consequence; no theorem about
zeta zeros, rank twists, or a Hodge cycle-class map is inferred. -/
theorem ordinary_and_supersingular_density_half
    (P : QuadraticCMReductionProfile)
    (h : QuadraticPrimeDensitySupplier) :
    HasRelativePrimeDensityHalf (ordinaryPrimeCount P) ∧
      HasRelativePrimeDensityHalf (supersingularPrimeCount P) :=
  ⟨ordinaryPrimeDensity_half P h, supersingularPrimeDensity_half P h⟩

/-- The genuine Farey nonunit coordinate at p=2 is not in either
unramified odd-prime counting window; this is an exact finite boundary. -/
theorem ramified_two_excluded (X : ℕ) :
    (2 : ℕ) ∉ oddPrimeWindow X := by
  simp [oddPrimeWindow]

end GRWTSK.NumberTheory.ArithmeticGeometry.QuadraticCMPrimeDensity
