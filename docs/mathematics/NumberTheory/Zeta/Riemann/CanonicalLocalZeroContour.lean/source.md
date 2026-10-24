# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalLocalZeroContour

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f3743e01022b7680e5f779490ae148d3ce5d1d53` · SHA-256 `224a1fc143a1c76ea946f974777e8dffc25777dd12a64fb96221109c99de23ce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.IsolatedFiniteOrderContour
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonContour
import GRWTSK.NumberTheory.Zeta.Riemann.ReflectionMultiplicityBudget

set_option autoImplicit false

/-!
# Canonical multiplicity in the local zeta contour and reflection interfaces

The generic local statements use the repository's ACTUAL analytic multiplicity,
not a caller-assigned residue. They require a pole-free analytic disk, an actual
root strictly inside, and isolation of its complex location; they do NOT require
zeta'(root) != 0. Exactly centered isolation still gives critical-line equality,
while the normalized contour is the full positive multiplicity, possibly >1.

The concrete compatibility theorem uses the ORIGINAL open SourceAcceptance and
its already established simple-root contour value to identify that SAME local
witness's canonical multiplicity with one. It does not prove universal simplicity
or turn the Newton certificate into a multiple-root supplier. No source fields,
errors, radii, schedules, source predicates or previous theorems are changed.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED / SOURCE_ACCEPTANCE_OPEN (concrete case).
-/

namespace GRWTSK.RiemannHypothesis.CanonicalLocalZeroContour

open Set Metric
open GRWTSK.Analysis.Complex.IsolatedFiniteOrderContour
open GRWTSK.NumberTheory.Zeta.Riemann.CriticalReflectionIsolation
open GRWTSK.Analysis.Complex.RationalRoundedArithmetic
open CanonicalZeroDivisor

noncomputable section

/-- The integer residue is derived from the actual zeta germ, not an external metadata weight. -/
theorem circleIntegral_eq_canonical_multiplicity (root : ZeroPoint) (c : ℂ) (r : ℝ)
    (analytic : AnalyticOnNhd ℂ riemannZeta (closedBall c r))
    (inside : root.1 ∈ ball c r)
    (isolated : ∀ w ∈ closedBall c r, riemannZeta w = 0 → w = root.1) :
    CircleIntegrable (fun w => deriv riemannZeta w / riemannZeta w) c r ∧
      (∮ w in C(c, r), deriv riemannZeta w / riemannZeta w) =
        (multiplicity root : ℂ) * (2 * (Real.pi : ℂ) * Complex.I) := by
  exact log_derivative_circleIntegral_of_order riemannZeta c root.1 r (multiplicity root)
    (multiplicity_pos root) analytic inside root.2.1 (multiplicity_cast root).symm
    (fun w hw different zero => different (isolated w hw zero))

/-- The normalization is exact and counts multiplicity, not only distinct locations. -/
theorem normalized_index_eq_multiplicity (root : ZeroPoint) (c : ℂ) (r : ℝ)
    (analytic : AnalyticOnNhd ℂ riemannZeta (closedBall c r))
    (inside : root.1 ∈ ball c r)
    (isolated : ∀ w ∈ closedBall c r, riemannZeta w = 0 → w = root.1) :
    (2 * (Real.pi : ℂ) * Complex.I)⁻¹ *
      (∮ w in C(c, r), deriv riemannZeta w / riemannZeta w) = (multiplicity root : ℂ) := by
  rw [(circleIntegral_eq_canonical_multiplicity root c r analytic inside isolated).2]
  have nonzero : 2 * (Real.pi : ℂ) * Complex.I ≠ 0 := by
    simp [Real.pi_ne_zero, Complex.I_ne_zero]
  calc
    _ = (multiplicity root : ℂ) *
        ((2 * (Real.pi : ℂ) * Complex.I)⁻¹ * (2 * (Real.pi : ℂ) * Complex.I)) := by ring
    _ = (multiplicity root : ℂ) := by rw [inv_mul_cancel₀ nonzero, mul_one]

/-- Removing only residue one is unjustified when the actual multiplicity is larger. -/
theorem regular_extension_with_canonical_residue (root : ZeroPoint) (c : ℂ) (r : ℝ)
    (analytic : AnalyticOnNhd ℂ riemannZeta (closedBall c r))
    (inside : root.1 ∈ ball c r)
    (isolated : ∀ w ∈ closedBall c r, riemannZeta w = 0 → w = root.1) :
    ∃ H : ℂ → ℂ, AnalyticOnNhd ℂ H (closedBall c r) ∧
      ∀ w ∈ closedBall c r, w ≠ root.1 →
        H w = deriv riemannZeta w / riemannZeta w - (multiplicity root : ℂ) / (w - root.1) := by
  exact exists_regular_extension riemannZeta root.1 (multiplicity root) (closedBall c r)
    (multiplicity_pos root) analytic (ball_subset_closedBall inside) root.2.1
    (multiplicity_cast root).symm (fun w hw different zero => different (isolated w hw zero))

/-- Exact line equality and multiplicity-weighted index coexist without a simplicity assumption.
The reflection-stable isolation premise is independent and is NOT supplied by this theorem. -/
theorem centered_isolated_zero_geometry (root : ZeroPoint) (c : ℂ) (r : ℝ)
    (centerOnLine : c.re = 1 / 2)
    (analytic : AnalyticOnNhd ℂ riemannZeta (closedBall c r))
    (inside : root.1 ∈ ball c r)
    (isolated : ∀ w ∈ closedBall c r, riemannZeta w = 0 → w = root.1) :
    root.1.re = 1 / 2 ∧
      (2 * (Real.pi : ℂ) * Complex.I)⁻¹ *
        (∮ w in C(c, r), deriv riemannZeta w / riemannZeta w) = (multiplicity root : ℂ) := by
  exact ⟨critical_line_of_centered_unique_zero c root.1 r centerOnLine root.2
    (ball_subset_closedBall inside) isolated,
    normalized_index_eq_multiplicity root c r analytic inside isolated⟩

