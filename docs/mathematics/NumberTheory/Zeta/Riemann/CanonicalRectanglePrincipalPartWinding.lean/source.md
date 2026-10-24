# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectanglePrincipalPartWinding

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `807b9cc5c0a74f22c51232ac068d7a354cacc0b5` · SHA-256 `df20dff1a30ba88ff02d5b4765086766b608714de98c1e651ddbf473ea9e5144`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleResidueAccounting
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Reduction of the rectangle principal-part winding theorem

The complete principal part in `CanonicalRectangleResidueAccounting` is a finite
sum of scalar multiples of the one-pole function

  s |-> (s - a)^(-1).

This file proves the boundary-integrability and finite-linearity bookkeeping
needed to reduce its winding theorem to one geometric statement:

  every point strictly inside the maintained rectangle has unit boundary
  integral `2 * pi * I`.

All zeta-specific coefficients remain fixed by the actual source divisor. No
external count, multiplicity, or residue can enter this reduction. The remaining
unit-pole theorem is still an explicit premise; this file does not claim to have
proved the rectangle winding number itself.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.CanonicalRectanglePrincipalPartWinding

open Set MeasureTheory
open scoped Interval BigOperators
open CanonicalZeroDivisor
open AdmissibleRectangles
open CanonicalRectangleCountIsolation
open CanonicalRectangleCauchyGoursat
open CanonicalRectangleResidueAccounting
open TrivialZeroResidues

noncomputable section

/-- One unit principal part at `a`. -/
def unitPole (a s : ℂ) : ℂ := (s - a)⁻¹

/-- Integrability of a function along all four maintained rectangle edges. -/
structure RectangleBoundaryIntegrable (N : ℕ) (f : ℂ → ℂ) : Prop where
  bottom : IntervalIntegrable (fun u : ℝ => f (bottomPoint N u)) volume (leftEdge N) 2
  top : IntervalIntegrable (fun u : ℝ => f (topPoint N u)) volume (leftEdge N) 2
  right : IntervalIntegrable (fun t : ℝ => f (rightPoint N t)) volume
    (-contourHeight N) (contourHeight N)
  left : IntervalIntegrable (fun t : ℝ => f (rectangleLeftPoint N t)) volume
    (-contourHeight N) (contourHeight N)

namespace RectangleBoundaryIntegrable

protected theorem zero (N : ℕ) :
    RectangleBoundaryIntegrable N (fun _ => 0) := by
  exact ⟨IntervalIntegrable.zero, IntervalIntegrable.zero,
    IntervalIntegrable.zero, IntervalIntegrable.zero⟩

protected theorem add {N : ℕ} {f g : ℂ → ℂ}
    (hf : RectangleBoundaryIntegrable N f)
    (hg : RectangleBoundaryIntegrable N g) :
    RectangleBoundaryIntegrable N (fun s => f s + g s) := by
  exact ⟨hf.bottom.add hg.bottom, hf.top.add hg.top,
    hf.right.add hg.right, hf.left.add hg.left⟩

protected theorem const_mul {N : ℕ} {f : ℂ → ℂ}
    (hf : RectangleBoundaryIntegrable N f) (c : ℂ) :
    RectangleBoundaryIntegrable N (fun s => c * f s) := by
  exact ⟨hf.bottom.const_mul (c := c), hf.top.const_mul (c := c),
    hf.right.const_mul (c := c), hf.left.const_mul (c := c)⟩

protected theorem neg {N : ℕ} {f : ℂ → ℂ}
    (hf : RectangleBoundaryIntegrable N f) :
    RectangleBoundaryIntegrable N (fun s => -f s) := by
  simpa only [neg_eq_neg_one_mul] using hf.const_mul (-1)

protected theorem finsetSum {N : ℕ} {ι : Type*}
    (S : Finset ι) (f : ι → ℂ → ℂ)
    (h : ∀ i ∈ S, RectangleBoundaryIntegrable N (f i)) :
    RectangleBoundaryIntegrable N (fun s => ∑ i ∈ S, f i s) := by
  classical
  induction S using Finset.induction_on with
  | empty =>
      simpa using RectangleBoundaryIntegrable.zero N
  | @insert a S ha ih =>
      have haInt : RectangleBoundaryIntegrable N (f a) :=
        h a (Finset.mem_insert_self a S)
      have hSInt : RectangleBoundaryIntegrable N (fun s => ∑ i ∈ S, f i s) :=
        ih (fun i hi => h i (Finset.mem_insert_of_mem hi))
      simpa [Finset.sum_insert ha] using haInt.add hSInt

