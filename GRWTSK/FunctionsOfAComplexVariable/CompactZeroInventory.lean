/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.FunctionsOfAComplexVariable.FiniteLogDerivativeCircle
import Mathlib.Analysis.Analytic.Order
import Mathlib.Topology.DiscreteSubset

/-!
# Complete compact zero inventories from actual analytic sources

A nonzero analytic anchor in a connected domain gives finite-order zeros and a
codiscrete nonzero locus. Compactness then gives a finite COMPLETE zero set,
not a selected numerical list. The inventory below is noncomputable. Its
existence and membership theorem do not decide that it is empty, enumerate
root coordinates effectively, or bound all members' heights uniformly.

The multiplicity is the original source's analyticOrderNatAt. For a closed disk
with zero-free boundary the complete inventory constructs the existing
AnalyticZeroData and hence the actual weighted circle formula; neither zero
completeness nor that integral identity is supplied as an input field.

Primary route: codiscreteness, compactness, actual analytic orders, local
principal parts and circle integration. Uniqueness of complete inventories is
an extensional comparison, not a second analytic proof. A two-root fixture
shows that a selected root is not a complete inventory.
Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612, Analytic/Order and
Topology/DiscreteSubset; upstream licenses and authorship are unchanged.
AI-assisted source; compilation, kernel checking, axiom audit, review: NOT_RUN.
-/

set_option autoImplicit false
open Classical
noncomputable section
open Filter Set Metric
open scoped Topology BigOperators

namespace GRWTSK.Analysis.ComplexAnalysis.CompactZeroInventory

structure AnalyticContext (f : ℂ → ℂ) (U : Set ℂ) where
  analytic : AnalyticOnNhd ℂ f U
  connected : IsConnected U
  anchor : ℂ
  anchor_mem : anchor ∈ U
  anchor_nonzero : f anchor ≠ 0

namespace AnalyticContext

variable {f : ℂ → ℂ} {U : Set ℂ}

