import FormalResearch.RiemannHypothesis.XiToeplitz
import FormalResearch.PositiveAtlas.Grassmannian.PositiveLift
import Mathlib.MeasureTheory.Integral.Bochner.Basic
import Mathlib.Tactic

/-!
# Theta-tail positive-lift targets for the actual xi coefficient tape

The actual xi coefficient sequence is already fixed independently in
`XiToeplitz`.  This file introduces the explicit Riemann theta kernel proposed
for a source-specific positive lift and records the exact remaining analytic
obligations without installing any of them as axioms.

The finite Cauchy--Binet algebra is proved in
`PositiveAtlas.Grassmannian.PositiveLift`.  The new mathematical target is the
sign regularity of the repeated theta tails.  A separate boundary-completion
target is retained because a separating cut does not cover every ordered
Toeplitz minor.
-/

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

open MeasureTheory Set
open FormalResearch.PositiveAtlas.Grassmannian
open FormalResearch.PositiveAtlas.Grassmannian.Toeplitz

noncomputable section

/-- One positive-mode candidate in the factorized Riemann theta kernel.
The natural index `m` represents the classical mode `m+1`. -/
def thetaPhiTerm (m : ℕ) (t : ℝ) : ℝ :=
  let n : ℝ := (m + 1 : ℕ)
  Real.pi * n ^ 2 * Real.exp (5 * t) *
    (2 * Real.pi * n ^ 2 * Real.exp (4 * t) - 3) *
      Real.exp (-Real.pi * n ^ 2 * Real.exp (4 * t))

/-- The source-specific theta kernel
`Phi(t)=sum_{m>=1} pi*m^2*e^(5t)*(2*pi*m^2*e^(4t)-3)*e^(-pi*m^2*e^(4t))`.
Summability and strict positivity are theorem obligations below. -/
def thetaPhi (t : ℝ) : ℝ :=
  ∑' m : ℕ, thetaPhiTerm m t

/-- The universal even Taylor basis used by the centered xi source. -/
def evenBasis (n : ℕ) (t : ℝ) : ℝ :=
  (2 * t) ^ (2 * n) / ((2 * n).factorial : ℝ)

/-- The even basis is nonnegative at every real source coordinate. -/
theorem evenBasis_nonnegative (n : ℕ) (t : ℝ) :
    0 ≤ evenBasis n t := by
  unfold evenBasis
  apply div_nonneg
  · rw [pow_mul]
    exact pow_nonneg (sq_nonneg (2 * t)) n
  · positivity

/-- Repeated positive tail integration.  Order zero is the original theta
kernel.  At successor order this is the normalized q-fold tail. -/
def thetaTail : ℕ → ℝ → ℝ
  | 0 => thetaPhi
  | q + 1 => fun t =>
      ∫ u in Ici t,
        thetaPhi u * (u - t) ^ q / (q.factorial : ℝ)

/-- The zeroth tail is definitionally the original theta kernel. -/
@[simp] theorem thetaTail_zero (t : ℝ) :
    thetaTail 0 t = thetaPhi t := rfl

/-- Source positivity must be proved from the actual theta series and its
convergence, not supplied by the positive-lift algebra. -/
def ThetaPhiPositive : Prop :=
  ∀ t : ℝ, 0 ≤ t → 0 < thetaPhi t

/-- Exact theta integral for the already-defined actual xi coefficients. -/
def ThetaCoefficientFormula : Prop :=
  ∀ n : ℕ,
    XiToeplitz.coefficient n =
      8 * ∫ t in Ici (0 : ℝ), thetaPhi t * evenBasis n t

/-- Pair one repeated theta tail with one universal even basis function. -/
def tailPairing (m q : ℕ) : ℝ :=
  ∫ t in Ici (0 : ℝ),
    thetaTail (2 * q) t * evenBasis m t

/-- The integration-by-parts transport predicted by the source calculation:
`a_(m+q)=8*4^q*integral Phi_(2q)(t)e_m(t)dt`.
Boundary terms, differentiation and integrability must all be proved. -/
def ThetaTailTransport : Prop :=
  ∀ m q : ℕ,
    XiToeplitz.coefficient (m + q) =
      8 * (4 : ℝ) ^ q * tailPairing m q

/-- A separating cut retains how much row shift is paid by the theta tail and
how much column degree remains in the universal basis. -/
structure Separation {k : ℕ}
    (r c : Fin k ↪o ℕ) where
  /-- The common index between every selected row and every selected column. -/
  cut : ℕ
  row_le : ∀ i, r i ≤ cut
  le_column : ∀ j, cut ≤ c j

namespace Separation

variable {k : ℕ} {r c : Fin k ↪o ℕ}

/-- Analytic debt carried by one selected row. -/
def rowDebt (h : Separation r c) (i : Fin k) : ℕ :=
  h.cut - r i

/-- Remaining universal polynomial degree carried by one selected column. -/
def columnDegree (h : Separation r c) (j : Fin k) : ℕ :=
  c j - h.cut

/-- The cut splits every Toeplitz difference exactly into source debt plus
transverse polynomial degree. -/
theorem difference_eq (h : Separation r c) (i j : Fin k) :
    c j - r i = columnDegree h j + rowDebt h i := by
  unfold columnDegree rowDebt
  have hr := h.row_le i
  have hc := h.le_column j
  omega

/-- A separated selection is automatically on or above the Toeplitz diagonal. -/
theorem row_le_column (h : Separation r c) (i j : Fin k) :
    r i ≤ c j :=
  (h.row_le i).trans (h.le_column j)