end RectangleBoundaryIntegrable

/-- The four-edge functional is additive whenever both summands are integrable
on every edge. -/
theorem rectangleBoundaryIntegral_add {N : ℕ} {f g : ℂ → ℂ}
    (hf : RectangleBoundaryIntegrable N f)
    (hg : RectangleBoundaryIntegrable N g) :
    rectangleBoundaryIntegral N (fun s => f s + g s) =
      rectangleBoundaryIntegral N f + rectangleBoundaryIntegral N g := by
  unfold rectangleBoundaryIntegral
  rw [intervalIntegral.integral_add hf.bottom hg.bottom,
    intervalIntegral.integral_add hf.top hg.top,
    intervalIntegral.integral_add hf.right hg.right,
    intervalIntegral.integral_add hf.left hg.left]
  ring

/-- Constant complex coefficients pass through the complete boundary functional. -/
theorem rectangleBoundaryIntegral_const_mul
    (N : ℕ) (c : ℂ) (f : ℂ → ℂ) :
    rectangleBoundaryIntegral N (fun s => c * f s) =
      c * rectangleBoundaryIntegral N f := by
  unfold rectangleBoundaryIntegral
  simp_rw [intervalIntegral.integral_const_mul]
  ring

/-- Finite sums pass through the boundary functional once each summand is
edge-integrable. -/
theorem rectangleBoundaryIntegral_finsetSum {N : ℕ} {ι : Type*}
    (S : Finset ι) (f : ι → ℂ → ℂ)
    (h : ∀ i ∈ S, RectangleBoundaryIntegrable N (f i)) :
    rectangleBoundaryIntegral N (fun s => ∑ i ∈ S, f i s) =
      ∑ i ∈ S, rectangleBoundaryIntegral N (f i) := by
  classical
  induction S using Finset.induction_on with
  | empty => simp [rectangleBoundaryIntegral]
  | @insert a S ha ih =>
      have haInt := h a (Finset.mem_insert_self a S)
      have hSInt := RectangleBoundaryIntegrable.finsetSum S f
        (fun i hi => h i (Finset.mem_insert_of_mem hi))
      simp only [Finset.sum_insert ha]
      rw [rectangleBoundaryIntegral_add haInt hSInt, ih]
      exact fun i hi => h i (Finset.mem_insert_of_mem hi)

/-- Explicit coordinate description of the maintained open rectangle. -/
theorem mem_openRectangle_iff (N : ℕ) (a : ℂ) :
    a ∈ openRectangle N ↔
      leftEdge N < a.re ∧ a.re < 2 ∧
      -contourHeight N < a.im ∧ a.im < contourHeight N := by
  have hleft : leftEdge N ≤ 2 :=
    (leftEdge_neg N).le.trans (by norm_num)
  have hheight : -contourHeight N ≤ contourHeight N := by
    linarith [contourHeight_pos N]
  simp [openRectangle, min_eq_left hleft, max_eq_right hleft,
    min_eq_left hheight, max_eq_right hheight]

/-- The maintained geometric interior lies in the open rectangle used by
Cauchy-Goursat. -/
theorem interior_subset_openRectangle (N : ℕ) :
    interior N ⊆ openRectangle N := by
  intro s hs
  change leftEdge N < s.re ∧ s.re < 2 ∧ |s.im| < contourHeight N at hs
  apply (mem_openRectangle_iff N s).mpr
  exact ⟨hs.1, hs.2.1, (abs_lt.mp hs.2.2).1, (abs_lt.mp hs.2.2).2⟩

/-- Every canonical nontrivial zero in the selected head is strictly inside. -/
theorem nontrivial_mem_openRectangle (N : ℕ) (z : ZeroPoint)
    (hz : z ∈ heightHead (contourHeight N)) :
    z.1 ∈ openRectangle N :=
  interior_subset_openRectangle N ((point_mem_interior_iff N z).2 hz)

