# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RvMChiDefs.Variant6df91d98553fbf7a174a7bde8670e83293b4c8a35887f4036329b25ea4110865

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `779bda1ffe67ea937e705b465d9a69f400a48d0d` · SHA-256 `6df91d98553fbf7a174a7bde8670e83293b4c8a35887f4036329b25ea4110865`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
Zeta23/ThmE/RvMChiDefs.lean — shared vocabulary for the H-RvM(χ) contour argument.
The half-contour itself is function-agnostic: reuse Zeta23.RvM.halfContour.
-/
import Zeta23.ThmE.Statement
import Zeta23.RvM.Defs

noncomputable section

namespace Zeta23
namespace ThmE

variable {q : ℕ} [NeZero q]

/-- T is a zero-free ordinate for L(·,χ). -/
def GoodHeightL (χ : DirichletCharacter ℂ q) (T : ℝ) : Prop :=
  ∀ ρ : ℂ, IsNontrivialZeroL χ ρ → ρ.im ≠ T

end ThmE
end Zeta23
```
