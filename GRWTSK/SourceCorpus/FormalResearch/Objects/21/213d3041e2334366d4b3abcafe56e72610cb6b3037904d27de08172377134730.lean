import Mathematics.SemiLocalDefect.Sonin.CofinalGram
import Mathematics.SemiLocalDefect.Hardy.HardyDefect

/-!
# Hardy--Sonin comparison hierarchy

Packet, trace-class, and operator comparisons are separate interfaces.
-/

namespace Mathematics.SemiLocalDefect.Sonin

universe uPrime uSpace uTest

structure HardySoninPacketBridge
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {family : SoninSpaceFamily Prime}
    {connectors : SoninConnectorSystem family}
    {range :
      FiniteHorizonRangeProjection
        model connectors}
    (hardy :
      Hardy.HardyDefectFamily model Prime)
    (Test : Type uTest) where
  packetEnergy : Test → model.Operator → ℝ
  error :
    Finset Prime → Finset Prime → Test → ℝ
  comparison :
    ∀ source horizon test,
      source ⊆ horizon →
      |packetEnergy test (hardy.defect source) -
        packetEnergy test
          (range.projection source horizon)| ≤
        error source horizon test

structure HardySoninTraceClassBridge
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {family : SoninSpaceFamily Prime}
    {connectors : SoninConnectorSystem family}
    {range :
      FiniteHorizonRangeProjection
        model connectors}
    (hardy :
      Hardy.HardyDefectFamily model Prime) where
  traceNorm : model.Operator → ℝ
  error :
    Finset Prime → Finset Prime → ℝ
  comparison :
    ∀ source horizon,
      source ⊆ horizon →
      traceNorm
          (hardy.defect source -
            range.projection source horizon) ≤
        error source horizon

structure HardySoninOperatorBridge
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {family : SoninSpaceFamily Prime}
    {connectors : SoninConnectorSystem family}
    {range :
      FiniteHorizonRangeProjection
        model connectors}
    (hardy :
      Hardy.HardyDefectFamily model Prime) where
  conjugatedProjection :
    Finset Prime → Finset Prime → model.Operator
  operatorNorm : model.Operator → ℝ
  error :
    Finset Prime → Finset Prime → ℝ
  comparison :
    ∀ source horizon,
      source ⊆ horizon →
      operatorNorm
          (hardy.defect source -
            conjugatedProjection source horizon) ≤
        error source horizon

end Mathematics.SemiLocalDefect.Sonin
