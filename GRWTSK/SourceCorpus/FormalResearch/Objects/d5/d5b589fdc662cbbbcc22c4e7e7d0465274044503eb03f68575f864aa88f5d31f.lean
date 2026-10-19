import Mathematics.SemiLocalDefect.QSeries.CoefficientRing
import Mathlib.Data.Nat.Prime.Basic

/-!
# One-prime moment data

Lambert-series and integrality claims remain theorem-bearing fields.
-/

namespace Mathematics.SemiLocalDefect.QSeries

structure OnePrimeMomentSystem where
  prime : Nat
  prime_isPrime : Nat.Prime prime
  moment : Nat → RationalQSeries
  jacobiDiagonal : Nat → RationalQSeries
  jacobiOffDiagonal : Nat → RationalQSeries
  lambertRepresentation : Prop
  lambertRepresentationProof :
    lambertRepresentation
  integrality :
    ∀ degree,
      CoefficientDomainCertificate (moment degree)
  digest : RealizationDigest

def OnePrimeMomentSystem.q
    (system : OnePrimeMomentSystem) : ℚ :=
  1 / system.prime

theorem OnePrimeMomentSystem.q_nonnegative
    (system : OnePrimeMomentSystem) :
    0 ≤ system.q := by
  simp [OnePrimeMomentSystem.q]

end Mathematics.SemiLocalDefect.QSeries
