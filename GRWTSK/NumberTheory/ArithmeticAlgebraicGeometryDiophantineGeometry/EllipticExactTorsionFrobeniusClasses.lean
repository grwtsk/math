/-
Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
AI-assisted source candidate / independent review NOT_RUN.
LEAN_ELABORATION_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.EllipticTorsionFrobeniusSpinControl
import Mathlib

/-!
# Exact elliptic torsion-order classes under source-typed transport and spin heat

The existing `TorsionFrobeniusSpin.TorsionLevel W n` is the *actual*
`{P : W.Point // n • P = 0}`. It includes points of every order dividing
n, and it is not the class of points of *exactly* order n. We retain that
source and define the disjoint, positive-exact-order fibers below. The zero
point has exact order one. The assertion does not assume any prime-to-p
restriction; n may be divisible by the characteristic.

A supplied additive equivalence of the native Weierstrass point group
preserves both n-kernels and every exact-order class. The map into the
original n-kernel commutes with the existing `torsionTransport` *on the
same source points*. This is a proved type/fiber compatibility, not a
new elliptic group law or identification of labels with group elements.

On a finite exact-order fiber, the standard 3/4, 1/8, 1/8 orbit kernel
is a COLUMN-stochastic rational Markov kernel (target,source convention).
Every finite iterate preserves total mass and nonnegative densities;
pointwise complex spin energy is nonnegative and unitary-gauge invariant.
A signed amplitude is NOT a Markov probability. Frobenius is an admissible
source only once its genuine geometric action has been identified with
the supplied additive equivalence.

Boundaries: for p dividing n, geometric p-torsion points do not generally
recover the nonreduced p-primary *finite flat group scheme*. No isomorphism
with (Z/n)^2, full torsion classification, Hasse bound, trace identity,
finite-field zeta identity or RH follows from Markov/spin positivity.
Every native point in a positive n-kernel belongs to some unique
positive exact-order fiber, by the least positive annihilating integer.
The proof is elementary Nat.find minimality, not an external group-scheme
equivalence or a classification of which abstract torsion groups occur.

Sources: Mathlib `WeierstrassCurve.Point`; existing `TorsionFrobeniusSpin`
source pinned at grwtsk/math@859cb74d7b56cd6c744aab5e449ec09b906f862e
(blob c27b37c0998cdd5a507153f1bc15a8bbfc8bb178). Mathematical
background: Silverman, *Arithmetic of Elliptic Curves*, second edition,
Chapter III §6 and Chapter V §3 (torsion and Frobenius). Elementary
abelian-group and finite Markov facts; no novelty is asserted.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.ExactTorsionFrobenius

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RootHeatState
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.TorsionFrobeniusSpin

universe u
variable {F : Type u} [Field F] (W : WeierstrassCurve F) [W.IsElliptic]

/-- A positive exact annihilating order, on Mathlib's actual curve-point
additive group. The minimality clauses are part of the proposition. -/
def ExactOrder (n : ℕ) (P : W.Point) : Prop :=
  0 < n ∧ n • P = 0 ∧
    ∀ m : ℕ, 0 < m → m < n → m • P ≠ 0

