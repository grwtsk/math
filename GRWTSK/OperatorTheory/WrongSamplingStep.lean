import GRWTSK.OperatorTheory.SturmianBlockCounts
import GRWTSK.OperatorTheory.FreeIDS
open GRWTSK.Analysis.OperatorTheory.SpectralTheory.SturmianBlockCounts GRWTSK.Analysis.OperatorTheory.SpectralTheory.SturmianFiniteVolume
open GRWTSK.Analysis.OperatorTheory.SpectralTheory.FreeIDS

example (q L : ℕ) (α V ξ : ℝ) (origin : ℤ) (E : ℝ) :
    blockCountSum q L α V ξ origin E = ∑ j ∈ Finset.range q,
      (sturmianCount L α V ((ξ+(origin:ℝ)*α)+(j:ℝ)*α) 0 E : ℝ) :=
  blockCountSum_phase q L α V ξ origin E
