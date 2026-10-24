# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.DyadicGreenGramFormControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7d4bb847ff1f9072229323bdece3ebf66ba55221` · SHA-256 `d03b2ee0fdce7b9ff57e63e969713dccf8b32a8da7c8ec5ddd40339e1984d09f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenGramForm
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicGreenGramFormControls

open GRWTSK.RiemannHypothesis
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

theorem exact_full_form_is_augmented_energy
    {X : ℕ} (hX : 0 < X) :
    fullFiniteGreenSourceQuadratic X = augmentedEnergy X :=
  fullFiniteGreenSourceQuadratic_eq_augmentedEnergy hX

theorem full_source_dimension_grows_with_window
    (X : ℕ) :
    fullFiniteGreenSourceCoordinateCount X = X + 3 :=
  fullFiniteGreenSourceCoordinateCount_eq X

end GRWTSK.RiemannHypothesis.Checks.DyadicGreenGramFormControls
```
