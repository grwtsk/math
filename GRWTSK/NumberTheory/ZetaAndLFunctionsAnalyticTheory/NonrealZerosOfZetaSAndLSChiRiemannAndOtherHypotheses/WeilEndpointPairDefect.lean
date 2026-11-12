/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib retains its upstream authorship and Apache-2.0 license. -/
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
# Algebra of the actual two-endpoint reflection-pair defect

Consumer: WEPD-v1-1 and WEPD-v1-2 in `WeilEndpointPairDefect.md`.
For complex a = x + I*y and b = u + I*v, a same-character reflected
zero pair has diagonal 2*m*Re(a*b) and offdiagonal
m*exp(I*tau*L)*(a^2 + conjugate(b)^2). Its determinant is
-m^2*(normSq a - normSq b)^2. The declarations below give its real
coordinate algebra, strict determinant sign when the norms differ, and
the resonant real negative direction.

The strict difference of the norms for every off-line pair is proved by
hyperbolic monotonicity in the adjacent written argument, not assumed as
an established Lean source theorem here. This file does not formalize the
whole complex matrix, actual zero multiplicities, infinite Weil sum or tail.
Individual provenance is in `WeilEndpointPairDefect.provenance/`.

An indefinite summand does not make the entire arithmetic form indefinite.
No actual off-line zero, RH/GRH proof or arithmetic positivity is asserted.
The algebra has no external seven-eighths theorem as a dependency.

Status: SOURCE_PROOF_CANDIDATE. Elaboration, dependency build, fresh kernel
replay, transitive axiom audit and independent analytical review: NOT_RUN.
Originality: UNASSESSED. Written proofs are separate from formal execution.
Inspected main: 26e55b7937c2e4d6e92533903e263440b35990e0.
Lean: leanprover/lean4:v4.34.1.
Mathlib: d13f23b723b8a846827a245b89c10fc7d3f11612.
Coordination: grwtsk/math#1801, scope comment 6829734479.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilEndpointPairDefect

/-- Exact gap between the squared offdiagonal magnitude and squared diagonal,
in real coordinates. No zero-location or positivity hypothesis is needed. -/
theorem pair_gap_identity (x y u v : ℝ) :
    (x ^ 2 - y ^ 2 + u ^ 2 - v ^ 2) ^ 2
        + (2 * x * y - 2 * u * v) ^ 2
        - (2 * (x * u - y * v)) ^ 2 =
      (x ^ 2 + y ^ 2 - u ^ 2 - v ^ 2) ^ 2 := by
  ring

/-- A strict norm imbalance gives a strictly negative pair determinant.
The analytic derivation of this imbalance for the endpoint transforms is
written in WEPD-v1-1; it is not concealed in a source-positivity assumption. -/
theorem pair_determinant_neg_of_unequal_norms (x y u v : ℝ)
    (h : x ^ 2 + y ^ 2 - u ^ 2 - v ^ 2 ≠ 0) :
    (2 * (x * u - y * v)) ^ 2
        - (x ^ 2 - y ^ 2 + u ^ 2 - v ^ 2) ^ 2
        - (2 * x * y - 2 * u * v) ^ 2 < 0 := by
  have hsq : 0 < (x ^ 2 + y ^ 2 - u ^ 2 - v ^ 2) ^ 2 :=
    sq_pos_of_ne_zero h
  have hgap := pair_gap_identity x y u v
  nlinarith

/-- At resonant height the endpoint difference has value -2*(x-y)^2.
This is a pair contribution, not the value of the full arithmetic form. -/
theorem real_resonance_negative_direction (x y : ℝ) (h : x ≠ y) :
    2 * (2 * x * y - (x ^ 2 + y ^ 2)) < 0 := by
  have hsq : 0 < (x - y) ^ 2 := sq_pos_of_ne_zero (sub_ne_zero.mpr h)
  nlinarith

end GRWTSK.NumberTheory.WeilEndpointPairDefect
