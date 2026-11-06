/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilUnitWindowDyadicObservations
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilUnitWindowRemoteBounds

/-!
# Rational packet inputs for the first literal odd stage

The source enclosures cover the whole shifted head, every finite high row
and the complete remote allowance. Comparing both rational endpoints with
the supplied integer radius transfers the three enclosure families to
the same inclusion packet. All remaining inputs to the first-stage
return are discrete comparisons or finite identities.

The fixed cutoffs and the scalar pole coordinate agree with the shifted
radius-one packet. This theorem makes no existence assertion for a
passing packet. Independent analytical review is pending.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.UnitWindowBoundedPacket

open OddLiteralCofinal UnitWindowEntryBounds UnitWindowRemoteBounds UnitWindowDyadicObservations
open GRWTSK.Algebra.LinearAlgebra.FiniteSignDyadicLDL

/-- Both rational endpoints fit in the observation's dyadic radius. -/
def covers (center radius : ℤ) (interval : ℚ × ℚ) : Prop :=
  requiredRadius center interval.1 interval.2 ≤ radius

instance (center radius : ℤ) (interval : ℚ × ℚ) :
    Decidable (covers center radius interval) :=
  inferInstanceAs (Decidable (requiredRadius center interval.1 interval.2 ≤ radius))

/-- Once the integer checks pass, the fixed packet returns to the full
literal first-stage bound without any real-valued entry premises. -/
theorem stageLower_zero_of_boundedPacket (p : Packet)
    (target factor : Matrix Head Head ℤ) (pivots : Head → ℤ)
    (hUpper : ∀ i j, covers (p.upper i j) (p.upperRadius i j) (headBounds 48 24 8192 i j))
    (hRows : ∀ i j, covers (p.rows i j) (p.rowRadius i j) (residualBounds 48 24 8192 i j))
    (hRemote : ∀ i j, covers (p.remote i j) (p.remoteRadius i j) (remoteEntryBounds i j))
    (hHeadBudget : ∀ i, checkRadiusRow p.upperRadius p.headBudget i = true)
    (hResidualBudget : checkResidualBudget p = true)
    (hRemoteBudget : ∀ i, checkRadiusRow p.remoteRadius p.remoteBudget i = true)
    (hLDL : check target factor pivots = true)
    (hMinorant : checkPacketMinorant p target = true) :
    StageLower 0 := by
  refine stageLower_zero_of_packet p target factor pivots ?_ ?_ ?_
    hHeadBudget hResidualBudget hRemoteBudget hLDL hMinorant
  · intro i j
    obtain ⟨hl, hu⟩ := headBounds_sound 48 24 (by decide : 0 < 8192) i j
    exact abs_sub_dyadic_le_of_interval hl hu (hUpper i j)
  · intro i j
    obtain ⟨hl, hu⟩ := residualBounds_sound 48 24 (by decide : 0 < 8192) i j
    exact abs_sub_dyadic_le_of_interval hl hu (hRows i j)
  · intro i j
    obtain ⟨hl, hu⟩ := remoteEntry_bounds i j
    exact abs_sub_dyadic_le_of_interval hl hu (hRemote i j)

end GRWTSK.NumberTheory.WeilQuadraticForm.UnitWindowBoundedPacket
