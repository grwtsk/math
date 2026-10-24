# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Character.Variant91cf828f09071c016620bb8df39f13942a4ac4eb6a77014018320528f82dbdda

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7e8d34c9bfe051ca33d76c301d033b9405088dca` · SHA-256 `91cf828f09071c016620bb8df39f13942a4ac4eb6a77014018320528f82dbdda`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification
public import Mathlib.NumberTheory.LSeries.DirichletContinuation

/-!
# Character-local Dirichlet GRH

This file introduces only the exact zero-location proposition for one
complex Dirichlet character.  Mathlib's analytically continued
`DirichletCharacter.LFunction` requires a nonzero modulus, so that
requirement is explicit in the typeclass boundary.

Primitivity is deliberately not bundled into the definition: it is a
hypothesis at the family and functional-equation boundaries.  In
particular, this module constructs no inhabitant of the GRH proposition.
-/

public section

namespace Surface.Core.DirichletGRH

noncomputable section

/-- GRH for the analytic continuation of one Dirichlet character.  The
name records the intended use at primitive characters; primitivity itself
is supplied separately wherever the functional equation is invoked. -/
@[expose]
def GRHForPrimitiveCharacter
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q) : Prop :=
  ∀ s : ℂ,
    DirichletCharacter.LFunction chi s = 0 →
    0 < s.re →
    s.re < 1 →
    s.re = (1 / 2 : ℝ)

/-- The open critical-strip zero predicate used by the GRH statement. -/
@[expose]
def IsCriticalStripZero
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q) (s : ℂ) : Prop :=
  DirichletCharacter.LFunction chi s = 0 ∧ 0 < s.re ∧ s.re < 1

@[surface_novel, surface_published]
theorem grhForPrimitiveCharacter_iff_criticalStripZeros
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q) :
    GRHForPrimitiveCharacter chi ↔
      ∀ s : ℂ, IsCriticalStripZero chi s → s.re = (1 / 2 : ℝ) := by
  constructor
  · intro h s hs
    exact h s hs.1 hs.2.1 hs.2.2
  · intro h s hs h0 h1
    exact h s ⟨hs, h0, h1⟩

end

end Surface.Core.DirichletGRH

```
