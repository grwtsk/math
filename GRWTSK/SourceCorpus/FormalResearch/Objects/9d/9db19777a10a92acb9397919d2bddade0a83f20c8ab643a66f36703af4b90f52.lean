import FormalResearch.RiemannHypothesis.XiToeplitz
import FormalResearch.RiemannHypothesis.ZeroSymmetry
import FormalResearch.PositiveAtlas.Grassmannian.SectorProducts
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Arctan
import Mathlib.Analysis.Real.Pi.Bounds

/-!
# Actual xi: finite-height-to-finite-order implication

The conclusion concerns the unchanged XiToeplitz.coefficient at all positions.
Two analytic inputs are EXPLICIT and are not proved by this file:
(1) a finite-height zero theorem for the exact NontrivialZetaZero predicate;
(2) a conjugate-paired product with coefficientwise limit equal to the actual
    xi coefficient sequence and its actual positive constant term.
Neither input assumes PF_R or RH at all heights. No axiom or admitted proof
supplies either input. The published Platt--Trudgian theorem is cited, not
silently installed as a Lean proof. Multiplicity repeats live in Lists, not sets.
-/

namespace FormalResearch.RiemannHypothesis.XiFiniteOrder

open Filter
open scoped Topology
open FormalResearch.PositiveAtlas.Grassmannian
open FormalResearch.PositiveAtlas.Grassmannian.Toeplitz
open FormalResearch.PositiveAtlas.Grassmannian.Toeplitz.Sector

noncomputable section

/-- The exact finite-height zero-location input, independent of any PF predicate. -/
def FiniteHeightRH (H : ℝ) : Prop :=
  ∀ ρ : ℂ, NontrivialZetaZero ρ → 0 < |ρ.im| → |ρ.im| ≤ H → ρ.re = 1 / 2

/-- Off-line actual zeros must be above the supplied verified height. -/
theorem offline_above_height (H : ℝ) (h : FiniteHeightRH H) (ρ : ℂ)
    (hz : NontrivialZetaZero ρ) (hi : ρ.im ≠ 0) (ho : ρ.re ≠ 1 / 2) : H < |ρ.im| := by
  by_contra hle
  exact ho (h ρ hz (abs_pos.mpr hi) (le_of_not_gt hle))

/-- Actual zero symmetry gives the required strip width without an RH hypothesis. -/
theorem transverse_strip (ρ : ℂ) (hz : NontrivialZetaZero ρ) :
    |ρ.re - 1 / 2| < 1 / 2 := by
  have hs := hz.mem_critical_strip
  apply abs_lt.mpr
  constructor <;> linarith

/-- A line factor or a conjugate pair labelled by an actual nontrivial zero.
The pair constructor does not impose a critical-line condition. -/
inductive RootFactor where
  | line (ρ : ℂ) (zero : NontrivialZetaZero ρ)
      (onLine : ρ.re = 1 / 2) (heightNonzero : ρ.im ≠ 0)
  | pair (ρ : ℂ) (zero : NontrivialZetaZero ρ)
      (offLine : ρ.re ≠ 1 / 2) (heightNonzero : ρ.im ≠ 0)

/-- The inverse squared modulus of the centered root. -/
def pairScale (δ γ : ℝ) : ℝ := 1 / (δ ^ 2 + γ ^ 2)

/-- Each source-labelled factor has its concrete sector parameters. -/
def RootFactor.toFactor : RootFactor → Factor
  | .line ρ _ _ _ => .linear (1 / ρ.im ^ 2)
  | .pair ρ _ _ _ => .pair (pairScale (ρ.re - 1 / 2) ρ.im)
      (transverseAngle (ρ.re - 1 / 2) ρ.im)

/-- Cosine of twice arctangent, with its positive real denominator retained. -/
theorem cos_twice_arctan (x : ℝ) :
    Real.cos (2 * Real.arctan x) = (1 - x ^ 2) / (1 + x ^ 2) := by
  have h : 1 + x ^ 2 ≠ 0 := by positivity
  simp only [Real.cos_two_mul, Real.cos_sq_arctan]
  field_simp [h]
  ring

