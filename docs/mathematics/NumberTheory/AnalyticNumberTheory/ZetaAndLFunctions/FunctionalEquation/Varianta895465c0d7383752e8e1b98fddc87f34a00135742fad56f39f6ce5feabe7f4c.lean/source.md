# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.FunctionalEquation.Varianta895465c0d7383752e8e1b98fddc87f34a00135742fad56f39f6ce5feabe7f4c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2fd6bc39f559bfa36b44156003e645d7dccd1f3b` · SHA-256 `a895465c0d7383752e8e1b98fddc87f34a00135742fad56f39f6ce5feabe7f4c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification
public import Surface.Core.DirichletGRH.Character
import Mathlib.Tactic

/-!
# Primitive functional-equation square

For a general complex Dirichlet character the mathlib functional equation
passes through the inverse character.  This module therefore makes the
same-character conjugation bridge explicit instead of pretending that every
primitive character is self-dual.

The structure stores a completed function, its exact functional equation,
and its zero correspondence with the original `L`-function in the open
critical strip.  It contains no GRH or zero-free field.
-/

public section

namespace Surface.Core.DirichletGRH

noncomputable section

open Complex

/-- Reflection across the critical line, including complex conjugation. -/
@[expose]
def criticalReflection (s : ℂ) : ℂ :=
  1 - star s

@[surface_novel, surface_published, simp]
theorem criticalReflection_re (s : ℂ) :
    (criticalReflection s).re = 1 - s.re := by
  simp [criticalReflection]

/-- Explicit functional-equation data for one primitive-character channel.

`functionalEquation` is the same-character form obtained after the required
conjugation compatibility has been proved.  For a non-real character that
compatibility is substantive: mathlib's primitive functional equation first
relates `χ` to `χ⁻¹`.
-/
structure PrimitiveFunctionalEquationSquare
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) where
  parity : Fin 2
  rootNumber : ℂ
  rootNumber_ne_zero : rootNumber ≠ 0
  completedL : ℂ → ℂ

  completedL_zero_iff_LFunction_zero :
    ∀ s : ℂ, 0 < s.re → s.re < 1 →
      (completedL s = 0 ↔ DirichletCharacter.LFunction χ s = 0)

  functionalEquation :
    ∀ s : ℂ,
      completedL s =
        rootNumber * star (completedL (criticalReflection s))

/-- The functional equation reflects every left-half critical-strip zero to
a right-half zero of the same character. -/
@[surface_novel, surface_published]
theorem PrimitiveFunctionalEquationSquare.reflects_zero
    {q : ℕ} [NeZero q] {χ : DirichletCharacter ℂ q}
    (square : PrimitiveFunctionalEquationSquare χ)
    {s : ℂ} (hs0 : 0 < s.re) (hsHalf : s.re < (1 / 2 : ℝ))
    (hsZero : DirichletCharacter.LFunction χ s = 0) :
    DirichletCharacter.LFunction χ (criticalReflection s) = 0 := by
  have hs1 : s.re < 1 := by linarith
  have hCompleted : square.completedL s = 0 :=
    (square.completedL_zero_iff_LFunction_zero s hs0 hs1).2 hsZero
  have hProduct :
      square.rootNumber *
          star (square.completedL (criticalReflection s)) = 0 := by
    rw [← square.functionalEquation s, hCompleted]
  have hConj : star (square.completedL (criticalReflection s)) = 0 :=
    (mul_eq_zero.mp hProduct).resolve_left square.rootNumber_ne_zero
  have hReflectedCompleted :
      square.completedL (criticalReflection s) = 0 := by
    have := congrArg (starRingEnd ℂ) hConj
    simpa using this
  have href0 : 0 < (criticalReflection s).re := by
    rw [criticalReflection_re]
    linarith
  have href1 : (criticalReflection s).re < 1 := by
    rw [criticalReflection_re]
    linarith
  exact (square.completedL_zero_iff_LFunction_zero
    (criticalReflection s) href0 href1).1 hReflectedCompleted

end

end Surface.Core.DirichletGRH
```
