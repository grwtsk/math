import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Nat.Prime.Basic
import Mathematics.SemiLocalDefect.WP0.Identifiers

/-!
# Prime-horizon carrier primitive
-/

namespace Mathematics.SemiLocalDefect.SoninCore

structure FinitePrimeHorizon where
  Prime : Type
  primeFintype : Fintype Prime
  primeDecEq : DecidableEq Prime
  primeOrder : LinearOrder Prime
  value : Prime → Nat
  value_injective : Function.Injective value
  value_prime : ∀ p, Nat.Prime (value p)
  id : HorizonId
  revision : Nat
  digest : Digest

instance (U : FinitePrimeHorizon) :
    Fintype U.Prime :=
  U.primeFintype

instance (U : FinitePrimeHorizon) :
    DecidableEq U.Prime :=
  U.primeDecEq

instance (U : FinitePrimeHorizon) :
    LinearOrder U.Prime :=
  U.primeOrder

end Mathematics.SemiLocalDefect.SoninCore
