# Complete source: GRWTSK.NumberTheory.Farey.ResolvableQuinticEndpointControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `28d8456db1dc7c6243b51275b8216e3f1ff89c71` · SHA-256 `b31ffb19cfa74da83a85652a7986984cc295b831de822fc8c1deb7d86dc158c0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
This standalone module is intentionally absent from GRWTSK.lean until
warning-clean Lean elaboration, fresh kernel replay and a transitive axiom
audit are recorded at an immutable source revision. No root-existence or
Farey-completeness theorem is claimed.
-/
import GRWTSK.NumberTheory.Farey.ResolvableQuintic

/-!
# Endpoint-only polynomial certificates: a sharp scope obstruction

The forward implication for a polynomial sign certificate only needs
nonnegativity of the multiplying factor at the two Farey endpoints.
The reverse implication requires strict positivity at both endpoints.

Even strict endpoint positivity does *not* justify transferring the entire
rational zero set: the factor may acquire a zero in the interior. An exact
rational example below exhibits this loss. This file does not imply the
existence of a rational root from oriented endpoint signs alone.
-/

set_option autoImplicit false

noncomputable section

namespace GRWTSK.NumberTheory.Farey

open Polynomial

/-- The forward direction of endpoint-sign preservation only needs
nonnegativity of the factor at the two selected rational endpoints. -/
theorem polynomialResolves_mul_of_nonneg_at_endpoints
    (q c : Polynomial ℚ) (I : Cell)
    (hleft : 0 ≤ q.eval I.left) (hright : 0 ≤ q.eval I.right)
    (h : PolynomialResolves c I) :
    PolynomialResolves (q * c) I := by
  change (q * c).eval I.left ≤ 0 ∧ 0 ≤ (q * c).eval I.right
  constructor
  · rw [Polynomial.eval_mul]
    exact mul_nonpos_of_nonneg_of_nonpos hleft h.1
  · rw [Polynomial.eval_mul]
    exact mul_nonneg hright h.2

/-- The canonical determinant-one Farey interval from zero to one. -/
private def endpointWitnessCell : Cell where
  leftNum := 0
  leftDen := 1
  rightNum := 1
  rightDen := 1
  leftDen_pos := by decide
  rightDen_pos := by decide
  unimodular := by decide

/-- This quadratic is positive at both endpoints, but has rational
interior zeros at 1/4 and 3/4. -/
private def endpointWitnessFactor : Polynomial ℚ :=
  X ^ 2 - X + C (3 / 16 : ℚ)

/-- The linear polynomial is negative on the left and positive on the right. -/
private def endpointWitnessLinear : Polynomial ℚ :=
  X - C (1 / 2 : ℚ)

private theorem endpointWitnessFactor_positive :
    0 < endpointWitnessFactor.eval endpointWitnessCell.left ∧
      0 < endpointWitnessFactor.eval endpointWitnessCell.right := by
  constructor
  · norm_num [endpointWitnessCell, Cell.left, endpointWitnessFactor,
      Polynomial.eval_add, Polynomial.eval_sub]
  · norm_num [endpointWitnessCell, Cell.right, endpointWitnessFactor,
      Polynomial.eval_add, Polynomial.eval_sub]

private theorem endpointWitnessLinear_resolves :
    PolynomialResolves endpointWitnessLinear endpointWitnessCell := by
  change endpointWitnessLinear.eval endpointWitnessCell.left ≤ 0 ∧
    0 ≤ endpointWitnessLinear.eval endpointWitnessCell.right
  constructor
  · norm_num [endpointWitnessLinear, endpointWitnessCell, Cell.left,
      Polynomial.eval_sub]
  · norm_num [endpointWitnessLinear, endpointWitnessCell, Cell.right,
      Polynomial.eval_sub]

private theorem endpointWitnessProduct_resolves :
    PolynomialResolves (endpointWitnessFactor * endpointWitnessLinear)
      endpointWitnessCell :=
  (polynomialResolves_mul_iff_of_pos_at_endpoints
    endpointWitnessFactor endpointWitnessLinear endpointWitnessCell
    endpointWitnessFactor_positive.1 endpointWitnessFactor_positive.2).2
    endpointWitnessLinear_resolves

private theorem endpointWitness_extra_root :
    (endpointWitnessFactor * endpointWitnessLinear).eval (1 / 4 : ℚ) = 0 ∧
      endpointWitnessLinear.eval (1 / 4 : ℚ) ≠ 0 := by
  have hq : endpointWitnessFactor.eval (1 / 4 : ℚ) = 0 := by
    norm_num [endpointWitnessFactor, Polynomial.eval_add, Polynomial.eval_sub]
  constructor
  · rw [Polynomial.eval_mul, hq]
    simp
  · norm_num [endpointWitnessLinear, Polynomial.eval_sub]

/-- **Exact hostile witness.** Strict positivity of a factor at both
Farey endpoints preserves the oriented certificate, but does not imply
equality of rational zero sets. At x=1/4 the product vanishes while the
linear polynomial is nonzero. -/
theorem exists_endpoint_positive_factor_with_extra_rational_root :
    ∃ (q c : Polynomial ℚ) (I : Cell) (x : ℚ),
      0 < q.eval I.left ∧ 0 < q.eval I.right ∧
      PolynomialResolves c I ∧ PolynomialResolves (q * c) I ∧
      (q * c).eval x = 0 ∧ c.eval x ≠ 0 := by
  refine ⟨endpointWitnessFactor, endpointWitnessLinear,
    endpointWitnessCell, (1 / 4 : ℚ), ?_, ?_, ?_, ?_, ?_, ?_⟩
  · exact endpointWitnessFactor_positive.1
  · exact endpointWitnessFactor_positive.2
  · exact endpointWitnessLinear_resolves
  · exact endpointWitnessProduct_resolves
  · exact endpointWitness_extra_root.1
  · exact endpointWitness_extra_root.2

end GRWTSK.NumberTheory.Farey
```
