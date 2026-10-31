/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib

/-!
# Exact residue-graded finite Fourier interactions

Local attribution: grwtsk contributors.

The previous seven-color rotor is a special case of a quotient grading
rho : Mode ->+ G, where Mode is an additive mode lattice and G is any
additive abelian group. The mode lattice may in particular be Z^3, with G
a finite abelian quotient. We retain the actual signed, complex quadratic
interaction kernel K(k,p,q), which may depend on the output mode k.

Every finite interaction pair is either retained by a Boolean residue mask
or included in the omitted residual. There is no assertion that a short
cyclic residue band includes every nonlinear Navier--Stokes interaction.
Incompressibility, the Leray projection, spatial Fourier inversion, a
Galerkin limit and an implementation/rounding refinement are separate
source-preserving obligations, not fields hidden inside the mask.

The identity and its exact norm allowance are mathematical source candidates.
LEAN_BUILD, FRESH_KERNEL, AXIOM_AUDIT: NOT_RUN.
-/

noncomputable section

namespace GRWTSK.HarmonicAnalysisOnEuclideanSpaces.ResidueGradedConvolution

variable {Mode G : Type*}
variable [AddCommGroup Mode] [DecidableEq Mode] [AddCommGroup G]

/-- A physical wavevector sum determines the receiving residue class. -/
theorem pair_residue_conservation (rho : Mode →+ G) (p q k : Mode)
    (h : p + q = k) :
    rho p + rho q = rho k := by
  calc
    rho p + rho q = rho (p + q) := (rho.map_add p q).symm
    _ = rho k := congrArg rho h

/-- Real-field conjugate frequency pairs occupy opposite residue classes. -/
theorem negative_residue (rho : Mode →+ G) (p : Mode) :
    rho (-p) = -rho p := by
  exact map_neg rho p

/-- The complete coefficient for an ordered quadratic pair, output k. -/
def pairCoefficient (K : Mode → Mode → Mode → ℂ)
    (k : Mode) (pq : Mode × Mode) : ℂ :=
  if pq.1 + pq.2 = k then K k pq.1 pq.2 else 0

/-- Any designated residue-pair mask; no analytic property is presumed. -/
def retainedTerm (rho : Mode →+ G) (mask : G → G → Bool)
    (K : Mode → Mode → Mode → ℂ) (k : Mode) (pq : Mode × Mode) : ℂ :=
  if mask (rho pq.1) (rho pq.2) then pairCoefficient K k pq else 0

/-- Exactly the interactions omitted by the chosen mask. -/
def omittedTerm (rho : Mode →+ G) (mask : G → G → Bool)
    (K : Mode → Mode → Mode → ℂ) (k : Mode) (pq : Mode × Mode) : ℂ :=
  if mask (rho pq.1) (rho pq.2) then 0 else pairCoefficient K k pq

theorem pairCoefficient_partition (rho : Mode →+ G) (mask : G → G → Bool)
    (K : Mode → Mode → Mode → ℂ) (k : Mode) (pq : Mode × Mode) :
    pairCoefficient K k pq =
      retainedTerm rho mask K k pq + omittedTerm rho mask K k pq := by
  cases hm : mask (rho pq.1) (rho pq.2) <;>
    simp [retainedTerm, omittedTerm, hm]

/-- One finite spectral box; multiplicities and both ordered orientations remain. -/
def fullAt (S : Finset Mode) (K : Mode → Mode → Mode → ℂ) (k : Mode) : ℂ :=
  ∑ pq in S.product S, pairCoefficient K k pq

/-- The residue-banded part, with the same output, inputs, and kernel. -/
def retainedAt (rho : Mode →+ G) (mask : G → G → Bool)
    (S : Finset Mode) (K : Mode → Mode → Mode → ℂ) (k : Mode) : ℂ :=
  ∑ pq in S.product S, retainedTerm rho mask K k pq

/-- Source-bound off-band residual; not an adjustable error certificate. -/
def omittedAt (rho : Mode →+ G) (mask : G → G → Bool)
    (S : Finset Mode) (K : Mode → Mode → Mode → ℂ) (k : Mode) : ℂ :=
  ∑ pq in S.product S, omittedTerm rho mask K k pq

/-- Exact signed return to the full finite quadratic observation. -/
theorem fullAt_eq_retained_add_omitted
    (rho : Mode →+ G) (mask : G → G → Bool)
    (S : Finset Mode) (K : Mode → Mode → Mode → ℂ) (k : Mode) :
    fullAt S K k = retainedAt rho mask S K k +
      omittedAt rho mask S K k := by
  unfold fullAt retainedAt omittedAt
  calc
    (∑ pq in S.product S, pairCoefficient K k pq) =
        ∑ pq in S.product S,
          (retainedTerm rho mask K k pq + omittedTerm rho mask K k pq) := by
      apply Finset.sum_congr rfl
      intro pq hpq
      exact pairCoefficient_partition rho mask K k pq
    _ = (∑ pq in S.product S, retainedTerm rho mask K k pq) +
        (∑ pq in S.product S, omittedTerm rho mask K k pq) := by
      rw [Finset.sum_add_distrib]

/-- Any filtered value needs the norm of its *actual* omitted signed term. -/
theorem fullAt_norm_le
    (rho : Mode →+ G) (mask : G → G → Bool)
    (S : Finset Mode) (K : Mode → Mode → Mode → ℂ) (k : Mode) :
    ‖fullAt S K k‖ ≤
      ‖retainedAt rho mask S K k‖ +
      ‖omittedAt rho mask S K k‖ := by
  rw [fullAt_eq_retained_add_omitted rho mask S K k]
  exact norm_add_le _ _

/-- A supplied error estimate becomes a source-exact output bound. -/
theorem fullAt_le_of_filtered_and_residual_bounds
    (rho : Mode →+ G) (mask : G → G → Bool)
    (S : Finset Mode) (K : Mode → Mode → Mode → ℂ)
    (k : Mode) (B eps : ℝ)
    (hfiltered : ‖retainedAt rho mask S K k‖ ≤ B)
    (hresidual : ‖omittedAt rho mask S K k‖ ≤ eps) :
    ‖fullAt S K k‖ ≤ B + eps := by
  have h := fullAt_norm_le rho mask S K k
  linarith

/-- Without filtering the omitted *source* interaction is identically zero. -/
theorem omittedAt_all_retained
    (rho : Mode →+ G) (S : Finset Mode)
    (K : Mode → Mode → Mode → ℂ) (k : Mode) :
    omittedAt rho (fun _ _ => true) S K k = 0 := by
  simp [omittedAt, omittedTerm]

/-- A symmetry obligation for filters intended to preserve real-valuedness. -/
def ConjugateCompatible (mask : G → G → Bool) : Prop :=
  ∀ a b, mask (-a) (-b) = mask a b

end GRWTSK.HarmonicAnalysisOnEuclideanSpaces.ResidueGradedConvolution

end
