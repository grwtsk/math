import Mathematics.SemiLocalDefect.Basic
import Mathematics.GraphAccess.Arc
import Mathlib.Analysis.InnerProductSpace.Positive
import Mathlib.Analysis.Normed.Operator.ContinuousLinearMap

/-!
# Fixed-Hilbert packet trace model

This interface records exactly the linearity, positivity, and trace-ideal
estimate needed by compensation proofs.  A Hilbert--Schmidt realization may
instantiate it without entering the trusted core of the arithmetic map.
-/

namespace Mathematics.SemiLocalDefect.ResidueDeflection.Trace

open Mathematics.GraphAccess

universe uHilbert uTest

abbrev HilbertEnd
    (Hilbert : Type uHilbert)
    [NormedAddCommGroup Hilbert]
    [NormedSpace ℂ Hilbert] :=
  Hilbert →L[ℂ] Hilbert

structure PacketTraceModel
    (graph : GraphCut)
    (Hilbert : Type uHilbert)
    (Test : Type uTest)
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert] where
  packetNormSq :
    graph.Node → Test → ℝ
  packetNormSq_nonnegative :
    ∀ node test,
      0 ≤ packetNormSq node test
  energy :
    graph.Node →
      HilbertEnd Hilbert →
      Test → ℝ
  energy_zero :
    ∀ node test,
      energy node 0 test = 0
  energy_add :
    ∀ node left right test,
      energy node (left + right) test =
        energy node left test +
          energy node right test
  energy_sub :
    ∀ node left right test,
      energy node (left - right) test =
        energy node left test -
          energy node right test
  energy_nonnegative :
    ∀ node operator test,
      operator.IsPositive →
        0 ≤ energy node operator test
  abs_energy_le :
    ∀ node operator test,
      abs (energy node operator test) ≤
        ‖operator‖ *
          packetNormSq node test
  digest : CertificateDigest

end Mathematics.SemiLocalDefect.ResidueDeflection.Trace
