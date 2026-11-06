/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import WeilWidenedReplayPhysicalStage
import RemoteFastReplayTriResult

/-!
# The checked first stage of the literal real odd zeta form

This isolated consumer is built with the generated finite certificate
modules. The physical return includes the complete head and rectangular
residual observations, with the shift applied only to the physical Gram
metric. The remote return checks the signed trace, the pole coordinate and
the infinite allowance against the same source. The assembled lower sign
and the checked high floor give the literal whole-window result at radius
one and shift `-1`. The proof uses the same stage definition as the
cofinal implication. Independent analytical review is pending.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.UnitWindowFirstStage

/-- The literal odd form on the entire radius-one window is bounded
below by minus the squared Lebesgue norm. -/
theorem shiftedRadiusOneStage : OddLiteralCofinal.StageLower 0 :=
  WeilWidenedReplayPhysical.checkedStageOfRemoteRadius RemoteFastReplay.remotePacket.remoteRadius
    RemoteFastReplay.checkedRemoteBudget RemoteFastReplay.checkedRemoteObservation

end GRWTSK.NumberTheory.WeilQuadraticForm.UnitWindowFirstStage
