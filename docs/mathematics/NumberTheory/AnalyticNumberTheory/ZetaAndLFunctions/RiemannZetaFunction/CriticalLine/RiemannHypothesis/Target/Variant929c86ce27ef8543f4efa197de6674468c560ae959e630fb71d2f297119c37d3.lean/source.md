# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Target.Variant929c86ce27ef8543f4efa197de6674468c560ae959e630fb71d2f297119c37d3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2d5543aacf54dae9fd96299c3c3ff626dcf13656` · SHA-256 `929c86ce27ef8543f4efa197de6674468c560ae959e630fb71d2f297119c37d3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.RH.AnalyticBase
import Folder.RH.ProofStatus

/-!
# Folder.RH.Target

Radiation role: specification
BinaryMatrix spine: This module fixes the classical RH statement shape.
Ontology: rh.target
Pivot role: spectral
Zero typology: zeta
Contract boundary: exact-target
Composite stack role: rh
-/

namespace Folder
namespace RH

noncomputable section

/--
The fixed nontriviality condition used by the narrow RH target.

For the hardened route this is the open critical strip. It is part of the
target definition, not a caller-supplied field.
-/
def NontrivialZetaZeroCondition (ρ : ℂ) : Prop :=
  0 < ρ.re ∧ ρ.re < 1

def ZetaNontrivialZero (ρ : ℂ) : Prop :=
  CompletedZeta ρ = 0 ∧ 0 < ρ.re ∧ ρ.re < 1

/--
The classical Riemann Hypothesis target, definitionally fixed.

This module does not prove the proposition.
-/
def RiemannHypothesis : Prop :=
  ∀ ρ : ℂ, ZetaNontrivialZero ρ → ρ.re = (1 / 2 : ℝ)

/--
Target package for generated exposition. The conclusion is not a field to be
chosen by a caller; it is definitionally `RiemannHypothesis`.
-/
structure ClassicalRHTarget where
  statementLabel : String
  sourceLabel : String

theorem riemann_hypothesis_statement_is_fixed
    (_T : ClassicalRHTarget) :
    RiemannHypothesis = RiemannHypothesis :=
  rfl

theorem zeta_nontrivial_zero_has_zero_statement
    {ρ : ℂ}
    (Z : ZetaNontrivialZero ρ) :
    CompletedZeta ρ = 0 :=
  Z.1

theorem zeta_nontrivial_zero_has_nontrivial_statement
    {ρ : ℂ}
    (Z : ZetaNontrivialZero ρ) :
    NontrivialZetaZeroCondition ρ :=
  Z.2

end

end RH
end Folder
```
