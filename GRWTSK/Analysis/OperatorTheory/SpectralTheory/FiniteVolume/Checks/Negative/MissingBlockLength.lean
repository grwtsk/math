import GRWTSK.Analysis.OperatorTheory.SpectralTheory.SturmianBlockCounts
import GRWTSK.Analysis.OperatorTheory.SpectralTheory.FreeIDS
open GRWTSK.Analysis.OperatorTheory.SpectralTheory.SturmianBlockCounts GRWTSK.Analysis.OperatorTheory.SpectralTheory.SturmianFiniteVolume
open GRWTSK.Analysis.OperatorTheory.SpectralTheory.FreeIDS

example (N L : ℕ) (hN : 0 < N) (α V ξ : ℝ) (origin : ℤ) (E : ℝ) :
    |sturmianNormalizedCount N α V ξ origin E - blockCountSum (N/L) L α V ξ origin E/N| ≤
      2/(L:ℝ)+(L:ℝ)/N :=
  finite_block_approximation N L hN
