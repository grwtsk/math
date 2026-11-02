/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# The exact noncommutative theta-boundary polarization word

This is the group-theoretic LAST STEP for the ORIGINAL geometric
theta-group extension, not a substitute for its elliptic divisor
construction. In the original extension, all central defects
are genuine constants in Fsep^×, proved by the source
principal-divisor-zero iff constant theorem.

At fixed sigma,tau, write
 x = lift(a_sigma),      z = sigma lift(a_tau),
 u = lift(a_sigma tau),
 y = lift(b_sigma),      w = sigma lift(b_tau),
 v = lift(b_sigma tau).

For the sum cocycle use the REVERSED section y*x, not x*y,
so the mixed commutator has the ordered Weil-cup arguments:
   [x,w] = x*w*x^-1*w^-1,
corresponding geometrically to e(a_sigma,sigma b_tau)
when the original theta commutator has been identified
with the EXACT source Weil pairing.

Let p=x*z*u^-1 and q=y*w*v^-1 be CENTRAL theta
boundary defects. Their centrality is an actual geometric
divisor theorem, NOT a chosen pairing hypothesis.
Then noncommutative group algebra proves
  (y*x)*(w*z)*(v*u)^-1 = [x,w]*q*p.
After applying the scalar identification, taking continuous
H² classes and accounting for the section-change coboundary,
this is precisely the theta-obstruction polarization formula.

This file does not assume a 'polarization identity' as data,
and does not define e(a,b) from an arbitrary matrix.
The remaining arithmetic source bridges are:
(a) actual Galois continuity and 2-cocycle of the theta
    boundary on Fsep^×;
(b) identification of the GEOMETRIC commutator with original
    W.torsionCoeffWeilPairing including order/sign;
(c) cohomology transport to Brauer H² and the independent
    real p=2 Tate convention. No BSD consequence.
-/

namespace GRWTSK.CategoryTheoryHomologicalAlgebra.ThetaCentralPolarization

variable {Θ : Type*} [Group Θ]

/-- Actual theta-group commutator convention, which must
be reconciled with the source Weil pairing orientation. -/
def thetaCommutator (x w : Θ) : Θ :=
  x * w * x⁻¹ * w⁻¹

/-- Group-word identity before any descent or cohomology:
x*w = [x,w] * (w*x). -/
theorem thetaCommutator_mul_swap (x w : Θ) :
    x * w = thetaCommutator x w * (w * x) := by
  unfold thetaCommutator
  group

/-- Exact raw polarization at fixed Galois arguments.
The ONLY premises are explicit central commutations already
implied by the genuine theta divisor-constant kernel:
the commutator [x,w] commutes with y and the defect
p=x*z*u^-1 commutes with v^-1.

This proves the orientation with the reversed sum lift
y*x: mixed term is [x,w], NOT [w,x], and therefore the
original ordered cup is e(a_sigma, sigma b_tau). -/
theorem theta_boundary_product_polarization
    (x y z w u v : Θ)
    (hc : y * thetaCommutator x w =
      thetaCommutator x w * y)
    (hp : (x * z * u⁻¹) * v⁻¹ =
      v⁻¹ * (x * z * u⁻¹)) :
    (y * x) * (w * z) * (v * u)⁻¹ =
      thetaCommutator x w *
        (y * w * v⁻¹) * (x * z * u⁻¹) := by
  let c := thetaCommutator x w
  have hs : x * w = c * (w * x) :=
    thetaCommutator_mul_swap x w
  calc
    (y * x) * (w * z) * (v * u)⁻¹ =
        y * (x * w) * (z * u⁻¹) * v⁻¹ := by group
    _ = y * (c * (w * x)) * (z * u⁻¹) * v⁻¹ := by rw [hs]
    _ = c * (y * w) * (x * z * u⁻¹) * v⁻¹ := by
      calc
        y * (c * (w * x)) * (z * u⁻¹) * v⁻¹ =
            (y * c) * (w * x) * (z * u⁻¹) * v⁻¹ := by group
        _ = (c * y) * (w * x) * (z * u⁻¹) * v⁻¹ := by rw [hc]
        _ = c * (y * w) * (x * z * u⁻¹) * v⁻¹ := by group
    _ = c * (y * w * v⁻¹) * (x * z * u⁻¹) := by
      calc
        c * (y * w) * (x * z * u⁻¹) * v⁻¹ =
            c * (y * w) * (v⁻¹ * (x * z * u⁻¹)) := by rw [hp]
        _ = c * (y * w * v⁻¹) * (x * z * u⁻¹) := by group
    _ = thetaCommutator x w *
          (y * w * v⁻¹) * (x * z * u⁻¹) := rfl

/-- Under a genuinely central scalar kernel, the two
noncommutative centrality premises of the preceding theorem
are automatic. The source must establish that all three
particular elements actually lie in that scalar kernel. -/
theorem theta_boundary_product_polarization_of_central
    (x y z w u v : Θ)
    (hcomm : ∀ t : Θ,
      t * thetaCommutator x w = thetaCommutator x w * t)
    (hdefect : ∀ t : Θ,
      (x * z * u⁻¹) * t = t * (x * z * u⁻¹)) :
    (y * x) * (w * z) * (v * u)⁻¹ =
      thetaCommutator x w *
        (y * w * v⁻¹) * (x * z * u⁻¹) :=
  theta_boundary_product_polarization x y z w u v
    (hcomm y) (hdefect v⁻¹)

/-- A strictly lifted Kummer cocycle has defect equal to
the group identity. This is the exact group-word return
used by the actual divisor theta lift f_sigma. -/
theorem theta_boundary_eq_one_of_strict_crossed
    (x sx y : Θ) (hxy : x * sx = y) :
    x * sx * y⁻¹ = 1 := by
  rw [hxy]
  exact mul_inv_cancel y

end GRWTSK.CategoryTheoryHomologicalAlgebra.ThetaCentralPolarization
