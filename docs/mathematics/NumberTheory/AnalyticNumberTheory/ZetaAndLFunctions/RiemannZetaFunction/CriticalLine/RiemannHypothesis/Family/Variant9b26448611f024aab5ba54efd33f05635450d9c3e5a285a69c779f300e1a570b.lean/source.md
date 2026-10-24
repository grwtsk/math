# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Family.Variant9b26448611f024aab5ba54efd33f05635450d9c3e5a285a69c779f300e1a570b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a5fd33334e3ede49eea3c1d4c6b34cf9f2fdab1d` · SHA-256 `9b26448611f024aab5ba54efd33f05635450d9c3e5a285a69c779f300e1a570b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
Zeta23/XiPrime/QuarticWindow/Family.lean — the quartic window as an `AdmFamily` (the admissible-window-with-b≥1/2
bundle of Zeta23/XiPrime/PrimeSide/Concrete.lean), discharging the quartic P1 binder.
-/
import Zeta23.XiPrime.QuarticWindow.Moments
import Zeta23.XiPrime.PrimeSide.Concrete

noncomputable section

open Real Set Filter Topology

namespace Zeta23
namespace XiPrime

variable {P : Params}

/-- **the quartic window family is admissible with b ≥ 1/2, from T₀ on** (window written as P.phiV vQuartic T). -/
theorem admFamily_phiV_quartic (hP : P.Valid) : AdmFamily P (fun T => P.phiV vQuartic T) (cQ P.ϱ) := by
  obtain ⟨T₀, hT₀⟩ := eventually_atTop.mp (Params.eventually_w8 hP)
  exact ⟨T₀, fun T hT => ⟨admWindow_phiV_quartic hP (hT₀ T hT), bV_quartic_ge_half hP (hT₀ T hT)⟩⟩

/-- same, with the window written as the height-T window of the realizing parameters `P.atV vQuartic T`. -/
theorem admFamily_atV_quartic (hP : P.Valid) :
    AdmFamily P (fun T => (P.atV vQuartic T).phi T) (cQ P.ϱ) := by
  have e : (fun T => (P.atV vQuartic T).phi T) = fun T => P.phiV vQuartic T :=
    funext fun T => Params.atV_phi_valid T hP vQuartic_even
  rw [e]; exact admFamily_phiV_quartic hP

end XiPrime
end Zeta23

end
```