/-- Every selected negative-even zero is strictly inside. -/
theorem trivial_mem_openRectangle (N k : ℕ) (hk : k < N) :
    trivialPoint k ∈ openRectangle N :=
  interior_subset_openRectangle N ((trivial_mem_interior_iff N k).2 hk)

/-- The pole at one is strictly inside. -/
theorem one_mem_openRectangle (N : ℕ) :
    (1 : ℂ) ∈ openRectangle N :=
  interior_subset_openRectangle N (one_mem_interior N)

/-- A unit pole strictly inside the rectangle is continuous, hence integrable,
on every boundary edge. No winding value is used here. -/
theorem unitPole_boundaryIntegrable (N : ℕ) (a : ℂ)
    (ha : a ∈ openRectangle N) :
    RectangleBoundaryIntegrable N (unitPole a) := by
  rcases (mem_openRectangle_iff N a).mp ha with ⟨haL, haR, haB, haT⟩
  have hbottom (u : ℝ) : bottomPoint N u - a ≠ 0 := by
    intro hz
    have heq : bottomPoint N u = a := sub_eq_zero.mp hz
    have him := congrArg Complex.im heq
    simp only [bottomPoint_im] at him
    linarith
  have htop (u : ℝ) : topPoint N u - a ≠ 0 := by
    intro hz
    have heq : topPoint N u = a := sub_eq_zero.mp hz
    have him := congrArg Complex.im heq
    simp only [topPoint_im] at him
    linarith
  have hright (t : ℝ) : rightPoint N t - a ≠ 0 := by
    intro hz
    have heq : rightPoint N t = a := sub_eq_zero.mp hz
    have hre := congrArg Complex.re heq
    simp only [rightPoint_re] at hre
    linarith
  have hleft (t : ℝ) : rectangleLeftPoint N t - a ≠ 0 := by
    intro hz
    have heq : rectangleLeftPoint N t = a := sub_eq_zero.mp hz
    have hre := congrArg Complex.re heq
    simp only [rectangleLeftPoint_re] at hre
    linarith
  have cbottom : Continuous (fun u : ℝ => unitPole a (bottomPoint N u)) := by
    unfold unitPole
    exact ((by fun_prop : Continuous (fun u : ℝ => bottomPoint N u - a))).inv₀ hbottom
  have ctop : Continuous (fun u : ℝ => unitPole a (topPoint N u)) := by
    unfold unitPole
    exact ((by fun_prop : Continuous (fun u : ℝ => topPoint N u - a))).inv₀ htop
  have cright : Continuous (fun t : ℝ => unitPole a (rightPoint N t)) := by
    unfold unitPole
    exact ((by fun_prop : Continuous (fun t : ℝ => rightPoint N t - a))).inv₀ hright
  have cleft : Continuous (fun t : ℝ => unitPole a (rectangleLeftPoint N t)) := by
    unfold unitPole
    exact ((by fun_prop : Continuous (fun t : ℝ => rectangleLeftPoint N t - a))).inv₀ hleft
  exact ⟨cbottom.intervalIntegrable _ _, ctop.intervalIntegrable _ _,
    cright.intervalIntegrable _ _, cleft.intervalIntegrable _ _⟩

/-- The sole remaining geometric winding input: one unit pole at every strict
interior point. -/
structure RectangleUnitPoleWindingCertificate (N : ℕ) : Prop where
  unit_pole_integral : ∀ a ∈ openRectangle N,
    rectangleBoundaryIntegral N (unitPole a) =
      2 * (Real.pi : ℂ) * Complex.I

namespace RectangleUnitPoleWindingCertificate

/-- Boundary integrability of the nontrivial principal-part sum. -/
theorem nontrivial_boundaryIntegrable {N : ℕ}
    (certificate : RectangleUnitPoleWindingCertificate N) :
    RectangleBoundaryIntegrable N (nontrivialPrincipalPart N) := by
  have hsum := RectangleBoundaryIntegrable.finsetSum
    (N := N) (heightHead (contourHeight N))
    (fun z s => (multiplicity z : ℂ) * unitPole z.1 s)
    (fun z hz =>
      (unitPole_boundaryIntegrable N z.1
        (nontrivial_mem_openRectangle N z hz)).const_mul (multiplicity z : ℂ))
  simpa [nontrivialPrincipalPart, unitPole, div_eq_mul_inv] using hsum

