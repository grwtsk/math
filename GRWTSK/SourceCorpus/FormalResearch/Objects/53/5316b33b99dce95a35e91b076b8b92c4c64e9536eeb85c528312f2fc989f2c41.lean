import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SeparationBounds
import Mathlib.Data.Finset.Max
import Mathlib.Data.Finset.Powerset
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Order.Monoid.WithTop
#check WithTop.coe_zero
example : ((0 : ℕ) : WithTop ℕ) = 0 := WithTop.coe_zero
example (a : WithTop ℕ) (h : a ≤ ((0 : ℕ) : WithTop ℕ)) : a = 0 := by
  apply le_antisymm ?_ zero_le
  simpa only [WithTop.coe_zero] using h
example (a : WithTop ℕ) (h : a ≤ ((0 : ℕ) : WithTop ℕ)) : a = 0 := by
  exact le_antisymm h (WithTop.coe_le_coe.mpr (Nat.zero_le _))
