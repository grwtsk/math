# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Determinant.Variant10d2e814904cdac694f31c9622e2236c82d6b93716f1c341ae86764a71665b77

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ec9c7f076b909d1ec8ba4edf7d03ca7caa53c923` · SHA-256 `10d2e814904cdac694f31c9622e2236c82d6b93716f1c341ae86764a71665b77`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
  spectral-rh/Spectral/Zeta/Determinant.lean
  -----------------------------------------
  ζ-regularised Fredholm determinant for the shifted Schrödinger operator
        L(γ) := L − (¼ + γ²) • Id,
  plus the fundamental vanishing criterion
        detShift(γ) = 0  ↔  (¼ + γ²) ∈ σ(L).
-/

import spectral_rh.Spectral.Zeta.Regularization
import spectral_rh.Ext.FredholmDetShift
import Mathlib.Analysis.InnerProductSpace.Spectrum
import Mathlib.Analysis.Fredholm

open Complex Real
open Fredholm.Determinant  -- brings `shift` / `shift_zero_iff` into scope
open scoped BigOperators

namespace SpectralDet

variable {P : Schrodinger.Potential}

local notation "E" => Schrodinger.L²(ℝ≥0)
local notation "L" => (Schrodinger.L P)

/-!  ## 1.  Shifted operator  L(γ)                                             -/

/-- `Lshift γ = L − (¼+γ²) · Id`.  (A bounded operator on the common domain.) -/
noncomputable
def Lshift (γ : ℂ) : E →L[ℂ] E :=
  (L : E →L[ℂ] E) - ((1 / 4 : ℂ) + γ ^ 2) • ContinuousLinearMap.id ℂ E

/-!  ## 2.  ζ-regularised Fredholm determinant of the shift                    -/

/--
Fredholm determinant
\[
  D(γ) \;=\;\det\nolimits_F\!\bigl(L - (\tfrac14 + γ^{2})\,\mathrm{Id}\bigr).
\]
-/
noncomputable
def detShift (γ : ℂ) : ℂ :=
  shift (T := (L : E →L[ℂ] E))
        (Schrodinger.L_compactResolvent P)
        ((1 / 4 : ℂ) + γ ^ 2)

/-!  ## 3.  Vanishing criterion                                                -/

/--
`detShift γ = 0` **iff** `¼ + γ²` lies in the spectrum of `L`.

This is the analytic heart of grwtsk contributors’ RH reformulation.
-/
lemma detShift_zero_iff (γ : ℂ) :
    detShift (P := P) γ = 0 ↔
      ((1 / 4 : ℂ) + γ ^ 2) ∈ spectrum ℂ (L : E →L[ℂ] E) := by
  simpa using
    shift_zero_iff
      (T     := (L : E →L[ℂ] E))
      (hComp := Schrodinger.L_compactResolvent P)
      ((1 / 4 : ℂ) + γ ^ 2)

end SpectralDet
```
