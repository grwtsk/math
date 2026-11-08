/-
Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
AI-assisted source drafting; independent review NOT_RUN.
SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFiniteInvariantMarkovKernel
import GRWTSK.Combinatorics.GraphTheory.SpinHolonomyEventWalk
import Mathlib.AlgebraicGeometry.EllipticCurve.Affine.Point
import Mathlib

/-!
# All-level elliptic torsion, Frobenius transport, and positive spin heat

The point carrier is *Mathlib's* `WeierstrassCurve.Point`, not a newly named
elliptic-curve point law. Every n-kernel is the actual subtype
  { P : W.Point // n • P = 0 }.
The quantified source has no prime-to-characteristic restriction: n can
be divisible by p. At such levels this captures the geometric POINT group,
not the nonreduced full finite flat p-torsion group scheme; those are distinct
carriers and their identification is explicitly NOT asserted.

The supplied additive equivalence `phi` may be instantiated with genuine
q-Frobenius only after a coefficient/base-field comparison and proof that
it acts as an automorphism of the geometric point group. An arbitrary
AddEquiv is not automatically identified as arithmetic Frobenius.

Given a finite torsion fiber and an honest permutation `phi_n`, the
column-stochastic kernel is
 K(target, source) = 3/4 [target=source]
                   + 1/8 [target=phi_n(source)]
                   + 1/8 [target=phi_n^{-1}(source)].
It is nonnegative and mass preserving even at fixed points and periodic
orbits. The magnetic spin form is
 E_sigma(f) = sum_P || f(phi_n P)-sigma(P)*f(P) ||^2 >= 0
for *arbitrary complex* phases; for |sigma|=1 it is gauge invariant.
This includes Boolean/Z2 spin and all supplied unitary torsion characters.

The negation involution is also source-exact. Its existing two-site
rational heat is lossless and it commutes with any additive-equivalence
transport. Frobenius orbit heat need not itself be injective in general;
no unsupported inverse for it is claimed.

The positivity of these finite forms is independent of the Hasse--Weil
bound. The missing geometric Frobenius-source comparison, torsion-fiber
finiteness over algebraic closures, p-primary group scheme and finite-
field zeta characteristic polynomial remain distinct obligations.

Mathematical source: J. Silverman, The Arithmetic of Elliptic Curves,
2nd ed., V.2 (torsion, Frobenius and degree); Hasse's theorem. Kernel
orientation and exact mass laws reuse RootHeatState.HeatKernel. Holonomy
and sign conventions reuse SpinHolonomyEventWalk. No new proof of Hasse,
BSD, ordinary zeta RH or Dirichlet GRH is claimed.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.TorsionFrobeniusSpin

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RootHeatState
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinHolonomyEventWalk
open GRWTSK.NumberTheory.WeilQuadraticForm.FiniteInvariantDiffusion
open GRWTSK.NumberTheory.WeilQuadraticForm.FiniteInvariantDiffusion.Involution

universe u
variable {F : Type u} [Field F] (W : WeierstrassCurve F) [W.IsElliptic]

/-- Exact n-torsion geometric-point carrier, including n divisible by
characteristic. The n=0 case gives the whole point group; the intended
torsion statements use n>0. -/
def TorsionLevel (n : ℕ) : Type u :=
  {P : W.Point // n • P = 0}

/-- Negation preserves every natural-number torsion equation. -/
def torsionNeg (n : ℕ) (P : TorsionLevel W n) : TorsionLevel W n :=
  ⟨-P.1, by
    change n • (-P.1) = 0
    simpa only [smul_neg, P.2, neg_zero]⟩

@[simp] theorem torsionNeg_involutive (n : ℕ) (P : TorsionLevel W n) :
    torsionNeg W n (torsionNeg W n P) = P := by
  apply Subtype.ext
  simp [torsionNeg]

/-- The exact already-available involution carrier: no torsion class
is identified merely because it has the same numerical order. -/
def torsionNegInvolution (n : ℕ) : Involution (TorsionLevel W n) where
  swap := torsionNeg W n
  involutive := torsionNeg_involutive W n

/-- An additive-equivalence source acts on every n-torsion level.
Its identification with arithmetic Frobenius is a separate source port. -/
def torsionTransport (phi : W.Point ≃+ W.Point) (n : ℕ) :
    TorsionLevel W n ≃ TorsionLevel W n where
  toFun P := ⟨phi P.1, by
    have h := congrArg (fun x : W.Point => phi x) P.2
    simpa only [map_nsmul, map_zero] using h⟩
  invFun P := ⟨phi.symm P.1, by
    have h := congrArg (fun x : W.Point => phi.symm x) P.2
    simpa only [map_nsmul, map_zero] using h⟩
  left_inv P := by
    apply Subtype.ext
    exact phi.left_inv P.1
  right_inv P := by
    apply Subtype.ext
    exact phi.right_inv P.1

/-- Additive transport and torsion negation commute pointwise. -/
theorem transport_neg_commute (phi : W.Point ≃+ W.Point) (n : ℕ)
    (P : TorsionLevel W n) :
    torsionTransport W phi n (torsionNeg W n P) =
      torsionNeg W n (torsionTransport W phi n P) := by
  apply Subtype.ext
  exact map_neg phi P.1

/-- The existing *lossless* involution heat on every finite torsion
level. Its analytic meaning is pairwise point/negative-point mixing. -/
def negHeat (n : ℕ) (v : TorsionLevel W n → ℚ) :
    TorsionLevel W n → ℚ :=
  (torsionNegInvolution W n).heatRat v

def negRecover (n : ℕ) (v : TorsionLevel W n → ℚ) :
    TorsionLevel W n → ℚ :=
  (torsionNegInvolution W n).recoverRat v

/-- Exact inversion, including points of order one or two which are fixed
by negation. A positive heat step does not erase the source vector. -/
theorem negRecover_negHeat (n : ℕ) (v : TorsionLevel W n → ℚ) :
    negRecover W n (negHeat W n v) = v :=
  (torsionNegInvolution W n).recover_heatRat v

/-- Negation heat commutes with any additive transport, in particular a
source-identified Frobenius action. -/
theorem negHeat_transport (phi : W.Point ≃+ W.Point) (n : ℕ)
    (v : TorsionLevel W n → ℚ) :
    negHeat W n (fun P => v (torsionTransport W phi n P)) =
      fun P => negHeat W n v (torsionTransport W phi n P) := by
  funext P
  change (3 * v (torsionTransport W phi n P) +
      v (torsionTransport W phi n (torsionNeg W n P))) / 4 =
    (3 * v (torsionTransport W phi n P) +
      v (torsionNeg W n (torsionTransport W phi n P))) / 4
  rw [transport_neg_commute]

section FiniteTorsion
variable {n : ℕ} [Fintype (TorsionLevel W n)]

/-- The source-column-normalized, forward/backward transport heat.
All three contributions are added when the point is fixed. -/
noncomputable def orbitKernel (phi : W.Point ≃+ W.Point) :
    HeatKernel (TorsionLevel W n) := by
  classical
  let b := torsionTransport W phi n
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

/-- The actual finite kernel, not merely a formal positive matrix, is
column stochastic. Source and target are never transposed. -/
theorem orbitKernel_mass (phi : W.Point ≃+ W.Point)
    (v : TorsionLevel W n → ℚ) :
    (∑ P, (orbitKernel W (n := n) phi).step v P) = ∑ P, v P :=
  (orbitKernel W (n := n) phi).step_mass v

/-- Every nonnegative torsion density remains nonnegative at each step. -/
theorem orbitKernel_nonneg (phi : W.Point ≃+ W.Point)
    (v : TorsionLevel W n → ℚ) (hv : ∀ P, 0 ≤ v P) :
    ∀ P, 0 ≤ (orbitKernel W (n := n) phi).step v P :=
  (orbitKernel W (n := n) phi).step_nonneg v hv

/-- Total mass, with every original n-torsion point counted once, is an
invariant of ALL finite iterations. -/
theorem orbitKernel_evolve_mass (phi : W.Point ≃+ W.Point)
    (v : TorsionLevel W n → ℚ) (k : ℕ) :
    (∑ P, (orbitKernel W (n := n) phi).evolve v k P) = ∑ P, v P :=
  (orbitKernel W (n := n) phi).evolve_mass v k

/-- Pointwise positivity is also preserved through every finite iteration. -/
theorem orbitKernel_evolve_nonneg (phi : W.Point ≃+ W.Point)
    (v : TorsionLevel W n → ℚ) (hv : ∀ P, 0 ≤ v P) (k : ℕ) :
    ∀ P, 0 ≤ (orbitKernel W (n := n) phi).evolve v k P :=
  (orbitKernel W (n := n) phi).evolve_nonneg v hv k

/-- A complex magnetic phase is retained at EVERY torsion point, without
assuming it comes from a real sign or a character of an unrelated group. -/
def magneticForm (phi : W.Point ≃+ W.Point)
    (phase f : TorsionLevel W n → ℂ) : ℝ :=
  ∑ P : TorsionLevel W n,
    ‖f (torsionTransport W phi n P) - phase P * f P‖ ^ 2

/-- Nonnegative spin form, for arbitrary complex phases, all n. -/
theorem magneticForm_nonneg (phi : W.Point ≃+ W.Point)
    (phase f : TorsionLevel W n → ℂ) :
    0 ≤ magneticForm W (n := n) phi phase f := by
  unfold magneticForm
  exact Finset.sum_nonneg (fun P _ => sq_nonneg _)

/-- Pointwise unitary gauge change of a magnetic connection. -/
def phaseGauge (phi : W.Point ≃+ W.Point)
    (phase gauge : TorsionLevel W n → ℂ) (P : TorsionLevel W n) : ℂ :=
  gauge (torsionTransport W phi n P) * phase P * (gauge P)⁻¹

def fieldGauge (gauge f : TorsionLevel W n → ℂ) (P : TorsionLevel W n) : ℂ :=
  gauge P * f P

/-- The all-torsion magnetic form is invariant under unitary gauge.
Unitarity is a real hypothesis; a general complex rescaling does not
preserve the norm of the edge defect. -/
theorem magneticForm_gauge_invariant (phi : W.Point ≃+ W.Point)
    (phase gauge f : TorsionLevel W n → ℂ)
    (hg : ∀ P, ‖gauge P‖ = 1) :
    magneticForm W (n := n) phi (phaseGauge W (n := n) phi phase gauge)
      (fieldGauge W (n := n) gauge f) =
      magneticForm W (n := n) phi phase f := by
  classical
  unfold magneticForm
  apply Finset.sum_congr rfl
  intro P _
  have hne : gauge P ≠ 0 := by
    intro h
    have ht := hg P
    simp [h] at ht
  have hfactor :
      fieldGauge W (n := n) gauge f (torsionTransport W phi n P) -
        phaseGauge W (n := n) phi phase gauge P *
          fieldGauge W (n := n) gauge f P =
      gauge (torsionTransport W phi n P) *
        (f (torsionTransport W phi n P) - phase P * f P) := by
    dsimp [fieldGauge, phaseGauge]
    field_simp [hne]
    ring
  rw [hfactor, norm_mul, hg]
  simp

/-- Z/2 spin is an exact specialization, not a replacement for genuine
complex torsion characters. -/
def spinPhase (σ : TorsionLevel W n → Bool) : TorsionLevel W n → ℂ :=
  fun P => if σ P then -1 else 1

theorem spinForm_nonneg (phi : W.Point ≃+ W.Point)
    (σ : TorsionLevel W n → Bool) (f : TorsionLevel W n → ℂ) :
    0 ≤ magneticForm W (n := n) phi (spinPhase W (n := n) σ) f :=
  magneticForm_nonneg W (n := n) phi _ _

end FiniteTorsion

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.TorsionFrobeniusSpin
