/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI. Source-only regression statements. -/
import GRWTSK.NumberTheory.Zeta.Riemann.WeilPolarization

set_option autoImplicit false

/-! A fixture-independent Weil target. Passing this target does not cover the
separately required atlas, root fixture, Mellin or finite-power targets. -/

namespace GRWTSK.RiemannHypothesis.Checks.WeilCore

open Filter
open scoped Topology

variable {T : Type*} [AddCommGroup T] [Module ℂ T]
variable {space : WeilTestSpace T} {form : WeilHermitianForm space} {H : ℕ → Type*}
variable [∀ n, NormedAddCommGroup (H n)] [∀ n, InnerProductSpace ℂ (H n)]

example (c : WeilPositivityIffRH form) : c.toForward.source = c.source := rfl
example (c : WeilPositivityIffRH form) : c.toReverse.source = c.source := rfl

example (c : WeilPositivityImpliesRH form) :
    c.source.binding = space.binding := c.source_binding_eq

example (limit : DiagonalPositiveGramLimit form H) :
    limit.toPolarized.toDiagonal = limit := limit.toPolarized_toDiagonal

example (limit : PolarizedPositiveGramLimit form H) :
    limit.toDiagonal.toPolarized = limit := limit.toDiagonal_toPolarized

example (limit : DiagonalPositiveGramLimit form H) :
    limit.toPolarized.family = limit.family := rfl

example (bound : DiagonalErrorBound form H) :
    bound.toPolarized.family = bound.family := rfl

example (limit : DiagonalPositiveGramLimit form H) (f g : space.Vector) :
    Tendsto (fun n => limit.family.gram n f g) atTop (𝓝 (form.toFun f g)) :=
  limit.tendsto_polarized f g

-- No exact criterion is constructed by reducing the import closure.
example (limit : DiagonalPositiveGramLimit form H)
    (criterion : WeilPositivityImpliesRH form) : _root_.RiemannHypothesis :=
  limit.riemannHypothesis criterion

end GRWTSK.RiemannHypothesis.Checks.WeilCore
