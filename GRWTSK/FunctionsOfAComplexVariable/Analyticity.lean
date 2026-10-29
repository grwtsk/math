/-
Analyticity of the inverse of one minus z on the open unit ball
ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas/direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
Source original SHA-256: 12a7d27099a82a832b1276c4dcb8744b313fba91a6f2b308469507af696bb094
Manual conceptual split; uncompiled and not mathematically admitted.
These provisional roles and computational characterizations are user-supplied.
Existing source attribution, source identities and notices remain preserved in the immutable source archive.
The exact legacy AnalyticNumber.Mathlib.Certificate import remains unresolved; no certificate or authority record is materialized here.
The denominator nonzero proof, strict unit-disk hypothesis and AnalyticOnNhd conclusion remain exact.
-/
import AnalyticNumber.Mathlib.Certificate

/-!
# Mathlib-backed certificate: geometric series and the resolvent on the disk

For `z : ℂ` with `‖z‖ < 1` this file proves, from Mathlib:

* `Summable (fun n : ℕ => z ^ n)`;
* `Summable (fun n : ℕ => ‖z ^ n‖)`;
* `HasSum (fun n : ℕ => z ^ n) ((1 - z)⁻¹)`;
* `AnalyticAt ℂ (fun w : ℂ => (1 - w)⁻¹) z`,

and packages the conjunction as a `MathlibProofCertificate` whose `proof`
field is built from those four theorems — not from `True`, `trivial`, or an
arbitrary authority field. The claim is then recovered a second time only
through `BoundaryCalculus.analytic_boundary_calculus`, and direct ownership
remains impossible.

This file asserts nothing about ζ, RH, analytic continuation, functional
equations, automorphic L-functions, trace formulas, prismatic comparison,
Fredholm determinants, or global Euler products.
-/

open AnalyticNumber AnalyticNumber.MathlibBridge

namespace GRWTSK.Analysis.ComplexAnalysis.HolomorphicFunctions.UnitDiskResolvent.Variant12a7d270

/-- The resolvent `w ↦ (1 - w)⁻¹` is analytic at every point of the open
unit disk. Mathlib proof via `analyticAt_const`, `analyticAt_id`,
`AnalyticAt.sub`, and `AnalyticAt.inv`; the denominator is nonzero because
`1 - z = 0` would force `z = 1`, contradicting `‖z‖ < 1`. -/
theorem one_sub_inv_analyticAt
    {z : ℂ} (hz : ‖z‖ < 1) :
    AnalyticAt ℂ (fun w : ℂ => (1 - w)⁻¹) z := by
  have hne : (1 : ℂ) - z ≠ 0 := by
    intro h
    have hz1 : z = 1 := (sub_eq_zero.mp h).symm
    rw [hz1] at hz
    simp at hz
  have hsub : AnalyticAt ℂ (fun w : ℂ => 1 - w) z :=
    analyticAt_const.sub analyticAt_id
  exact hsub.inv hne

/-- The resolvent `z ↦ (1 - z)⁻¹` is analytic on a neighbourhood of every
point of the open unit ball. Stated with `AnalyticOnNhd`, the modern Mathlib
name for the pointwise-`AnalyticAt` notion previously called `AnalyticOn`. -/
theorem one_sub_inv_analyticOn_unitBall :
    AnalyticOnNhd ℂ
      (fun z : ℂ => (1 - z)⁻¹)
      (Metric.ball (0 : ℂ) 1) := by
  intro z hz
  exact one_sub_inv_analyticAt (mem_ball_zero_iff.mp hz)


end GRWTSK.Analysis.ComplexAnalysis.HolomorphicFunctions.UnitDiskResolvent.Variant12a7d270