/-- All points of exact order n. The zero-order label n=0 has no
inhabitants; a true zero point belongs to the n=1 class. -/
def ExactClass (n : ℕ) : Type u :=
  {P : W.Point // ExactOrder W n P}

/-- The exact class is a subfiber of the preexisting n-kernel;
no exact-order class is identified with the entire n-kernel. -/
def toTorsionLevel (n : ℕ) (P : ExactClass W n) :
    TorsionLevel W n :=
  ⟨P.1, P.2.2.1⟩

/-- An additive equivalence preserves exact annihilating order in both
directions; no field-level Frobenius equation is assumed. -/
theorem exactOrder_map_iff (phi : W.Point ≃+ W.Point)
    (n : ℕ) (P : W.Point) :
    ExactOrder W n (phi P) ↔ ExactOrder W n P := by
  constructor
  · rintro ⟨hn, hk, hmin⟩
    refine ⟨hn, ?_, ?_⟩
    · apply phi.injective
      simpa only [map_nsmul, map_zero] using hk
    · intro m hm hmn hz
      apply hmin m hm hmn
      have hh := congrArg (fun Q : W.Point => phi Q) hz
      simpa only [map_nsmul, map_zero] using hh
  · rintro ⟨hn, hk, hmin⟩
    refine ⟨hn, ?_, ?_⟩
    · have hh := congrArg (fun Q : W.Point => phi Q) hk
      simpa only [map_nsmul, map_zero] using hh
    · intro m hm hmn hz
      apply hmin m hm hmn
      apply phi.injective
      simpa only [map_nsmul, map_zero] using hz

/-- The genuine source-point equivalence restricts to each exact-order
class. This carries all n simultaneously, rather than choosing a list of
favorable torsion orders. -/
def exactTransport (phi : W.Point ≃+ W.Point) (n : ℕ) :
    ExactClass W n ≃ ExactClass W n where
  toFun P := ⟨phi P.1, (exactOrder_map_iff W phi n P.1).mpr P.2⟩
  invFun P := ⟨phi.symm P.1, (exactOrder_map_iff W phi.symm n P.1).mpr P.2⟩
  left_inv P := Subtype.ext (phi.left_inv P.1)
  right_inv P := Subtype.ext (phi.right_inv P.1)

/-- Exact class transport and the original n-kernel transport agree on
the literal underlying curve points. This is a source return, not merely
a coincidence of class cardinalities. -/
theorem exactTransport_toTorsionLevel (phi : W.Point ≃+ W.Point)
    (n : ℕ) (P : ExactClass W n) :
    toTorsionLevel W n (exactTransport W phi n P) =
      torsionTransport W phi n (toTorsionLevel W n P) := by
  apply Subtype.ext
  rfl

/-- Different positive exact orders cannot label the same native point.
The `n`-kernels themselves may overlap: that does NOT contradict this. -/
theorem exactOrder_disjoint {n m : ℕ} (hnm : n ≠ m) (P : W.Point)
    (hn : ExactOrder W n P) (hm : ExactOrder W m P) : False := by
  rcases lt_or_gt_of_ne hnm with hlt | hgt
  · exact hm.2.2 n hn.1 hlt hn.2.1
  · exact hn.2.2 m hm.1 hgt hm.2.1

/-- Every point in an actual positive n-kernel has a MINIMAL positive
annihilator. Together with `exactOrder_disjoint`, this shows that all
geometric torsion points lie in exactly one exact-order fiber. The
statement requires no characteristic restriction and does not recover
the infinitesimal part of a p-primary torsion group scheme. -/
theorem torsionLevel_has_exact_class (n : ℕ) (hn : 0 < n)
    (P : TorsionLevel W n) :
    ∃ d : ℕ, ExactOrder W d P.1 := by
  classical
  let h : ∃ d : ℕ, 0 < d ∧ d • P.1 = 0 := ⟨n, hn, P.2⟩
  obtain ⟨hdpos, hdkill⟩ := Nat.find_spec h
  refine ⟨Nat.find h, ⟨hdpos, hdkill, ?_⟩⟩
  intro m hm hmd hzero
  exact (Nat.find_min h hmd) ⟨hm, hzero⟩

/-- No geometric point has exact order zero. -/
theorem no_exact_order_zero (P : W.Point) :
    ¬ ExactOrder W 0 P := by
  intro h
  exact (lt_irrefl (0 : ℕ)) h.1

section FiniteExactClass
variable {n : ℕ} [Fintype (ExactClass W n)]

/-- The source-column-normalized three-point orbit measure, restricted to
the exact-order class rather than the larger n-kernel. -/
noncomputable def exactOrbitKernel (phi : W.Point ≃+ W.Point) :
    HeatKernel (ExactClass W n) := by
  classical
  let b := exactTransport W phi n
  refine {
    transition := fun target source =>
      (if target = source then (3 / 4 : ℚ) else 0) +
      (if target = b source then (1 / 8 : ℚ) else 0) +
      (if target = b.symm source then (1 / 8 : ℚ) else 0)
    nonnegative := ?_
    stochastic := ?_ }
  · intro target source
    split_ifs <;> norm_num
  · intro source
    simp only [Finset.sum_add_distrib]
    simp
    norm_num

/-- Every exact-order class has mass-preserving diffusion for every step. -/
theorem exactOrbitKernel_mass (phi : W.Point ≃+ W.Point)
    (v : ExactClass W n → ℚ) :
    (∑ P, (exactOrbitKernel W (n := n) phi).step v P) = ∑ P, v P :=
  (exactOrbitKernel W (n := n) phi).step_mass v

/-- Pointwise density positivity survives each exact-order diffusion. -/
theorem exactOrbitKernel_nonneg (phi : W.Point ≃+ W.Point)
    (v : ExactClass W n → ℚ) (hv : ∀ P, 0 ≤ v P) :
    ∀ P, 0 ≤ (exactOrbitKernel W (n := n) phi).step v P :=
  (exactOrbitKernel W (n := n) phi).step_nonneg v hv

/-- The entire finite processing loop preserves both invariants, at all
iteration indices. No scheduler or runtime agent is declared here. -/
theorem exactOrbitKernel_evolve_mass (phi : W.Point ≃+ W.Point)
    (v : ExactClass W n → ℚ) (k : ℕ) :
    (∑ P, (exactOrbitKernel W (n := n) phi).evolve v k P) = ∑ P, v P :=
  (exactOrbitKernel W (n := n) phi).evolve_mass v k

theorem exactOrbitKernel_evolve_nonneg (phi : W.Point ≃+ W.Point)
    (v : ExactClass W n → ℚ) (hv : ∀ P, 0 ≤ v P) (k : ℕ) :
    ∀ P, 0 ≤ (exactOrbitKernel W (n := n) phi).evolve v k P :=
  (exactOrbitKernel W (n := n) phi).evolve_nonneg v hv k

/-- The real nonnegative spin quadratic form on an exact torsion class;
complex torsion characters and nonbinary phases are retained. -/
def exactMagneticForm (phi : W.Point ≃+ W.Point)
    (phase f : ExactClass W n → ℂ) : ℝ :=
  ∑ P : ExactClass W n,
    ‖f (exactTransport W phi n P) - phase P * f P‖ ^ 2

theorem exactMagneticForm_nonneg (phi : W.Point ≃+ W.Point)
    (phase f : ExactClass W n → ℂ) :
    0 ≤ exactMagneticForm W (n := n) phi phase f := by
  unfold exactMagneticForm
  exact Finset.sum_nonneg (fun P _ => sq_nonneg _)

/-- The local exact-class unitary gauge transforms the connection along
the transported edge, not at an unrelated vertex. -/
def exactPhaseGauge (phi : W.Point ≃+ W.Point)
    (phase gauge : ExactClass W n → ℂ) (P : ExactClass W n) : ℂ :=
  gauge (exactTransport W phi n P) * phase P * (gauge P)⁻¹

def exactFieldGauge (gauge f : ExactClass W n → ℂ) (P : ExactClass W n) : ℂ :=
  gauge P * f P

/-- All original exact-order phases are retained under unitary gauge;
an arbitrary nonunitary rescaling is not allowed. -/
theorem exactMagneticForm_gauge_invariant (phi : W.Point ≃+ W.Point)
    (phase gauge f : ExactClass W n → ℂ)
    (hg : ∀ P, ‖gauge P‖ = 1) :
    exactMagneticForm W (n := n) phi
      (exactPhaseGauge W (n := n) phi phase gauge)
      (exactFieldGauge W (n := n) gauge f) =
        exactMagneticForm W (n := n) phi phase f := by
  unfold exactMagneticForm
  apply Finset.sum_congr rfl
  intro P _
  have hne : gauge P ≠ 0 := by
    intro h
    have ht := hg P
    simp [h] at ht
  have hfactor :
      exactFieldGauge W (n := n) gauge f (exactTransport W phi n P) -
      exactPhaseGauge W (n := n) phi phase gauge P *
        exactFieldGauge W (n := n) gauge f P =
      gauge (exactTransport W phi n P) *
        (f (exactTransport W phi n P) - phase P * f P) := by
    dsimp [exactFieldGauge, exactPhaseGauge]
    field_simp [hne]
    ring
  rw [hfactor, norm_mul, hg]
  simp

end FiniteExactClass
end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.ExactTorsionFrobenius
