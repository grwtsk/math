/- The accepted positive module proves actual infinite integer-ideal support after removing
zero-ideal cancellation, despite the genuine compact-window implication and X=1>0. -/
import GRWTSK.NumberTheory.Ideal.Checks.Positive.CompactNormSupport
namespace GRWTSK.NumberTheory.Ideal.CompactNormSupport.Checks
noncomputable section

-- Intended rejection: a real reflexive inequality is not the missing zero-ideal cancellation proof.
example : (Function.support zeroFiber).Finite :=
  finite_support_norm_triple integerWindow integerWindow_compact 1 (by norm_num)
    zeroFiber (le_refl (0:ℝ)) zeroFiber_window

end
end GRWTSK.NumberTheory.Ideal.CompactNormSupport.Checks
