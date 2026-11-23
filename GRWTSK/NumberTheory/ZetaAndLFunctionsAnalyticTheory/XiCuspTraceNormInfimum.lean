/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.LinearAlgebra.Matrix.Notation
import Mathlib.Tactic.FinCases
import Mathlib.Tactic.NoncommRing

/-! # The dissipative modular shift and the sharp trace-norm infimum

The first identity is a block operator identity over any unital star ring.
The second expresses the difference between two centered resolvents as a
product. The accompanying note uses the identities for trace-norm pinching.
-/
namespace GRWTSK.NumberTheory.XiCuspTraceNormInfimum
open Matrix
variable {R : Type*} [Ring R]

/-- Transfer matrix I-T for the damped modular pencil. -/
def transfer (q d : R) : Matrix (Fin 2) (Fin 2) R := !![1-q^2+d, q; -q, 1]

/-- Twice the symmetrizing metric. -/
def doubledMetric (q d : R) : Matrix (Fin 2) (Fin 2) R := !![2+d, -q; -q, 2]

/-- Damping acting in the first copy. -/
def damping (d : R) : Matrix (Fin 2) (Fin 2) R := !![d, 0; 0, 0]

/-- The dissipation identity includes arbitrary noncommuting self-adjoint
Green square roots and damping coefficients. -/
theorem energy_identity [StarRing R] (q d : R) (hq : star q=q) (hd : star d=d) :
    (transfer q d)ᴴ * doubledMetric q d * transfer q d - doubledMetric q d =
      (1+transfer q d)ᴴ * damping d * (1+transfer q d) := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [transfer, doubledMetric, damping, Matrix.mul_apply, Fin.sum_univ_two,
      Matrix.conjTranspose_apply, Matrix.one_apply, hq,hd] <;>
    simp only [show (2:R) = 1+1 by exact one_add_one_eq_two.symm] <;> noncomm_ring

/-- Pulling the transfer energy back by the inverse Cayley denominator
gives the signed Hermitian part directly, including its factor of two. -/
theorem cayley_energy [StarRing R] (u w d r : R) (hr : (1+u)*r=1)
    (hw : star u*w*u-w=star (1+u)*d*(1+u)) :
    star ((1-u)*r)*w+w*((1-u)*r) = -(d+d) := by
  have hr' : star r*star (1+u)=1 := by
    simpa only [star_mul,star_one] using congrArg star hr
  have he : star (1-u)*w*(1+u)+star (1+u)*w*(1-u) =
      -(star (1+u)*d*(1+u) + star (1+u)*d*(1+u)) := by
    rw [← hw,star_sub,star_one,star_add,star_one]
    noncomm_ring
  calc
    _ = (star r*star (1-u))*w*((1+u)*r) +
        (star r*star (1+u))*w*((1-u)*r) := by rw [hr,hr',mul_one,one_mul,star_mul]
    _ = star r*(star (1-u)*w*(1+u)+star (1+u)*w*(1-u))*r := by noncomm_ring
    _ = -((star r*star (1+u))*d*((1+u)*r) + (star r*star (1+u))*d*((1+u)*r)) := by
      rw [he]
      noncomm_ring
    _ = _ := by rw [hr,hr',one_mul,mul_one]

/-- A strict upper block of an upper triangular operator is already
a block of its skew-adjoint part. This transfers trace-class control. -/
theorem strict_block_of_invariance [StarRing R] (p q l : R)
    (hp : star p=p) (hq : star q=q) (hinv : q*l*p=0) :
    p*l*q = p*(l-star l)*q := by
  have hz : p*star l*q=0 := by
    simpa [star_mul,hp,hq,mul_assoc] using congrArg star hinv
  rw [mul_sub,sub_mul,hz,sub_zero]

/-- Compression of a triangular product to an invariant interval is the
product of its two compressions. p cuts the lower part and e is the interval. -/
theorem triangular_interval_product (p e a b : R)
    (hleft : e*a*p=0) (hright : b*e=(p+e)*(b*e)) :
    e*(a*b)*e = (e*a)*e*(b*e) := by
  calc
    _ = (e*a)*(b*e) := by noncomm_ring
    _ = (e*a)*((p+e)*(b*e)) := congrArg ((e*a)*·) hright
    _ = (e*a*p)*(b*e)+(e*a)*e*(b*e) := by noncomm_ring
    _ = _ := by rw [hleft, zero_mul,zero_add]

/-- Two points of a rational operator pencil differ by an operator product.
The resolvent multiplied on either side is supplied separately. -/
theorem resolvent_recenter (t r s a b : R)
    (ha : (1-a*t)*r=1) (hb : s*(1-b*t)=1) :
    s-r = s*((b-a)*t)*r := by
  calc
    _ = s*((1-a*t)*r)-(s*(1-b*t))*r := by rw [ha,hb,mul_one,one_mul]
    _ = _ := by noncomm_ring

end GRWTSK.NumberTheory.XiCuspTraceNormInfimum