end Separation

/-- Existence of at least one separating cut for the selected rows and columns. -/
def Separated {k : ℕ} (r c : Fin k ↪o ℕ) : Prop :=
  Nonempty (Separation r c)

/-- Tail transport rewrites every separated Toeplitz entry before taking the
determinant.  No determinant positivity is used. -/
theorem separated_entry_eq_tail
    (htransport : ThetaTailTransport)
    {k : ℕ} {r c : Fin k ↪o ℕ}
    (h : Separation r c) (i j : Fin k) :
    entry XiToeplitz.coefficient (r i) (c j) =
      8 * (4 : ℝ) ^ (h.rowDebt i) *
        tailPairing (h.columnDegree j) (h.rowDebt i) := by
  have hrc : r i ≤ c j := h.row_le_column i j
  rw [entry, if_pos hrc]
  rw [h.difference_eq i j]
  exact htransport (h.columnDegree j) (h.rowDebt i)

/-- The proposed source Pluecker theorem.  The fixed sign is the orientation
created by reversing decreasing row-debt order into increasing tail order.
This is the genuinely new all-orders theorem target; it is not assumed by any
generic Grassmannian definition. -/
def ThetaTailSignRegular : Prop :=
  ∀ k : ℕ, ∀ q : Fin k ↪o ℕ, ∀ t : Fin k ↪o ℝ,
    (∀ i, 0 ≤ t i) →
      0 ≤ (-1 : ℝ) ^ (k * (k - 1) / 2) *
        Matrix.det (fun i j => thetaTail (2 * q i) (t j))

/-- Finite sampled left factor of the proposed Andreief lift. -/
def finiteSourceMatrix {k N : ℕ}
    (q : Fin k → ℕ) (nodes : Fin N → ℝ) :
    Matrix (Fin k) (Fin N) ℝ :=
  fun i x => thetaTail (2 * q i) (nodes x)

/-- Finite sampled right factor of the proposed Andreief lift.  Positive
quadrature weights, when used, belong in this factor and must retain their
signs explicitly. -/
def finiteTransverseMatrix {k N : ℕ}
    (m : Fin k → ℕ) (nodes : Fin N → ℝ) :
    Matrix (Fin N) (Fin k) ℝ :=
  fun x j => evenBasis (m j) (nodes x)

/-- Finite quadrature/source lift before passing to a continuum limit. -/
def finiteLiftMatrix {k N : ℕ}
    (q m : Fin k → ℕ) (nodes : Fin N → ℝ) :
    Matrix (Fin k) (Fin k) ℝ :=
  finiteSourceMatrix q nodes * finiteTransverseMatrix m nodes

/-- The finite positive-lift implication is already exact Cauchy--Binet: once
both sampled ordered-minor families have compatible orientation, the lifted
determinant is nonnegative. -/
theorem finiteLiftMatrix_det_nonnegative {k N : ℕ}
    (q m : Fin k → ℕ) (nodes : Fin N → ℝ)
    (hsource :
      PositiveLift.LeftOrderedNonnegative (finiteSourceMatrix q nodes))
    (htransverse :
      PositiveLift.RightOrderedNonnegative (finiteTransverseMatrix m nodes)) :
    0 ≤ Matrix.det (finiteLiftMatrix q m nodes) := by
  exact PositiveLift.det_mul_nonnegative _ _ hsource htransverse

/-- Exact separated-minor consequence that the continuous Andreief argument
must ultimately supply from tail transport and source sign regularity. -/
def SeparatedMinorNonnegative : Prop :=
  ∀ k : ℕ, ∀ r c : Fin k ↪o ℕ,
    Separation r c →
      0 ≤ minor XiToeplitz.coefficient r c

/-- Analytic closure target: prove the continuum Andreief identity and use the
source and generalized-Vandermonde signs.  This proposition is deliberately an
implication, not an axiom or theorem proof. -/
def ThetaAndreiefClosure : Prop :=
  ThetaTailTransport →
    ThetaTailSignRegular →
      SeparatedMinorNonnegative

/-- The separating-cut construction does not cover all ordered selections.
Those remaining near-diagonal selections must be discharged independently,
rather than hidden inside the Andreief theorem. -/
def ThetaBoundaryCompletion : Prop :=
  ∀ k : ℕ, ∀ r c : Fin k ↪o ℕ,
    ¬ Separated r c →
      0 ≤ minor XiToeplitz.coefficient r c

/-- Once the separated and non-separated cases are genuinely proved, the
unchanged actual xi coefficient tape is PF-infinity. -/
theorem pfInfinity_of_separated_and_boundary
    (hseparated : SeparatedMinorNonnegative)
    (hboundary : ThetaBoundaryCompletion) :
    PFInfinity XiToeplitz.coefficient := by
  intro k r c
  by_cases hs : Separated r c
  · obtain ⟨h⟩ := hs
    exact hseparated k r c h
  · exact hboundary k r c hs

/-- The formal dependency graph for the proposed theta positive-lift route.
None of its analytic premises is manufactured by this theorem. -/
theorem pfInfinity_of_theta_positive_lift
    (htransport : ThetaTailTransport)
    (hsign : ThetaTailSignRegular)
    (handreief : ThetaAndreiefClosure)
    (hboundary : ThetaBoundaryCompletion) :
    PFInfinity XiToeplitz.coefficient := by
  exact pfInfinity_of_separated_and_boundary
    (handreief htransport hsign) hboundary

end

end FormalResearch.RiemannHypothesis.ThetaPositiveLift
