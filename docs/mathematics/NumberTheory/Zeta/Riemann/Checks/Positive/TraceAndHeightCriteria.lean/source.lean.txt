import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticTraceCriterion
import GRWTSK.NumberTheory.Zeta.Riemann.BoundedHeightCriterion
import GRWTSK.NumberTheory.Zeta.Riemann.ZeroOrbitQuartic

open GRWTSK.NumberTheory.Zeta.Riemann
open GRWTSK.RiemannHypothesis
open GRWTSK.Polynomial.ConjugateQuartic

example (s : ℂ) : NontrivialZetaZero s ↔
    (riemannZeta s = 0 ∧ (¬ ∃ n : ℕ, s = -2 * (n + 1)) ∧ s ≠ 1) := Iff.rfl
example : _root_.RiemannHypothesis ↔
    ∀ s : ℂ, NontrivialZetaZero s → 0 ≤ witnessTrace (s.re - 1 / 2) s.im :=
  riemannHypothesis_iff_quadraticTraceNonnegative
example : _root_.RiemannHypothesis ↔ ∀ N : ℕ,
    ∀ s : ℂ, NontrivialZetaZero s → |s.im| ≤ N → s.re = 1 / 2 :=
  riemannHypothesis_iff_all_heights
example (scheme : HeightScheme) : _root_.RiemannHypothesis := scheme.riemannHypothesis
example : _root_.RiemannHypothesis ↔
    ∀ N m : ℕ, ∀ s : ℂ, NontrivialZetaZero s → s ∉ OffLineRectangle N m :=
  riemannHypothesis_iff_rectangle_exclusion
example (s : ℂ) : roots (s.re - 1 / 2) s.im =
    [zeroCoordinate (criticalReflection s), zeroCoordinate s,
     zeroCoordinate (zeroReflect s), zeroCoordinate (zeroConjugate s)] :=
  roots_eq_zero_coordinates s
