/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerSigmaMembership
import Mathlib.Tactic

/-!
# Finite sigma-support subtype to dependent fiber index

A sigma element contains n and (p,k); FiberIndex stores the same
data as a triple. Membership equivalence provides both maps.
The inverse laws preserve every index, without assuming uniqueness
of prime-power representations.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerSigmaFiberEquiv

open GRWTSK.NumberTheory.Primes.GoldbachProperPowerSigmaPacket
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerSigmaMembership
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerFiberIndex

/-- Finite sigma support represented as a membership subtype. -/
def SigmaSupportedIndex (N : ℕ) :=
  { t : Σ n : ℕ, ℕ × ℕ // t ∈ sigmaSupport N }

/-- Convert a supported sigma index into the corresponding triple. -/
def sigmaToFiber (N : ℕ) (t : SigmaSupportedIndex N) : FiberIndex N :=
  ⟨(t.1.1, t.1.2.1, t.1.2.2),
    (mem_sigmaSupport_iff N t.1.1 t.1.2).mp t.2⟩

/-- Convert a supported triple into the corresponding sigma index. -/
def fiberToSigma (N : ℕ) (t : FiberIndex N) : SigmaSupportedIndex N :=
  ⟨⟨t.1.1, (t.1.2.1, t.1.2.2)⟩,
    (mem_sigmaSupport_iff N t.1.1 (t.1.2.1, t.1.2.2)).mpr t.2⟩

/-- Exact equivalence between the supported sigma and fiber indices. -/
def sigmaFiberEquiv (N : ℕ) : SigmaSupportedIndex N ≃ FiberIndex N where
  toFun := sigmaToFiber N
  invFun := fiberToSigma N
  left_inv := by
    intro t
    apply Subtype.ext
    cases t with
    | mk t ht =>
      cases t
      rfl
  right_inv := by
    intro t
    apply Subtype.ext
    rcases t with ⟨⟨n, p, k⟩, ht⟩
    rfl

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerSigmaFiberEquiv
