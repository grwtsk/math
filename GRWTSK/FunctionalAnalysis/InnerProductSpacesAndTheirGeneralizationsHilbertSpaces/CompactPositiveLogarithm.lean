/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib spectral/Hilbert-sum theory retains Heather Macbeth's authorship;
compact spectral theory retains its upstream authors and Apache-2.0 licenses. -/
import GRWTSK.FunctionalAnalysis.InnerProductSpacesAndTheirGeneralizationsHilbertSpaces.DiagonalHilbertDomain
import GRWTSK.FunctionalAnalysis.InnerProductSpacesAndTheirGeneralizationsHilbertSpaces.VariationalSpectralBracket
import Mathlib.Analysis.SpecialFunctions.Log.Basic

/-!
# The source-defined normalized logarithm of a positive compact operator

Coordinates are the actual eigenspaces, with all multiplicities retained.
No enumeration, eigenbasis certificate, or strictly positive uniform lower
bound is assumed. The maximal logarithmic domain is constructed from weighted
square summability, and its adjoint graph and density are proved. A finite
approximation separation gives a gap only on the actual principal-mode
orthogonal complement. This is a regulated operator statement, not a continuum
or infinite-volume physical mass gap.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.InnerProductSpace.CompactPositiveLogarithm
open Module.End
open GRWTSK.Analysis.InnerProductSpace.VariationalSpectralBracket
variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E] [CompleteSpace E]
variable (T : E →L[ℝ] E)

abbrev Fiber (μ : ℝ) := eigenspace T.toLinearMap μ

instance fiber_complete (μ : ℝ) : CompleteSpace (Fiber T μ) := by
  apply IsComplete.completeSpace_coe
  exact (ContinuousLinearMap.isClosed_eigenspace T μ).isComplete

/-- The compact spectral theorem supplies completeness of the actual eigenspaces. -/
def spectralSum (hc : IsCompactOperator T) (hs : T.toLinearMap.IsSymmetric) :
    IsHilbertSum ℝ (fun μ : ℝ => Fiber T μ) (fun μ => (Fiber T μ).subtypeₗᵢ) := by
  apply IsHilbertSum.mkInternal
  · exact hs.orthogonalFamily_eigenspaces
  · have h : (⨆ μ : ℝ, Fiber T μ).topologicalClosure = ⊤ :=
      Submodule.topologicalClosure_eq_top_iff.mpr
        (ContinuousLinearMap.orthogonalComplement_iSup_eigenspaces_eq_bot hc hs)
    rw [h]

def coordinates (hc : IsCompactOperator T) (hs : T.toLinearMap.IsSymmetric) :
    E ≃ₗᵢ[ℝ] lp (fun μ : ℝ => Fiber T μ) 2 :=
  (spectralSum T hc hs).linearIsometryEquiv

theorem coordinates_inverse_single (hc : IsCompactOperator T)
    (hs : T.toLinearMap.IsSymmetric) {μ : ℝ} (u : Fiber T μ) :
    (coordinates T hc hs).symm (lp.single 2 μ u) = (u : E) := by
  classical
  exact (spectralSum T hc hs).linearIsometryEquiv_symm_apply_single u

theorem fiber_equation {μ : ℝ} (u : Fiber T μ) : T (u : E) = μ • (u : E) :=
  Module.End.mem_eigenspace_iff.mp u.property

/-- The diagonalization acts on the actual operator, not an unrelated model. -/
theorem operator_coordinate (hc : IsCompactOperator T) (hs : T.toLinearMap.IsSymmetric)
    (x : E) (μ : ℝ) :
    coordinates T hc hs (T x) μ = μ • coordinates T hc hs x μ := by
  classical
  let U := coordinates T hc hs
  have hi (u : Fiber T μ) : inner ℝ u (U (T x) μ) =
      inner ℝ u (μ • U x μ) := by
    calc
      _ = inner ℝ (U.symm (lp.single 2 μ u)) (T x) := by
        rw [← U.inner_map_map, U.apply_symm_apply, lp.inner_single_left]
      _ = inner ℝ (u : E) (T x) := by rw [coordinates_inverse_single]
      _ = inner ℝ (T (u : E)) x := (hs _ _).symm
      _ = μ * inner ℝ (u : E) x := by rw [fiber_equation, real_inner_smul_left]
      _ = μ * inner ℝ u (U x μ) := by
        rw [← coordinates_inverse_single T hc hs u, ← U.inner_map_map,
          U.apply_symm_apply, lp.inner_single_left]
      _ = _ := by rw [inner_smul_right]
  let d := U (T x) μ - μ • U x μ
  have hz : inner ℝ d d = 0 := by
    have h := hi d
    simpa only [d, inner_sub_right, sub_eq_zero] using h
  have hd : d = 0 := norm_eq_zero.mp (by rw [real_inner_self_eq_norm_sq] at hz; nlinarith [norm_nonneg d])
  exact sub_eq_zero.mp hd

variable (hc : IsCompactOperator T) (hs : T.toLinearMap.IsSymmetric)

/-- Scalar values outside the actual spectral support do not contribute any vector. -/
theorem fiber_positive
    (hp : ∀ x : E, x ≠ 0 → 0 < quadratic T x)
    {μ : ℝ} (u : Fiber T μ) (hu : u ≠ 0) : 0 < μ := by
  have huE : (u : E) ≠ 0 := by intro h; apply hu; exact Subtype.ext h
  have h := hp u huE
  rw [quadratic, fiber_equation, inner_smul_right, real_inner_self_eq_norm_sq] at h
  exact (mul_pos_iff_of_pos_right (sq_pos_of_pos (norm_pos_iff.mpr huE))).mp h

theorem fiber_le_first (hp : ∀ x : E, 0 ≤ quadratic T x)
    {μ : ℝ} (u : Fiber T μ) (hu : u ≠ 0) : μ ≤ firstValue T := by
  have huE : (u : E) ≠ 0 := by intro h; apply hu; exact Subtype.ext h
  have h := quadratic_le_first_mul_norm_sq T (u : E)
  rw [quadratic, fiber_equation, inner_smul_right, real_inner_self_eq_norm_sq] at h
  by_contra! hnot
  have hprod := mul_pos (sub_pos.mpr hnot) (sq_pos_of_pos (norm_pos_iff.mpr huE))
  nlinarith

/-- Strict positivity implies nonnegativity, without a coercive constant. -/
theorem nonnegative_of_strict (hp : ∀ x : E, x ≠ 0 → 0 < quadratic T x) :
    ∀ x : E, 0 ≤ quadratic T x := by
  intro x
  by_cases hx : x = 0
  · simp [hx, quadratic]
  · exact (hp x hx).le

def logWeight (a μ : ℝ) : ℝ := Real.log (firstValue T / μ) / a

def logDomain (a : ℝ) : Submodule ℝ E :=
  DiagonalHilbertDomain.domain (coordinates T hc hs) (logWeight T a)

def logarithm (a : ℝ) : logDomain T hc hs a →ₗ[ℝ] E :=
  DiagonalHilbertDomain.operator (coordinates T hc hs) (logWeight T a)

theorem logDomain_dense (a : ℝ) : (logDomain T hc hs a).topologicalClosure = ⊤ :=
  DiagonalHilbertDomain.domain_dense _ _

theorem logarithm_adjoint_graph (a : ℝ) (x y : E) :
    (∀ z : logDomain T hc hs a, inner ℝ (logarithm T hc hs a z) x = inner ℝ (z : E) y) ↔
      ∃ hx : x ∈ logDomain T hc hs a, logarithm T hc hs a ⟨x,hx⟩ = y :=
  DiagonalHilbertDomain.adjoint_graph_iff _ _ _ _

theorem logarithm_graph_closed (a : ℝ) :
    IsClosed {p : E × E | ∃ hx : p.1 ∈ logDomain T hc hs a,
      logarithm T hc hs a ⟨p.1,hx⟩ = p.2} :=
  DiagonalHilbertDomain.graph_isClosed _ _

theorem logarithm_nonnegative {a : ℝ} (ha : 0 < a)
    (hp : ∀ x : E, x ≠ 0 → 0 < quadratic T x) (x : logDomain T hc hs a) :
    0 ≤ inner ℝ (x : E) (logarithm T hc hs a x) := by
  apply DiagonalHilbertDomain.quadratic_nonnegative
  intro μ u
  by_cases hu : u = 0
  · simp [hu]
  · have hμ := fiber_positive T hp u hu
    have hb := fiber_le_first T (nonnegative_of_strict T hp) u hu
    have hr : 1 ≤ firstValue T / μ := (le_div_iff₀ hμ).mpr (by simpa using hb)
    exact mul_nonneg (div_nonneg (Real.log_nonneg hr) ha.le) (sq_nonneg _)