/-- Boundary integrability of the trivial-zero principal-part sum. -/
theorem trivial_boundaryIntegrable {N : ℕ}
    (certificate : RectangleUnitPoleWindingCertificate N) :
    RectangleBoundaryIntegrable N (trivialPrincipalPart N) := by
  have hsum := RectangleBoundaryIntegrable.finsetSum
    (N := N) (Finset.range N)
    (fun k s => unitPole (trivialPoint k) s)
    (fun k hk => unitPole_boundaryIntegrable N (trivialPoint k)
      (trivial_mem_openRectangle N k (Finset.mem_range.mp hk)))
  simpa [trivialPrincipalPart, unitPole] using hsum

/-- Boundary integrability of the pole principal part. -/
theorem pole_boundaryIntegrable {N : ℕ}
    (certificate : RectangleUnitPoleWindingCertificate N) :
    RectangleBoundaryIntegrable N polePrincipalPart := by
  simpa [polePrincipalPart, unitPole] using
    (unitPole_boundaryIntegrable N (1 : ℂ) (one_mem_openRectangle N)).neg

/-- Boundary integrability of the complete principal part. -/
theorem principalPart_boundaryIntegrable {N : ℕ}
    (certificate : RectangleUnitPoleWindingCertificate N) :
    RectangleBoundaryIntegrable N (rectanglePrincipalPart N) := by
  simpa [rectanglePrincipalPart] using
    (certificate.nontrivial_boundaryIntegrable.add
      certificate.trivial_boundaryIntegrable).add
        certificate.pole_boundaryIntegrable

/-- The nontrivial-zero principal parts contribute `2*pi*I` times the canonical
analytic multiplicity mass. -/
theorem nontrivial_principalPart_integral {N : ℕ}
    (certificate : RectangleUnitPoleWindingCertificate N) :
    rectangleBoundaryIntegral N (nontrivialPrincipalPart N) =
      (2 * (Real.pi : ℂ) * Complex.I) * nontrivialResidueMass N := by
  calc
    rectangleBoundaryIntegral N (nontrivialPrincipalPart N) =
        rectangleBoundaryIntegral N (fun s =>
          ∑ z ∈ heightHead (contourHeight N),
            (multiplicity z : ℂ) * unitPole z.1 s) := by
          congr 1
          funext s
          simp [nontrivialPrincipalPart, unitPole, div_eq_mul_inv]
    _ = ∑ z ∈ heightHead (contourHeight N),
          rectangleBoundaryIntegral N
            (fun s => (multiplicity z : ℂ) * unitPole z.1 s) := by
          apply rectangleBoundaryIntegral_finsetSum
          intro z hz
          exact (unitPole_boundaryIntegrable N z.1
            (nontrivial_mem_openRectangle N z hz)).const_mul (multiplicity z : ℂ)
    _ = ∑ z ∈ heightHead (contourHeight N),
          (multiplicity z : ℂ) * (2 * (Real.pi : ℂ) * Complex.I) := by
          apply Finset.sum_congr rfl
          intro z hz
          rw [rectangleBoundaryIntegral_const_mul,
            certificate.unit_pole_integral z.1
              (nontrivial_mem_openRectangle N z hz)]
    _ = (2 * (Real.pi : ℂ) * Complex.I) * nontrivialResidueMass N := by
          simp [nontrivialResidueMass, Finset.mul_sum, Finset.sum_mul, mul_comm]

/-- The selected simple negative-even zeros each contribute one unit winding. -/
theorem trivial_principalPart_integral {N : ℕ}
    (certificate : RectangleUnitPoleWindingCertificate N) :
    rectangleBoundaryIntegral N (trivialPrincipalPart N) =
      (2 * (Real.pi : ℂ) * Complex.I) * trivialResidueMass N := by
  calc
    rectangleBoundaryIntegral N (trivialPrincipalPart N) =
        rectangleBoundaryIntegral N (fun s =>
          ∑ k ∈ Finset.range N, unitPole (trivialPoint k) s) := by
          congr 1
          funext s
          simp [trivialPrincipalPart, unitPole]
    _ = ∑ k ∈ Finset.range N,
          rectangleBoundaryIntegral N (unitPole (trivialPoint k)) := by
          apply rectangleBoundaryIntegral_finsetSum
          intro k hk
          exact unitPole_boundaryIntegrable N (trivialPoint k)
            (trivial_mem_openRectangle N k (Finset.mem_range.mp hk))
    _ = ∑ _k ∈ Finset.range N, 2 * (Real.pi : ℂ) * Complex.I := by
          apply Finset.sum_congr rfl
          intro k hk
          exact certificate.unit_pole_integral (trivialPoint k)
            (trivial_mem_openRectangle N k (Finset.mem_range.mp hk))
    _ = (2 * (Real.pi : ℂ) * Complex.I) * trivialResidueMass N := by
          simp [trivialResidueMass, nsmul_eq_mul, mul_comm]

