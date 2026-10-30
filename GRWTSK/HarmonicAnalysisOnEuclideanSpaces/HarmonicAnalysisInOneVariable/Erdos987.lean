/- Local attribution: grwtsk contributors. Source candidates; verification NOT_RUN. -/
import Analysis.Misc.erdos_987

namespace GRWTSK.FourierAnalysis.FourierAnalysisInOneVariable.TaoErdos.Erdos987

/-- Every fixed tail of a circle sequence retains the iterated-limsup
obstruction. The outer exponent limsup and inner prefix limsup stay distinct. -/
theorem shifted_circle_sequence (z : ℕ → Circle) (offset : ℕ) :
    Filter.atTop.limsup (fun k : ℕ ↦ Filter.atTop.limsup
      (fun n : ℕ ↦ (‖∑ j ∈ Finset.range n,
        ((z (j + offset)) ^ k : ℂ)‖ : EReal))) = ⊤ :=
  _root_.Erdos_987 (fun j ↦ z (j + offset))

end GRWTSK.FourierAnalysis.FourierAnalysisInOneVariable.TaoErdos.Erdos987
