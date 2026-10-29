import Lean
import Std
import Init.Data.Rat
import Init.GrindInstances.Ring.Rat

/-!
Authored rational/polynomial access ramp to grwtsk contributors's two supplied
manuscripts (revised sofic-Weil paper and oscillator addendum). These are selected
finite laws. No identification of the theta source, Gaussian integral, L2 domain,
real/complex analytic limit, zero divisor, or RH theorem is asserted here.
- Identification with the paper is an authored relation, not a proved PDF parser.
- Polynomial Gaussian moments are defined algebraically, not assumed as axioms.
- Source-open analytic hypotheses remain in the external worklist.
-/
namespace TaoHodgeFinite

abbrev C := Rat × Rat
abbrev Coeff := Rat × Rat × Rat × Rat × Rat

def cadd (a b : C) : C := (a.1+b.1,a.2+b.2)
def cmul (a b : C) : C := (a.1*b.1-a.2*b.2,a.1*b.2+a.2*b.1)
def cscale (a : Rat) (z : C) : C := (a*z.1,a*z.2)
def power2 (z : C) : C := cmul z z
def power3 (z : C) : C := cmul (power2 z) z
def power4 (z : C) : C := cmul (power3 z) z

def eval4 (a : Coeff) (z : C) : C :=
  cadd (a.1,0) (cadd (cscale a.2.1 z)
    (cadd (cscale a.2.2.1 (power2 z))
      (cadd (cscale a.2.2.2.1 (power3 z)) (cscale a.2.2.2.2 (power4 z)))))

def heat (a : Coeff) (t : Rat) : Coeff :=
  (a.1-2*t*a.2.2.1+12*t*t*a.2.2.2.2,
   a.2.1-6*t*a.2.2.2.1, a.2.2.1-12*t*a.2.2.2.2, a.2.2.2.1, a.2.2.2.2)
def dz (a : Coeff) : Coeff := (a.2.1,2*a.2.2.1,3*a.2.2.2.1,4*a.2.2.2.2,0)
def neg (a : Coeff) : Coeff := (-a.1,-a.2.1,-a.2.2.1,-a.2.2.2.1,-a.2.2.2.2)
-- The time coefficients of heat are degree two; these are their differentiated
-- coefficient polynomials. The theorem is algebraic, not general calculus.
def dt (a : Coeff) (t : Rat) : Coeff :=
  (-2*a.2.2.1+24*t*a.2.2.2.2,-6*a.2.2.2.1,-12*a.2.2.2.2,0,0)

theorem polynomial_heat_sign (a : Coeff) (t : Rat) : dt a t = neg (dz (dz (heat a t))) := by
  rcases a with ⟨a0,a1,a2,a3,a4⟩
  simp only [dt,neg,dz,heat,Prod.mk.injEq]
  grind

theorem heat_semigroup (a : Coeff) (s t : Rat) : heat (heat a s) t = heat a (s+t) := by
  rcases a with ⟨a0,a1,a2,a3,a4⟩
  simp only [heat,Prod.mk.injEq]
  grind

-- Even-power coefficients of the displacement u in f(z+i*u).
def u2 (a : Coeff) (z : C) : C :=
  cscale (-1) (cadd (a.2.2.1,0)
    (cadd (cscale (3*a.2.2.2.1) z) (cscale (6*a.2.2.2.2) (power2 z))))
def u4 (a : Coeff) : C := (a.2.2.2.2,0)
def evenShift (a : Coeff) (z : C) (u : Rat) : C :=
  cscale (1/2) (cadd (eval4 a (cadd z (0,u))) (eval4 a (cadd z (0,-u))))

theorem even_shift_expansion (a : Coeff) (z : C) (u : Rat) :
    evenShift a z u = cadd (eval4 a z)
      (cadd (cscale (u*u) (u2 a z)) (cscale (u*u*u*u) (u4 a))) := by
  rcases a with ⟨a0,a1,a2,a3,a4⟩
  rcases z with ⟨x,y⟩
  simp only [evenShift,eval4,cadd,cscale,cmul,power2,power3,power4,u2,u4,Prod.mk.injEq]
  grind

-- Variance 2t: the formal moments are M2=2t and M4=12t^2.
def transverseMoment (a : Coeff) (z : C) (t : Rat) : C :=
  cadd (eval4 a z) (cadd (cscale (2*t) (u2 a z)) (cscale (12*t*t) (u4 a)))