/-- The trigonometric pair parameters are the original rational root coefficients. -/
theorem pair_parameters (δ γ : ℝ) (hγ : γ ≠ 0) :
    2 * pairScale δ γ * Real.cos (transverseAngle δ γ) =
      2 * (γ ^ 2 - δ ^ 2) / (δ ^ 2 + γ ^ 2) ^ 2 ∧
    pairScale δ γ ^ 2 = 1 / (δ ^ 2 + γ ^ 2) ^ 2 := by
  have hg : γ ^ 2 ≠ 0 := pow_ne_zero _ hγ
  have hD : δ ^ 2 + γ ^ 2 ≠ 0 := by
    have hgp : 0 < γ ^ 2 := sq_pos_of_ne_zero hγ
    nlinarith [sq_nonneg δ]
  have hQ : 1 + δ ^ 2 / γ ^ 2 ≠ 0 := by positivity
  constructor
  · unfold transverseAngle pairScale
    rw [cos_twice_arctan]
    simp only [div_pow, sq_abs]
    field_simp [hg, hD, hQ]
    ring
  · simp [pairScale]

/-- Clearing the actual conjugate-root denominators preserves their signed coefficients.
The nonzero-height condition is needed only when dividing this identity. -/
theorem cleared_root_pair (δ γ : ℝ) (w : ℂ) :
    (((δ : ℂ) + (γ : ℂ) * Complex.I) ^ 2 - w) *
      (((δ : ℂ) - (γ : ℂ) * Complex.I) ^ 2 - w) =
    (((δ ^ 2 + γ ^ 2 : ℝ) : ℂ) ^ 2) +
      ((2 * (γ ^ 2 - δ ^ 2) : ℝ) : ℂ) * w + w ^ 2 := by
  apply Complex.ext <;>
    simp [pow_two, Complex.mul_re, Complex.mul_im, Complex.add_re, Complex.add_im,
      Complex.sub_re, Complex.sub_im] <;> ring

/-- Every actual paired factor obeys the finite-order sector condition. -/
theorem RootFactor.admissible (H : ℝ) (R : ℕ)
    (hH : 0 < H) (hbound : (R : ℝ) + 1 ≤ Real.pi * H)
    (hheight : FiniteHeightRH H) (f : RootFactor) : f.toFactor.Admissible R := by
  cases f with
  | line ρ hz hl hi =>
    change 0 ≤ 1 / ρ.im ^ 2
    positivity
  | pair ρ hz ho hi =>
    have hγ := offline_above_height H hheight ρ hz hi ho
    have hθ := transverseAngle_lt (ρ.re - 1 / 2) ρ.im H (transverse_strip ρ hz) hH hγ
    have hR : 0 < (R : ℝ) + 1 := by positivity
    have hscale : 0 ≤ pairScale (ρ.re - 1 / 2) ρ.im := by unfold pairScale; positivity
    refine ⟨hscale, transverseAngle_nonnegative _ _, ?_⟩
    have hmul := mul_lt_mul_of_pos_left hθ hR
    have hdiv : ((R : ℝ) + 1) / H ≤ Real.pi := (div_le_iff₀ hH).mpr hbound
    have he : ((R : ℝ) + 1) * (1 / H) = ((R : ℝ) + 1) / H := by ring
    rw [he] at hmul
    exact hmul.le.trans hdiv

/-- The actual conjugate-paired product obligation. Its limit is the existing
arithmetic tape, not a chosen positive model. No determinant predicate occurs.
A proof must establish normalization, absence of real zeros, actual Hadamard
factorization, multiplicity coverage, locally uniform convergence, and coefficient
transport. Such a proof is not supplied by the record of the finite-height theorem. -/
def ActualPairedProduct : Prop :=
  0 < XiToeplitz.coefficient 0 ∧
    ∃ P : ℕ → List RootFactor,
      ∀ n, Tendsto
        (fun j => XiToeplitz.coefficient 0 * productCoefficient ((P j).map RootFactor.toFactor) n)
        atTop (𝓝 (XiToeplitz.coefficient n))

/-- Finite-height-to-finite-order transfer with BOTH unproved analytic inputs visible. -/
theorem xi_pfOrder_of_height (H : ℝ) (R : ℕ)
    (hH : 0 < H) (hbound : (R : ℝ) + 1 ≤ Real.pi * H)
    (hheight : FiniteHeightRH H) (hsource : ActualPairedProduct) :
    PFOrder R XiToeplitz.coefficient := by
  obtain ⟨h0, P, hlim⟩ := hsource
  apply pfOrder_of_product_limit R (fun j => (P j).map RootFactor.toFactor)
    XiToeplitz.coefficient (XiToeplitz.coefficient 0) h0 _ hlim
  intro j f hf
  obtain ⟨g, _, rfl⟩ := List.mem_map.mp hf
  exact g.admissible H R hH hbound hheight

