# Complete source: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.FiniteCommonJTransportFixtures.Variant107642bcaa1df3f07b1eb1ebdea61e1e8e314c0576ffe29427d45d659b691f18

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ebd32b284023769991b30d977406822a1bba75ed` · SHA-256 `107642bcaa1df3f07b1eb1ebdea61e1e8e314c0576ffe29427d45d659b691f18`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.Spectral.FiniteCommonJTransport

/-!
# Reverse-consistent finite rational triangle fixture

Three independently supplied oriented triangle edges use one rational rotation.
Every opposite edge is its inverse, diagonal transitions are identity, and the
closed three-edge path has nonidentity ordered transport. This is a finite
algebraic connection demonstration, not an arithmetic holonomy construction,
a curvature theorem or a uniform signed estimate.

AI attribution: developed with OpenAI Codex; Lean checks the proof terms.
-/

set_option autoImplicit false

namespace FormalResearch.PositiveAtlas.Spectral.FiniteCommonJTransportFixtures

open FormalResearch.PositiveAtlas.Spectral
open FiniteCommonJTransport

/-- The three chosen forward orientations of an independently supplied finite triangle. -/
def forwardTriangle (u v : Fin 3) : Prop :=
  (u = 0 ∧ v = 1) ∨ (u = 1 ∧ v = 2) ∨ (u = 2 ∧ v = 0)

/-- The finite orientation predicate is decidable by the literal three cases. -/
instance forwardTriangleDecidable (u v : Fin 3) : Decidable (forwardTriangle u v) :=
  inferInstanceAs (Decidable ((u = 0 ∧ v = 1) ∨ (u = 1 ∧ v = 2) ∨ (u = 2 ∧ v = 0)))

/-- Every reversed edge uses the inverse; the finite graph is an algebraic assignment. -/
def triangleEdge (u v : Fin 3) : (Matrix (Fin 2) (Fin 2) ℚ)ˣ :=
  if forwardTriangle u v then rationalEdge else if u = v then 1 else rationalEdge⁻¹

/-- The edge assignment has the exact inverse consistency on all three-site pairs. -/
theorem triangleEdge_reverse (u v : Fin 3) : triangleEdge v u = (triangleEdge u v)⁻¹ := by
  fin_cases u <;> fin_cases v <;> simp [triangleEdge, forwardTriangle]

/-- Staying at a site is the identity edge. -/
theorem triangleEdge_diagonal (u : Fin 3) : triangleEdge u u = 1 := by
  fin_cases u <;> simp [triangleEdge, forwardTriangle]

/-- The literal edge followed by its reversed triangle edge is an identity loop. -/
theorem triangle_backtrack_loop_identity :
    triangleEdge 1 0 * triangleEdge 0 1 = 1 := by
  rw [triangleEdge_reverse 0 1, inv_mul_cancel]

/-- Explicit traversal 0,1,2,0 of the finite three-site loop. -/
def triangleSites (n : ℕ) : Fin 3 :=
  if n = 0 then 0 else if n = 1 then 1 else if n = 2 then 2 else 0

/-- The supplied three-edge path is actually closed at its basepoint. -/
theorem triangleSites_closed : triangleSites 3 = triangleSites 0 := by
  norm_num [triangleSites]

/-- Reverse-consistent rational triangle edges retain a nonidentity residual rotation. -/
theorem triangle_loop_nonidentity :
    orderedProduct (fun i => triangleEdge (triangleSites i) (triangleSites (i + 1))) 0 3 ≠ 1 := by
  intro h
  have he := congrArg
    (fun g : (Matrix (Fin 2) (Fin 2) ℚ)ˣ => (g : Matrix (Fin 2) (Fin 2) ℚ) 0 1) h
  norm_num [orderedProduct, triangleEdge, forwardTriangle, triangleSites,
    rationalEdge, rotationUnit, rotationMatrix, Matrix.mul_apply, Fin.sum_univ_two] at he

/-- The closed triangle still has only basepoint conjugation under arbitrary site gauges. -/
theorem triangle_gauge_basepoint (H : Fin 3 → (Matrix (Fin 2) (Fin 2) ℚ)ˣ) :
    orderedProduct
      (siteGauge (fun i => triangleEdge (triangleSites i) (triangleSites (i + 1)))
        triangleSites H) 0 3 =
      H 0 * orderedProduct
        (fun i => triangleEdge (triangleSites i) (triangleSites (i + 1))) 0 3 * (H 0)⁻¹ := by
  simpa [triangleSites] using site_loop_gauge
    (fun i => triangleEdge (triangleSites i) (triangleSites (i + 1)))
    triangleSites H 0 3 triangleSites_closed

end FormalResearch.PositiveAtlas.Spectral.FiniteCommonJTransportFixtures
```
