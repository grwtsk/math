# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.ZeroExclusions

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bec50d5cb82d43c6e815a59fe9c56a46756750c3` · SHA-256 `66068668639d226dd7cf6e1b739986c65420f5cd69406e35e9dfaff371c97cdb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the MIT license; see LICENSE.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Historical human/machine authoring split unknown. Upstream Lean and mathlib authors,
formalizations and licenses retain their identities.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.ZeroDefinitions
import Mathlib.Tactic.NormNum

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace GRWTSK.RiemannHypothesis

/-!
# Scope and sign counterexamples

These guards expose specific invalid inference schemas. No counterexample to RH
is asserted. Four symmetry maps need not give four distinct points on a zero orbit.
-/


/-- A genuine trivial zero is excluded from the exact RH domain. -/
theorem trivial_zero_is_excluded :
    riemannZeta (-2) = 0 ∧ ¬ NontrivialZetaZero (-2) := by
  constructor
  · simpa using riemannZeta_neg_two_mul_nat_add_one 0
  · intro h
    exact h.2.1 ⟨0, by norm_num⟩



/-- The pole exclusion remains explicit even in a total-function formalization of zeta. -/
theorem pole_is_excluded : ¬ NontrivialZetaZero 1 := by
  intro h
  exact h.2.2 rfl



end GRWTSK.RiemannHypothesis
```