theorem transverse_polynomial_bridge (a : Coeff) (z : C) (t : Rat) :
    transverseMoment a z t = eval4 (heat a t) z := by
  rcases a with ⟨a0,a1,a2,a3,a4⟩
  rcases z with ⟨x,y⟩
  simp only [transverseMoment,eval4,heat,cadd,cscale,cmul,power2,power3,power4,u2,u4,Prod.mk.injEq]
  grind

def zCoord (beta gamma : Rat) : C := (-gamma,beta-1/2)
def wCoord (beta gamma : Rat) : C := (2*gamma,1-2*beta)
theorem normalization (beta gamma : Rat) :
    wCoord beta gamma = cscale (-2) (zCoord beta gamma) ∧
    ((zCoord beta gamma).2 = 0 ↔ beta = 1/2) := by
  simp only [wCoord,zCoord,cscale,Prod.mk.injEq]
  grind

theorem time_and_collar :
    (4 : Rat)*(9/128)=9/32 ∧ 2*(7/8-1/2)=3/4 ∧
    (3/4 : Rat)*(3/4)/2=9/32 ∧ (7/8-1/2 : Rat)*(7/8-1/2)=9/64 := by grind

theorem midpoint_and_variance (delta : Rat) :
    ((1/2+delta)+(1/2-delta))/2 = (1/2 : Rat) ∧
    (((1/2+delta)-1/2)*((1/2+delta)-1/2)+
     ((1/2-delta)-1/2)*((1/2-delta)-1/2))/2=delta*delta := by grind

-- A reference closure theorem. Its all-epsilon hypothesis is not established
-- for zeta zeros by this module or by finite test cases.
theorem shrinking_collar_center (beta : Rat)
    (collars : ∀ epsilon : Rat, 0 < epsilon →
       1/2-epsilon ≤ beta ∧ beta ≤ 1/2+epsilon) : beta = 1/2 := by
  by_cases h : beta = 1/2
  · exact h
  · exfalso
    by_cases hi : (1/2 : Rat) < beta
    · have hp : 0 < (beta-1/2)/2 := by grind
      have hh := collars ((beta-1/2)/2) hp
      grind
    · have hp : 0 < (1/2-beta)/2 := by grind
      have hh := collars ((1/2-beta)/2) hp
      grind

def fixedHeat (x y : Rat) : C := (5*x/6+y/6,x/3+2*y/3)
theorem weighted_center (x y : Rat) :
    (2*(fixedHeat x y).1+(fixedHeat x y).2)/3=(2*x+y)/3 := by
  simp only [fixedHeat]
  grind

theorem signed_residual (x y a b : Rat) :
    2*x*a+y*b = 2*(fixedHeat x y).1*(fixedHeat a b).1+
      (fixedHeat x y).2*(fixedHeat a b).2+(x-y)*(a-b)/2 := by
  simp only [fixedHeat]
  grind

theorem weighted_example : fixedHeat 3 1=(8/3,5/3) ∧
    (2*3*3+1 : Rat)=19 ∧ (2*(8/3)*(8/3)+(5/3)*(5/3) : Rat)=17 := by
  simp only [fixedHeat,Prod.mk.injEq]
  grind

theorem sharper_budget :
    (1281/1600 : Rat)*(25/2916)=427/62208 ∧
    (427/62208 : Rat)<5/486 := by grind

-- Cross-multiplied only. The analytic evaluation at pi+i*ln(2) is a separately
-- source-supported premise, and the nonzero denominator is not silently assumed.
theorem obstruction_residual (a b : Rat) :
    cscale 2 (cadd (cscale (3/4) (a,b)) (0,3/4)) =
    cscale (3/2) (cadd (a,b) (0,1)) := by
  simp only [cscale,cadd,Prod.mk.injEq]
  grind

end TaoHodgeFinite
#print axioms TaoHodgeFinite.polynomial_heat_sign
#print axioms TaoHodgeFinite.heat_semigroup
#print axioms TaoHodgeFinite.even_shift_expansion
#print axioms TaoHodgeFinite.transverse_polynomial_bridge
#print axioms TaoHodgeFinite.normalization
#print axioms TaoHodgeFinite.time_and_collar
#print axioms TaoHodgeFinite.midpoint_and_variance
#print axioms TaoHodgeFinite.shrinking_collar_center
#print axioms TaoHodgeFinite.weighted_center
#print axioms TaoHodgeFinite.signed_residual
#print axioms TaoHodgeFinite.weighted_example
#print axioms TaoHodgeFinite.sharper_budget
#print axioms TaoHodgeFinite.obstruction_residual