/-- The conservative height from the published result; it is not a proof witness. -/
def publishedHeight : ℝ := 3000000000000

/-- A conservative order bound, using only pi > 3. -/
def publishedOrder : ℕ := 8999999999999

/-- The order arithmetic is independently checkable, unlike the zero computation. -/
theorem published_order_bound :
    0 < publishedHeight ∧ (publishedOrder : ℝ) + 1 ≤ Real.pi * publishedHeight := by
  constructor
  · norm_num [publishedHeight]
  · dsimp [publishedOrder, publishedHeight]
    nlinarith [Real.pi_gt_three]

/-- Exact statement of the externally published zero input, not an axiom or instance. -/
def PublishedHeightInput : Prop := FiniteHeightRH publishedHeight

/-- The numerical order conclusion remains conditional on the unpublished-in-Lean inputs. -/
theorem xi_published_order (hheight : PublishedHeightInput) (hsource : ActualPairedProduct) :
    PFOrder publishedOrder XiToeplitz.coefficient :=
  xi_pfOrder_of_height publishedHeight publishedOrder
    published_order_bound.1 published_order_bound.2 hheight hsource

/-- Blocks no larger than the proved order are totally nonnegative. -/
theorem actual_block_nonnegative (H : ℝ) (R N : ℕ)
    (hH : 0 < H) (hbound : (R : ℝ) + 1 ≤ Real.pi * H)
    (hheight : FiniteHeightRH H) (hsource : ActualPairedProduct) (hN : N ≤ R) :
    Toeplitz.FiniteNonnegative (XiToeplitz.stage N) :=
  (xi_pfOrder_of_height H R hH hbound hheight hsource).block_nonnegative hN

/-- Source total nonnegativity reaches the existing signed graph at these sizes. -/
theorem actual_frame_nonnegative (H : ℝ) (R N : ℕ)
    (hH : 0 < H) (hbound : (R : ℝ) + 1 ≤ Real.pi * H)
    (hheight : FiniteHeightRH H) (hsource : ActualPairedProduct) (hN : N ≤ R) :
    AllOrderedMinorsNonneg (SignedGraph.frame (XiToeplitz.stage N)) :=
  SignedMinorElimination.frame_nonnegative_of_source _
    (actual_block_nonnegative H R N hH hbound hheight hsource hN)

/-- The intrinsic target is the pre-existing actual xi stage plane, not a surrogate. -/
theorem actual_plane_nonnegative (H : ℝ) (R N : ℕ)
    (hH : 0 < H) (hbound : (R : ℝ) + 1 ≤ Real.pi * H)
    (hheight : FiniteHeightRH H) (hsource : ActualPairedProduct) (hN : N ≤ R) :
    IntrinsicNonnegative (XiToeplitz.stagePlane N) :=
  SignedGraph.intrinsicNonnegative_of_frame _
    (actual_frame_nonnegative H R N hH hbound hheight hsource hN)

/-- Larger ambient blocks retain each coordinate whose DECODED source-minor order
is within R. No unsupported positive-locus claim is made for the whole plane. -/
theorem actual_coordinate_nonnegative (H : ℝ) (R N : ℕ)
    (hH : 0 < H) (hbound : (R : ℝ) + 1 ≤ Real.pi * H)
    (hheight : FiniteHeightRH H) (hsource : ActualPairedProduct)
    (S : Fin N ↪o Fin (N + N))
    (hsize : (SignedMinorElimination.decodeSelection N N S).size ≤ R) :
    0 ≤ orderedMinor (SignedGraph.frame (XiToeplitz.stage N)) S := by
  rw [SignedMinorElimination.frame_minor_eq_decoded]
  let d := SignedMinorElimination.decodeSelection N N S
  exact (pfOrder_iff_blocks R XiToeplitz.coefficient).mp
    (xi_pfOrder_of_height H R hH hbound hheight hsource) N
    d.size hsize d.rows d.columns

end

end FormalResearch.RiemannHypothesis.XiFiniteOrder
