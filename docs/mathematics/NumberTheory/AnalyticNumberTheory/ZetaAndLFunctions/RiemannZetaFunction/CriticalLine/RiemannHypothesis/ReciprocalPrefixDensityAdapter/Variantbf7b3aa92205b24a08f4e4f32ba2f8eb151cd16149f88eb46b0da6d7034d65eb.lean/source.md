# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ReciprocalPrefixDensityAdapter.Variantbf7b3aa92205b24a08f4e4f32ba2f8eb151cd16149f88eb46b0da6d7034d65eb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `55dc9c2621096200440e5d1420960b133039838f` · SHA-256 `bf7b3aa92205b24a08f4e4f32ba2f8eb151cd16149f88eb46b0da6d7034d65eb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.Moebius.ReciprocalPrefix
import GRWTSK.NumberTheory.FunctionFieldArithmetic.DensityReciprocalPrefix

/-!
# Adapter between the pickup and density reciprocal Möbius prefixes

The unweighted density prefix and the pickup prefix are the same closed finite
sum at natural cutoffs.  The similarly named `densityReciprocalPrefix` has
different, density-weighted coefficients and is deliberately not identified
with either of them.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Moebius.ReciprocalPrefixDensityAdapter

open GRWTSK.NumberTheory.Moebius.ReciprocalPrefix
open GRWTSK.NumberTheory.ArithmeticFunctions

/-- The two unweighted reciprocal-prefix definitions have exactly the same
source and the same closed cutoff at every natural endpoint. -/
theorem pickupReciprocalPrefix_eq_densityMobiusReciprocalPrefix (N : ℕ) :
    pickupReciprocalPrefix N = densityMobiusReciprocalPrefix (N : ℝ) := by
  simp [pickupReciprocalPrefix, densityMobiusReciprocalPrefix,
    GRWTSK.RiemannHypothesis.CCC.moebiusReal,
    GRWTSK.NumberTheory.ArithmeticFunctions.moebiusReal]

/-- The elementary all-real density theorem therefore gives the actual pickup
reciprocal prefix its unconditional sharp uniform bound.  This is boundedness,
not the decay premise required by the critical-boundary consumer. -/
theorem pickupReciprocalPrefix_abs_le_one (N : ℕ) :
    |pickupReciprocalPrefix N| ≤ 1 := by
  rw [pickupReciprocalPrefix_eq_densityMobiusReciprocalPrefix]
  exact mobius_reciprocal_prefix_all_real (N : ℝ)

end GRWTSK.NumberTheory.Moebius.ReciprocalPrefixDensityAdapter

#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefixDensityAdapter.pickupReciprocalPrefix_eq_densityMobiusReciprocalPrefix
#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefixDensityAdapter.pickupReciprocalPrefix_abs_le_one
```
