# Complete source: GRWTSK.Analysis.Fourier.WindowCertificates

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `762d0793ddfffb32563a3e98b35cad42ae49758e` · SHA-256 `9decb15d3e11a9ef079eef3ffdaf605e312efacb3c0fea46aca68d2bc1606d88`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human direction: grwtsk contributors; OpenAI Codex formalization assistance.
Classical implications; imported Mathlib contributions retain their authorship. -/
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.MeasureTheory.Function.LpSpace.Basic
import Mathlib.MeasureTheory.Integral.Bochner.Basic
import Mathlib.MeasureTheory.Measure.Haar.OfBasis
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.Waveform
open MeasureTheory

/-- Merely defines the angular change of variable; it supplies no Parseval theorem. -/
def angularTransform (normalized : ℝ → ℂ) (ξ : ℝ) : ℂ := normalized (ξ/(2*Real.pi))

/-- Supplier obligations for the hard-window, angular, pointwise interpretation.
No instance is inferred from a finite sample manifest or normalized L² isometry. -/
structure AngularWindowCertificate (T : ℝ) (f : ℝ → ℂ) (F : Lp (α := ℝ) ℂ 2) where
  nonnegativeWindow : 0 ≤ T
  zeroOutside : ∀ u, u ∉ Set.Icc 0 T → f u = 0
  integrable : Integrable f
  l2Representative : (F : ℝ → ℂ) =ᵐ[volume] f
  angularSpectrum : ℝ → ℂ
  exactKernel : ∀ ξ, angularSpectrum ξ = ∫ u : ℝ,
    Complex.exp (-Complex.I * (ξ:ℂ) * (u:ℂ)) * f u
  angularParseval : ‖F‖^2 = (2*Real.pi)⁻¹ * ∫ ξ : ℝ, ‖angularSpectrum ξ‖^2

/-- A reconstruction certificate binds an actual error, rather than a calibration label. -/
structure ReconstructionCertificate (F G : Lp (α := ℝ) ℂ 2) where
  error : ℝ
  provedError : ‖F-G‖ ≤ error

/-- Cross-spectrum orientation: the first Hilbert-inner argument is conjugated. -/
def orderedCrossSpectrum (fm fn : ℝ → ℂ) (ξ : ℝ) : ℂ := fm ξ * star (fn ξ)

end GRWTSK.Analysis.Waveform
```
