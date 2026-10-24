# Complete source: GRWTSK.Analysis.ComplexAnalysis.ReflectionCounterexamples

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c3186ca32d4cb0a494bc9e06fd70221e32a0ed11` · SHA-256 `40bf51f94dbb56983c64d5f1c4ba59305bf0046cf98ecd249bfd5a3a10dad54a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the MIT license; see LICENSE.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Historical human/machine authoring split unknown. Upstream Lean and mathlib authors,
formalizations and licenses retain their identities.
-/
import GRWTSK.Analysis.ComplexAnalysis.CriticalReflection
import Mathlib.Tactic.NormNum

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace GRWTSK.RiemannHypothesis

/-!
# Scope and sign counterexamples

These guards expose specific invalid inference schemas. No counterexample to RH
is asserted. Four symmetry maps need not give four distinct points on a zero orbit.
-/


/-- The critical-line reflection is not complex multiplication by `i`. -/
theorem critical_reflection_is_not_gaussian_rotation :
    criticalReflection (criticalReflection 1) = 1 ∧
      Complex.I * (Complex.I * 1) ≠ (1 : ℂ) := by
  constructor
  · exact critical_reflection_involutive _
  · norm_num



end GRWTSK.RiemannHypothesis
```