/-- Bind this isolated disk to the EXISTING complete height-filtered region head.
The cutoff must include the actual root, and isolation still supplies completeness. -/
theorem isolated_regionHead_eq_singleton (root : ZeroPoint) (c : ℂ) (r T : ℝ)
    (member : root.1 ∈ closedBall c r) (heightBound : height root ≤ T)
    (isolated : ∀ w ∈ closedBall c r, riemannZeta w = 0 → w = root.1) :
    ReflectionMultiplicityBudget.regionHead T (closedBall c r) = {root} := by
  classical
  ext z
  constructor
  · intro hz
    have location := (ReflectionMultiplicityBudget.mem_regionHead T (closedBall c r) z).mp hz
    have same : z = root := Subtype.ext (isolated z.1 location.2 z.2.1)
    exact Finset.mem_singleton.mpr same
  · intro hz
    have same : z = root := Finset.mem_singleton.mp hz
    subst z
    exact (ReflectionMultiplicityBudget.mem_regionHead T (closedBall c r) root).mpr
      ⟨heightBound, member⟩

/-- This is the existing canonical regional mass, not a second local counting convention. -/
theorem isolated_regionCount_eq_multiplicity (root : ZeroPoint) (c : ℂ) (r T : ℝ)
    (member : root.1 ∈ closedBall c r) (heightBound : height root ≤ T)
    (isolated : ∀ w ∈ closedBall c r, riemannZeta w = 0 → w = root.1) :
    ReflectionMultiplicityBudget.regionCount T (closedBall c r) = multiplicity root := by
  classical
  have head := isolated_regionHead_eq_singleton root c r T member heightBound isolated
  simp [ReflectionMultiplicityBudget.regionCount, head,
    GRWTSK.Combinatorics.WeightedPairBudget.mass]

/-- Exact local contour-to-count binding. This uses isolation and is NOT an
independent count certificate that can be used circularly to establish that isolation. -/
theorem normalized_index_eq_regionCount (root : ZeroPoint) (c : ℂ) (r T : ℝ)
    (analytic : AnalyticOnNhd ℂ riemannZeta (closedBall c r))
    (inside : root.1 ∈ ball c r) (heightBound : height root ≤ T)
    (isolated : ∀ w ∈ closedBall c r, riemannZeta w = 0 → w = root.1) :
    (2 * (Real.pi : ℂ) * Complex.I)⁻¹ *
      (∮ w in C(c, r), deriv riemannZeta w / riemannZeta w) =
        (ReflectionMultiplicityBudget.regionCount T (closedBall c r) : ℂ) := by
  rw [isolated_regionCount_eq_multiplicity root c r T
    (ball_subset_closedBall inside) heightBound isolated]
  exact normalized_index_eq_multiplicity root c r analytic inside isolated

/-- Bind the concrete contour's one to the canonical divisor weight of the SAME witness.
The original SourceAcceptance is still required and is not discharged here. -/
theorem concrete_root_multiplicity_one (hsource : ConcreteNewtonPacket.SourceAcceptance)
    (root : ZeroPoint)
    (located : ‖root.1 - QComplex.embed ConcreteNewtonPacket.center‖ <
      (ConcreteNewtonLocalization.innerRadius : ℝ)) : multiplicity root = 1 := by
  have isolated : ∀ w ∈ closedBall (QComplex.embed ConcreteNewtonPacket.center)
      (ConcreteNewtonPacket.newtonRadius : ℝ), riemannZeta w = 0 → w = root.1 := by
    intro w hw zero
    by_contra different
    exact (ConcreteNewtonContour.outer_nonzero_away hsource root located w hw different) zero
  have canonical := normalized_index_eq_multiplicity root (QComplex.embed ConcreteNewtonPacket.center)
    (ConcreteNewtonPacket.newtonRadius : ℝ) ConcreteNewtonBoundary.outer_analytic
    (ConcreteNewtonContour.inner_root_in_outer_ball root located) isolated
  have equality : (multiplicity root : ℂ) = 1 :=
    canonical.symm.trans (ConcreteNewtonContour.normalized_outer_index hsource)
  exact_mod_cast equality

/-- Keep the original witness, radius, derivative result and outer uniqueness together with its weight. -/
theorem local_zero_with_canonical_weight (hsource : ConcreteNewtonPacket.SourceAcceptance) :
    ∃ root : ZeroPoint, root.1.re = 1 / 2 ∧
      ‖root.1 - QComplex.embed ConcreteNewtonPacket.center‖ <
        (ConcreteNewtonLocalization.innerRadius : ℝ) ∧
      deriv riemannZeta root.1 ≠ 0 ∧ multiplicity root = 1 ∧
      ∀ w : ZeroPoint, ‖w.1 - QComplex.embed ConcreteNewtonPacket.center‖ ≤
        (ConcreteNewtonPacket.newtonRadius : ℝ) → w = root := by
  obtain ⟨root, onLine, located, _, simple, unique⟩ :=
    ConcreteNewtonLocalization.local_zero_with_inner_geometry_of_source hsource
  exact ⟨root, onLine, located, simple, concrete_root_multiplicity_one hsource root located, unique⟩

end

end GRWTSK.RiemannHypothesis.CanonicalLocalZeroContour
```