/-- The constructed logarithm exponentiates, coordinate by coordinate, to the
actual normalized transfer operator. No boundedness of the logarithm is used. -/
theorem normalizedTransfer_coordinate {a : ℝ} (ha : 0 < a)
    (hp : ∀ x : E, x ≠ 0 → 0 < quadratic T x) (x : E) (μ : ℝ) :
    coordinates T hc hs ((firstValue T)⁻¹ • T x) μ =
      Real.exp (-a * logWeight T a μ) • coordinates T hc hs x μ := by
  let u := coordinates T hc hs x μ
  rw [map_smul, lp.coeFn_smul, Pi.smul_apply, operator_coordinate, smul_smul]
  by_cases hu : u = 0
  · change _ • u = _ • u
    rw [hu, smul_zero, smul_zero]
  · have hμ := fiber_positive T hp u hu
    have hb := fiber_le_first T (nonnegative_of_strict T hp) u hu
    have hλ : 0 < firstValue T := hμ.trans_le hb
    have he : Real.exp (-a * logWeight T a μ) = μ / firstValue T := by
      rw [logWeight, show -a * (Real.log (firstValue T / μ) / a) =
        -Real.log (firstValue T / μ) by field_simp [ha.ne']; ring,
        Real.exp_neg, Real.exp_log (div_pos hλ hμ), inv_div]
    rw [he]
    congr 1
    ring

/-- A positive finite bracket pays the logarithmic gap on every nonprincipal
spectral mode. Principal-mode orthogonality is actual coordinate vanishing. -/
theorem logarithm_gap [Nontrivial E] {a ν b : ℝ} (ha : 0 < a)
    (hp : ∀ x : E, x ≠ 0 → 0 < quadratic T x) (hne : T ≠ 0)
    (hν : 0 < ν) (hb : 0 < b) (hνT : ν ≤ firstValue T)
    (hbT : secondValue T ≤ b) (hsep : b < ν)
    (x : logDomain T hc hs a)
    (hperp : coordinates T hc hs (x : E) (firstValue T) = 0) :
    (Real.log (ν / b) / a) * ‖(x : E)‖ ^ 2 ≤
      inner ℝ (x : E) (logarithm T hc hs a x) := by
  obtain ⟨v,hv,hev⟩ := exists_unit_principal T hs hc (nonnegative_of_strict T hp) hne
  apply DiagonalHilbertDomain.quadratic_lower_bound
  intro μ
  by_cases heq : μ = firstValue T
  · subst μ; simp [hperp]
  · let u := coordinates T hc hs (x : E) μ
    by_cases hu : u = 0
    · change _ * ‖u‖ ^ 2 ≤ _ * ‖u‖ ^ 2
      simp [hu]
    · have hμ := fiber_positive T hp u hu
      have huE : (u : E) ≠ 0 := by intro h; apply hu; exact Subtype.ext h
      have hμb : μ ≤ b := (eigenvalue_le_second T hs (nonnegative_of_strict T hp)
        hv hev huE (fiber_equation T u) heq).trans hbT
      have hratio : ν / b ≤ firstValue T / μ := by
        apply (div_le_div_iff₀ hb hμ).mpr
        exact (mul_le_mul_of_nonneg_left hμb hν.le).trans
          (mul_le_mul_of_nonneg_right hνT hb.le)
      have hlog : Real.log (ν / b) / a ≤ logWeight T a μ :=
        div_le_div_of_nonneg_right (Real.log_le_log (div_pos hν hb) hratio) ha.le
      exact mul_le_mul_of_nonneg_right hlog (sq_nonneg _)

theorem bracket_gap_positive {a ν b : ℝ} (ha : 0 < a) (hb : 0 < b) (hsep : b < ν) :
    0 < Real.log (ν / b) / a :=
  div_pos (Real.log_pos ((one_lt_div hb).mpr hsep)) ha

end GRWTSK.Analysis.InnerProductSpace.CompactPositiveLogarithm
