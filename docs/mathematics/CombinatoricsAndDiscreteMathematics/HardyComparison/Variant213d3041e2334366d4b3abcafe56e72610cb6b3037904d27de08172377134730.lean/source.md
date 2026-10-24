# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.HardyComparison.Variant213d3041e2334366d4b3abcafe56e72610cb6b3037904d27de08172377134730

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6027bc3d46c5fa274e9ff6a2e5e11a1f08f6c8a1` · SHA-256 `213d3041e2334366d4b3abcafe56e72610cb6b3037904d27de08172377134730`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
