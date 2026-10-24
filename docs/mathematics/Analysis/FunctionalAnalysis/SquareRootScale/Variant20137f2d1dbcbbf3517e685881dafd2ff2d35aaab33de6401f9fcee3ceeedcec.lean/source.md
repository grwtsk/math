# Complete source: GRWTSK.Analysis.FunctionalAnalysis.SquareRootScale.Variant20137f2d1dbcbbf3517e685881dafd2ff2d35aaab33de6401f9fcee3ceeedcec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6a24a481ccaae1ab6a020d5260854cb806ab348a` · SHA-256 `919c017257689164d6336c9e1a59e45a808c14dafd40ca52ca418cc59cdb2516`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.PacketSquareRootScale.Variant3ca5c6c659419e51a97be155dffb19faf11fa78c5449b228bb124326388b7041","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3ca5c6c659419e51a97be155dffb19faf11fa78c5449b228bb124326388b7041","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.PacketSquareRootScale.Variant3ca5c6c659419e51a97be155dffb19faf11fa78c5449b228bb124326388b7041","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"3ca5c6c659419e51a97be155dffb19faf11fa78c5449b228bb124326388b7041","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/ResidueDeflection/Arithmetic/SquareRootScale.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.ResidueDeflection.Arithmetic.WeilSpecialization
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
# Local square-root-scale map

Packet size and scalar arithmetic residuals are bounded independently before
they are combined with the compensation budget.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.PacketSquareRootScale.Variant3ca5c6c659419e51a97be155dffb19faf11fa78c5449b228bb124326388b7041

namespace Mathematics.SemiLocalDefect.ResidueDeflection.Arithmetic

open Mathematics.GraphAccess

universe uHilbert uPacketTest uArithmeticTest

structure PacketSquareRootScale
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {PacketTest : Type uPacketTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    {system :
      Trace.PolarTraceSystem
        cut Hilbert PacketTest}
    (correspondence :
      ArithmeticTraceCorrespondence system) where
  mass : graph.Node → ℝ
  mass_ge_one :
    ∀ node,
      1 ≤ mass node
  logPower : Nat
  testNormSq :
    ∀ node,
      correspondence.ArithmeticTest node → ℝ
  testNormSq_nonnegative :
    ∀ node test,
      0 ≤ testNormSq node test
  constant : ℝ
  constant_nonnegative :
    0 ≤ constant
  packetBound :
    ∀ node test,
      system.packet.packetNormSq node
          (correspondence.packetCode
            node test) ≤
        constant *
          Real.sqrt (mass node) *
          (1 + Real.log (mass node)) ^
            logPower *
          testNormSq node test

noncomputable def PacketSquareRootScale.weight
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {PacketTest : Type uPacketTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    {system :
      Trace.PolarTraceSystem
        cut Hilbert PacketTest}
    {correspondence :
      ArithmeticTraceCorrespondence system}
    (scale :
      PacketSquareRootScale correspondence)
    (node : graph.Node)
    (test :
      correspondence.ArithmeticTest node) : ℝ :=
  Real.sqrt (scale.mass node) *
    (1 + Real.log (scale.mass node)) ^
      scale.logPower *
    scale.testNormSq node test

theorem PacketSquareRootScale.weight_nonnegative
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {PacketTest : Type uPacketTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    {system :
      Trace.PolarTraceSystem
        cut Hilbert PacketTest}
    {correspondence :
      ArithmeticTraceCorrespondence system}
    (scale :
      PacketSquareRootScale correspondence)
    (node : graph.Node)
    (test :
      correspondence.ArithmeticTest node) :
    0 ≤ scale.weight node test := by
  have logNonnegative :
      0 ≤ Real.log (scale.mass node) :=
    Real.log_nonneg (scale.mass_ge_one node)
  have logarithmicFactorNonnegative :
      0 ≤ 1 + Real.log (scale.mass node) := by
    linarith
  unfold PacketSquareRootScale.weight
  exact mul_nonneg
    (mul_nonneg
      (Real.sqrt_nonneg _)
      (pow_nonneg logarithmicFactorNonnegative _))
    (scale.testNormSq_nonnegative node test)

structure ArithmeticResidualSquareRootScale
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {PacketTest : Type uPacketTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    {system :
      Trace.PolarTraceSystem
        cut Hilbert PacketTest}
    {correspondence :
      ArithmeticTraceCorrespondence system}
    {traceBudget :
      Trace.TraceCompensationBudget system}
    (budget :
      ArithmeticTransportBudget
        correspondence traceBudget)
    (scale :
      PacketSquareRootScale correspondence) where
  constant : ℝ
  constant_nonnegative :
    0 ≤ constant
  scalarBudgetBound :
    ∀ arc test,
      budget.mainBudget arc test +
          budget.regularizationBudget arc test +
          budget.bitfieldBudget arc test +
          budget.correspondenceBudget arc test ≤
        constant *
          scale.weight arc.tail test

theorem arithmeticTrace_squareRoot_transport_bound
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {PacketTest : Type uPacketTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    (system :
      Trace.PolarTraceSystem
        cut Hilbert PacketTest)
    (correspondence :
      ArithmeticTraceCorrespondence system)
    (traceBudget :
      Trace.TraceCompensationBudget system)
    (budget :
      ArithmeticTransportBudget
        correspondence traceBudget)
    (packetScale :
      PacketSquareRootScale correspondence)
    (residualScale :
      ArithmeticResidualSquareRootScale
        budget packetScale)
    (arc : Arc graph)
    (test :
      correspondence.ArithmeticTest arc.tail)
    (safe : cut.safeArc arc = true) :
    abs
        (correspondence.arithmeticDisplacement
          arc test) ≤
      (residualScale.constant +
          traceBudget.budget arc *
            packetScale.constant) *
        packetScale.weight arc.tail test := by
  have localBound :=
    arithmeticTrace_transport_bound
      system correspondence traceBudget
      budget arc test safe
  have packetBound :
      system.packet.packetNormSq arc.tail
          (correspondence.packetCode
            arc.tail test) ≤
        packetScale.constant *
          packetScale.weight arc.tail test := by
    simpa [PacketSquareRootScale.weight,
      mul_assoc] using
      packetScale.packetBound arc.tail test
  have weightedPacketBound :=
    mul_le_mul_of_nonneg_left
      packetBound
      (traceBudget.budget_nonnegative arc)
  have scalarBound :=
    residualScale.scalarBudgetBound arc test
  calc
    abs
        (correspondence.arithmeticDisplacement
          arc test) ≤
      budget.mainBudget arc test +
        traceBudget.budget arc *
          system.packet.packetNormSq
            arc.tail
            (correspondence.packetCode
              arc.tail test) +
        budget.regularizationBudget arc test +
        budget.bitfieldBudget arc test +
        budget.correspondenceBudget arc test :=
      localBound
    _ ≤
      residualScale.constant *
          packetScale.weight arc.tail test +
        traceBudget.budget arc *
          (packetScale.constant *
            packetScale.weight arc.tail test) := by
      linarith
    _ =
      (residualScale.constant +
          traceBudget.budget arc *
            packetScale.constant) *
        packetScale.weight arc.tail test := by
      ring

end Mathematics.SemiLocalDefect.ResidueDeflection.Arithmetic
```
