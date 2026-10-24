# Complete source: GRWTSK.Algebra.LinearAlgebra.BilinearAndQuadraticForms.FourPhase

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a07b6419718157a6bd7eb6f8bdb33678ce2eee17` · SHA-256 `6872624d0095c587da06e8d89a601c776e285649ef25e175b535bb528a8fa611`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean
import Std
import Init.Data.Rat
import Init.GrindInstances.Ring.Rat

/-!
Selected rational algebra from grwtsk contributors, Four-phase controls and the
retained center (12 October 2026), sections 4, 6 and 9. AI-assisted local adapter.
No trigonometric/PNT/asymptotic/Xi/Pick interpolation theorem is formalized here.
The source-to-statement mapping is authored, not a verified PDF translation.
-/
namespace FourPhaseFinite
abbrev Matrix2 := Rat × Rat × Rat
abbrev Four := Rat × Rat × Rat × Rat

def quad (k : Matrix2) (x y : Rat) : Rat :=
  k.1*x*x + 2*k.2.1*x*y + k.2.2*y*y

def controls (k : Matrix2) : Four :=
  (k.1, (k.1+k.2.2)/2-k.2.1, k.2.2, (k.1+k.2.2)/2+k.2.1)

def recover (f : Four) : Matrix2 :=
  let alpha := (f.1+f.2.1+f.2.2.1+f.2.2.2)/4
  (alpha+(f.1-f.2.2.1)/2, (f.2.2.2-f.2.1)/2, alpha-(f.1-f.2.2.1)/2)

theorem recover_controls (k : Matrix2) : recover (controls k) = k := by
  rcases k with ⟨a,b,d⟩
  simp only [recover, controls, Prod.mk.injEq]
  grind

theorem controls_consistent (k : Matrix2) :
    (controls k).1 + (controls k).2.2.1 = (controls k).2.1 + (controls k).2.2.2 := by
  simp only [controls]
  grind

theorem recover_consistent (f : Four)
    (h : f.1+f.2.2.1 = f.2.1+f.2.2.2) : controls (recover f) = f := by
  rcases f with ⟨a,b,c,d⟩
  simp only [recover, controls, Prod.mk.injEq]
  grind

theorem reconstructed_reading (k : Matrix2) (x y : Rat) :
    quad (recover (controls k)) x y = quad k x y := by
  rw [recover_controls]

-- These are exact quadratic control VALUES, not a claim of rational pi/4 vectors.
theorem positive_controls_negative_direction :
    controls (2,-29/10,4) = (2,59/10,4,1/10) ∧
    (0 : Rat)<2 ∧ (0 : Rat)<59/10 ∧ (0 : Rat)<4 ∧ (0 : Rat)<1/10 ∧
    (4/5 : Rat)*(4/5)+(3/5)*(3/5)=1 ∧
    quad (2,-29/10,4) (4/5) (3/5) = -8/125 := by
  simp only [controls,quad,Prod.mk.injEq]
  grind

def cardinal (k : Matrix2) : Four := (k.1,k.2.2,k.1,k.2.2)
theorem cardinal_alias : cardinal (1,1,1) = cardinal (1,-1,1) ∧
    quad (1,1,1) 1 1 = 4 ∧ quad (1,-1,1) 1 1 = 0 := by
  simp only [cardinal,quad,Prod.mk.injEq]
  grind

-- One extremal error vector; the universal real operator bound is source-supported.
theorem sharp_error_vertex : recover (-1,1,1,1) = (-1/2,0,3/2) ∧
    quad (recover (-1,1,1,1)) 0 1 = 3/2 := by
  simp only [recover,quad,Prod.mk.injEq]
  grind

theorem retained_square (a b d inverse x y : Rat) (hi : d*inverse=1) :
    quad (a,b,d) x y = d*(y+inverse*b*x)*(y+inverse*b*x) +
      (a-inverse*b*b)*x*x := by
  simp only [quad]
  grind

theorem native_isotropic_not_radical (b d : Rat) (hb : b ≠ 0) :
    quad (0,b,d) 1 0 = 0 ∧ ((0 : Rat),b) ≠ (0,0) := by
  simp only [quad,Prod.mk.injEq]
  grind

theorem negative_schur_example :
    quad (0,2,5) 1 0 = 0 ∧ quad (0,2,5) 1 (-2/5) = -4/5 := by
  simp only [quad]
  grind

def damp (k : Matrix2) (r : Rat) : Matrix2 := (k.1,r*k.2.1,r*r*k.2.2)
theorem hodge_native_retained (k : Matrix2) (r x : Rat) :
    quad (damp k r) x 0 = quad k x 0 := by
  simp only [damp,quad]
  grind

theorem hodge_signed_carry (k : Matrix2) (r x y : Rat) :
    quad k x y = quad (damp k r) x y +
      2*k.2.1*(1-r)*x*y + k.2.2*(1-r*r)*y*y := by
  simp only [damp,quad]
  grind

-- Fixed real 1+4 example: the old scalar is zero but its first coupling is not.
def singularExtension (x y0 y1 y2 y3 : Rat) : Rat :=
  2*x*y0+y0*y0+y1*y1+y2*y2+y3*y3

theorem singular_range_counterexample : singularExtension (-1) 1 0 0 0 = -1 := by
  simp only [singularExtension]
  grind

theorem refined_hat_quarter (delta : Rat) :
    (427/62208 : Rat)*(delta/2)*(delta/2) = ((427/62208)*delta*delta)/4 := by grind

end FourPhaseFinite
#print axioms FourPhaseFinite.recover_controls
#print axioms FourPhaseFinite.controls_consistent
#print axioms FourPhaseFinite.recover_consistent
#print axioms FourPhaseFinite.reconstructed_reading
#print axioms FourPhaseFinite.positive_controls_negative_direction
#print axioms FourPhaseFinite.cardinal_alias
#print axioms FourPhaseFinite.sharp_error_vertex
#print axioms FourPhaseFinite.retained_square
#print axioms FourPhaseFinite.native_isotropic_not_radical
#print axioms FourPhaseFinite.negative_schur_example
#print axioms FourPhaseFinite.hodge_native_retained
#print axioms FourPhaseFinite.hodge_signed_carry
#print axioms FourPhaseFinite.singular_range_counterexample
#print axioms FourPhaseFinite.refined_hat_quarter
```