/-- The pole at one contributes negative one unit. -/
theorem pole_principalPart_integral {N : ℕ}
    (certificate : RectangleUnitPoleWindingCertificate N) :
    rectangleBoundaryIntegral N polePrincipalPart =
      (2 * (Real.pi : ℂ) * Complex.I) * (-1) := by
  calc
    rectangleBoundaryIntegral N polePrincipalPart =
        rectangleBoundaryIntegral N
          (fun s => (-1 : ℂ) * unitPole (1 : ℂ) s) := by
          congr 1
          funext s
          simp [polePrincipalPart, unitPole]
    _ = (-1 : ℂ) * rectangleBoundaryIntegral N (unitPole (1 : ℂ)) :=
          rectangleBoundaryIntegral_const_mul N (-1) (unitPole (1 : ℂ))
    _ = (-1 : ℂ) * (2 * (Real.pi : ℂ) * Complex.I) := by
          rw [certificate.unit_pole_integral (1 : ℂ) (one_mem_openRectangle N)]
    _ = (2 * (Real.pi : ℂ) * Complex.I) * (-1) := by ring

/-- Finite linearity upgrades the one-pole geometric theorem to the complete,
source-determined principal part. -/
theorem principal_part_integral {N : ℕ}
    (certificate : RectangleUnitPoleWindingCertificate N) :
    rectangleBoundaryIntegral N (rectanglePrincipalPart N) =
      (2 * (Real.pi : ℂ) * Complex.I) * rectangleResidueMass N := by
  have hnontrivial := certificate.nontrivial_boundaryIntegrable
  have htrivial := certificate.trivial_boundaryIntegrable
  have hpole := certificate.pole_boundaryIntegrable
  calc
    rectangleBoundaryIntegral N (rectanglePrincipalPart N) =
        rectangleBoundaryIntegral N
          (fun s => nontrivialPrincipalPart N s + trivialPrincipalPart N s +
            polePrincipalPart s) := by rfl
    _ = rectangleBoundaryIntegral N
          (fun s => nontrivialPrincipalPart N s + trivialPrincipalPart N s) +
        rectangleBoundaryIntegral N polePrincipalPart := by
          exact rectangleBoundaryIntegral_add (hnontrivial.add htrivial) hpole
    _ = (rectangleBoundaryIntegral N (nontrivialPrincipalPart N) +
          rectangleBoundaryIntegral N (trivialPrincipalPart N)) +
        rectangleBoundaryIntegral N polePrincipalPart := by
          rw [rectangleBoundaryIntegral_add hnontrivial htrivial]
    _ = (2 * (Real.pi : ℂ) * Complex.I) * rectangleResidueMass N := by
          rw [certificate.nontrivial_principalPart_integral,
            certificate.trivial_principalPart_integral,
            certificate.pole_principalPart_integral]
          unfold rectangleResidueMass
          ring

/-- Construct the prior winding certificate from the single universal interior
pole theorem. -/
def toPrincipalPartWindingCertificate {N : ℕ}
    (certificate : RectangleUnitPoleWindingCertificate N) :
    RectanglePrincipalPartWindingCertificate N where
  principal_part_integral := certificate.principal_part_integral

end RectangleUnitPoleWindingCertificate

/-- A point on the lower boundary is not a strict interior point; the winding
premise must not silently include boundary poles. -/
theorem bottom_boundary_not_open_fixture (N : ℕ) (u : ℝ) :
    bottomPoint N u ∉ openRectangle N := by
  intro h
  have hi := ((mem_openRectangle_iff N _).mp h).2.2.1
  simp only [bottomPoint_im] at hi
  linarith

end

end GRWTSK.RiemannHypothesis.CanonicalRectanglePrincipalPartWinding
```
