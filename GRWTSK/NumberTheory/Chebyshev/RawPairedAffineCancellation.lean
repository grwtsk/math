/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI. -/
import GRWTSK.NumberTheory.Chebyshev.RawPairedOscillation

/-! # Affine-invariant paired raw differences
The unknown source normalization cancels exactly. This does not supply decay
of the remaining canonical zero-head difference. -/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.NumberTheory.Chebyshev.RawPairedAffineCancellation
open FirstRieszWeakRawLimit
open GRWTSK.NumberTheory.Zeta.Riemann.PointwiseFiniteZeroHead

def pairedDifference (f : ℝ → ℂ) (x t : ℝ) : ℂ :=
  f t + f (2*x-t) - 2*f x

theorem pairedDifference_affine (f : ℝ → ℂ) (a b : ℂ) (x t : ℝ) :
    pairedDifference (fun u => f u + a*(u:ℂ)+b) x t = pairedDifference f x t := by
  unfold pairedDifference
  push_cast
  ring

theorem raw_pair_eq_zero_head_and_correction (x t T : ℝ) :
    pairedDifference (fun u => rawClassicalHead u T) x t =
      pairedDifference (fun u => finiteHeightZeroHead u T +
        (GRWTSK.Analysis.RealAnalysis.ClassicalRieszCorrection.slope u : ℂ)) x t := by
  unfold pairedDifference rawClassicalHead
  push_cast
  ring
end GRWTSK.NumberTheory.Chebyshev.RawPairedAffineCancellation