theorem finite_zeros (ctx : AnalyticContext f U) (K : Set ℂ)
    (compact : IsCompact K) (contained : K ⊆ U) :
    {z : ℂ | z ∈ K ∧ f z = 0}.Finite := by
  have large : f ⁻¹' ({0} : Set ℂ)ᶜ ∈ codiscreteWithin U :=
    ctx.analytic.preimage_zero_mem_codiscreteWithin
      ctx.anchor_nonzero ctx.anchor_mem ctx.connected
  have small : f ⁻¹' ({0} : Set ℂ)ᶜ ∈ codiscreteWithin K :=
    (codiscreteWithin_mono contained) large
  have equality : K \ (f ⁻¹' ({0} : Set ℂ)ᶜ) =
      {z : ℂ | z ∈ K ∧ f z = 0} := by
    ext z
    simp
  rw [← equality]
  exact compact.finite_sdiff_of_mem_codiscreteWithin small

/-- Mathematical completeness, with no claim of numerical root enumeration. -/
def zeros (ctx : AnalyticContext f U) (K : Set ℂ)
    (compact : IsCompact K) (contained : K ⊆ U) : Finset ℂ :=
  (ctx.finite_zeros K compact contained).toFinset

@[simp] theorem mem_zeros (ctx : AnalyticContext f U) (K : Set ℂ)
    (compact : IsCompact K) (contained : K ⊆ U) (z : ℂ) :
    z ∈ ctx.zeros K compact contained ↔ z ∈ K ∧ f z = 0 := by
  simp [zeros]

theorem zeros_unique (ctx : AnalyticContext f U) (K : Set ℂ)
    (compact : IsCompact K) (contained : K ⊆ U) (S : Finset ℂ)
    (complete : ∀ z : ℂ, z ∈ S ↔ z ∈ K ∧ f z = 0) :
    S = ctx.zeros K compact contained := by
  ext z
  rw [complete, mem_zeros]

/-- Restriction retains any roots on the new compact boundary. -/
theorem zeros_restrict (ctx : AnalyticContext f U) (K L : Set ℂ)
    (hK : IsCompact K) (hL : IsCompact L) (KU : K ⊆ U) (LU : L ⊆ U)
    (KL : K ⊆ L) :
    ctx.zeros K hK KU = (ctx.zeros L hL LU).filter (fun z => z ∈ K) := by
  classical
  ext z
  simp only [mem_zeros, Finset.mem_filter]
  constructor
  · intro h
    exact ⟨⟨KL h.1, h.2⟩, h.1⟩
  · intro h
    exact ⟨h.2, h.1.2⟩

theorem finite_order (ctx : AnalyticContext f U) (z : ℂ) (hz : z ∈ U) :
    analyticOrderAt f z ≠ ⊤ := by
  have anchorOrder : analyticOrderAt f ctx.anchor = 0 :=
    (ctx.analytic ctx.anchor ctx.anchor_mem).analyticOrderAt_eq_zero.mpr ctx.anchor_nonzero
  exact ctx.analytic.analyticOrderAt_ne_top_of_isPreconnected
    ctx.connected.isPreconnected ctx.anchor_mem hz (by simp [anchorOrder])

theorem actual_order (ctx : AnalyticContext f U) (z : ℂ) (hz : z ∈ U) :
    analyticOrderAt f z = (analyticOrderNatAt f z : ℕ∞) :=
  (Nat.cast_analyticOrderNatAt (ctx.finite_order z hz)).symm

/-- Distinct-point counting cannot replace analytic multiplicity. -/
theorem positive_order (ctx : AnalyticContext f U) (z : ℂ) (hz : z ∈ U)
    (zero : f z = 0) : 0 < analyticOrderNatAt f z := by
  apply Nat.pos_of_ne_zero
  intro h
  have hn := (ctx.analytic z hz).analyticOrderAt_ne_zero.mpr zero
  rw [ctx.actual_order z hz, h, Nat.cast_zero] at hn
  exact hn rfl

/-- Completeness is not emptiness; the extra zero-exclusion obligation is exact. -/
theorem zeros_empty_iff (ctx : AnalyticContext f U) (K : Set ℂ)
    (compact : IsCompact K) (contained : K ⊆ U) :
    ctx.zeros K compact contained = ∅ ↔ ∀ z ∈ K, f z ≠ 0 := by
  constructor
  · intro empty z hz hzero
    have member := (ctx.mem_zeros K compact contained z).mpr ⟨hz, hzero⟩
    simpa [empty] using member
  · intro nonzero
    apply Finset.eq_empty_iff_forall_notMem.mpr
    intro z hz
    obtain ⟨inside, zero⟩ := (ctx.mem_zeros K compact contained z).mp hz
    exact nonzero z inside zero

def mass (ctx : AnalyticContext f U) (K : Set ℂ)
    (compact : IsCompact K) (contained : K ⊆ U) : ℕ :=
  ∑ z ∈ ctx.zeros K compact contained, analyticOrderNatAt f z

theorem mass_pos_of_zero (ctx : AnalyticContext f U) (K : Set ℂ)
    (compact : IsCompact K) (contained : K ⊆ U) (z : ℂ)
    (inside : z ∈ K) (zero : f z = 0) : 0 < ctx.mass K compact contained := by
  have member := (ctx.mem_zeros K compact contained z).mpr ⟨inside, zero⟩
  have lower : analyticOrderNatAt f z ≤ ctx.mass K compact contained :=
    Finset.single_le_sum (fun w _ => Nat.zero_le _) member
  exact (ctx.positive_order z (contained inside) zero).trans_le lower

/-- Construct the existing analytic-order contour data from the complete source inventory. -/
def toCircle (ctx : AnalyticContext f U) (c : ℂ) (r : ℝ) (positive : 0 < r)
    (contained : closedBall c r ⊆ U)
    (boundary : ∀ z ∈ sphere c r, f z ≠ 0) :
    FiniteLogDerivativeCircle.AnalyticZeroData f c r where
  zeros := ctx.zeros (closedBall c r) (isCompact_closedBall c r) contained
  multiplicity := analyticOrderNatAt f
  positive_radius := positive
  inside := by
    intro z hz
    obtain ⟨inside, zero⟩ :=
      (ctx.mem_zeros (closedBall c r) (isCompact_closedBall c r) contained z).mp hz
    apply lt_of_le_of_ne (mem_closedBall.mp inside)
    intro equality
    exact boundary z (mem_sphere.mpr equality) zero
  analytic := ctx.analytic.mono contained
  actual_order := by
    intro z hz
    have inside := ((ctx.mem_zeros _ _ _ z).mp hz).1
    exact ctx.actual_order z (contained inside)
  nonzero_away := by
    intro z hz hnot hzero
    exact hnot ((ctx.mem_zeros _ _ _ z).mpr ⟨hz, hzero⟩)

/-- Every actual source zero occurs with its true multiplicity. -/
theorem weighted_circle_formula (ctx : AnalyticContext f U)
    (c : ℂ) (r : ℝ) (positive : 0 < r) (contained : closedBall c r ⊆ U)
    (boundary : ∀ z ∈ sphere c r, f z ≠ 0)
    (w : ℂ → ℂ) (hw : AnalyticOnNhd ℂ w (closedBall c r)) :
    CircleIntegrable (fun z => logDeriv f z * w z) c r ∧
      (∮ z in C(c, r), logDeriv f z * w z) =
        (∑ a ∈ ctx.zeros (closedBall c r) (isCompact_closedBall c r) contained,
          (analyticOrderNatAt f a : ℂ) * w a) * FinitePrincipalPartCircle.period := by
  exact (ctx.toCircle c r positive contained boundary).weighted_circleIntegral w hw

end AnalyticContext

theorem selected_zero_is_not_complete :
    (fun z : ℂ => z * (z - 1)) 0 = 0 ∧
    (fun z : ℂ => z * (z - 1)) 1 = 0 ∧
    (1 : ℂ) ∉ ({0} : Finset ℂ) := by norm_num

end GRWTSK.Analysis.ComplexAnalysis.CompactZeroInventory
