/- Intentional missing strict decay control. Apache-2.0. -/
import GRWTSK.Analysis.Series.Checks.Positive.DyadicKernel
open GRWTSK.Analysis.Series.DyadicKernel
-- Intended rejection: equal exponents cannot supply the strict decay gap.
example : Summable (kernelTerm 1 1 1) :=
  kernel_summable 1 1 1 (by norm_num) (by norm_num) (le_refl (1:ℝ))
