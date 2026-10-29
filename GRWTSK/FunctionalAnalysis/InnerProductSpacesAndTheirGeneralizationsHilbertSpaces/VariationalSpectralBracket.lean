/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib conditional completeness, Rayleigh theory and the compact-operator
Fredholm alternative retain upstream attribution and Apache-2.0 licenses. -/
import Mathlib.Analysis.InnerProductSpace.Spectrum
import Mathlib.Analysis.InnerProductSpace.Rayleigh
import Mathlib.Analysis.Normed.Operator.Compact.FredholmAlternative
import Mathlib.Tactic

/-!
# Actual first and second variational values and one-sided perturbation bounds

Values are constructed from the operator, rather than supplied as scalar
premises. The unit BALL includes zero, giving honest zero padding in finite
rank and dimensions zero or one. The second value minimizes over actual
codimension-at-most-one kernels. Positive compact operators attain the first
value as an eigenvalue; the norm-spectrum proof is included below.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.InnerProductSpace.VariationalSpectralBracket
open Set
variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E]

def quadratic (T : E →L[ℝ] E) (x : E) : ℝ := inner ℝ x (T x)

def ballValues (T : E →L[ℝ] E) (K : Submodule ℝ E) : Set ℝ :=
  {r | ∃ x, x ∈ K ∧ ‖x‖ ≤ 1 ∧ r = quadratic T x}

def ballValue (T : E →L[ℝ] E) (K : Submodule ℝ E) : ℝ := sSup (ballValues T K)
def hyperplane (v : E) : Submodule ℝ E := (innerSL ℝ v).ker
def firstValue (T : E →L[ℝ] E) : ℝ := ballValue T ⊤
def secondValue (T : E →L[ℝ] E) : ℝ := sInf (Set.range (fun v : E => ballValue T (hyperplane v)))

theorem zero_mem_ballValues (T : E →L[ℝ] E) (K : Submodule ℝ E) : 0 ∈ ballValues T K :=
  ⟨0, K.zero_mem, by simp, by simp [quadratic]⟩

theorem quadratic_abs_le (T : E →L[ℝ] E) (x : E) : |quadratic T x| ≤ ‖T‖ * ‖x‖ ^ 2 := by
  calc
    _ ≤ ‖x‖ * ‖T x‖ := abs_real_inner_le_norm _ _
    _ ≤ ‖x‖ * (‖T‖ * ‖x‖) := mul_le_mul_of_nonneg_left (T.le_opNorm x) (norm_nonneg _)
    _ = _ := by ring

theorem ballValues_bddAbove (T : E →L[ℝ] E) (K : Submodule ℝ E) : BddAbove (ballValues T K) := by
  refine ⟨‖T‖, ?_⟩
  rintro r ⟨x,hx,hn,rfl⟩
  have hs : ‖x‖ ^ 2 ≤ 1 := by nlinarith [norm_nonneg x]
  exact (le_abs_self _).trans ((quadratic_abs_le T x).trans
    (by simpa only [mul_one] using mul_le_mul_of_nonneg_left hs (norm_nonneg T)))

theorem quadratic_le_ballValue (T : E →L[ℝ] E) (K : Submodule ℝ E)
    {x : E} (hx : x ∈ K) (hn : ‖x‖ ≤ 1) : quadratic T x ≤ ballValue T K :=
  le_csSup (ballValues_bddAbove T K) ⟨x,hx,hn,rfl⟩

theorem ballValue_nonnegative (T : E →L[ℝ] E) (K : Submodule ℝ E) : 0 ≤ ballValue T K :=
  le_csSup (ballValues_bddAbove T K) (zero_mem_ballValues T K)

theorem ballValue_le_norm (T : E →L[ℝ] E) (K : Submodule ℝ E) : ballValue T K ≤ ‖T‖ := by
  apply csSup_le ⟨0,zero_mem_ballValues T K⟩
  rintro r ⟨x,hx,hn,rfl⟩
  have hs : ‖x‖ ^ 2 ≤ 1 := by nlinarith [norm_nonneg x]
  exact (le_abs_self _).trans ((quadratic_abs_le T x).trans
    (by simpa only [mul_one] using mul_le_mul_of_nonneg_left hs (norm_nonneg T)))

theorem ballValue_mono (A B : E →L[ℝ] E) (K : Submodule ℝ E)
    (h : ∀ x, quadratic A x ≤ quadratic B x) : ballValue A K ≤ ballValue B K := by
  apply csSup_le ⟨0,zero_mem_ballValues A K⟩
  rintro r ⟨x,hx,hn,rfl⟩
  exact (h x).trans (quadratic_le_ballValue B K hx hn)

theorem ballValue_le_add (A B : E →L[ℝ] E) (K : Submodule ℝ E) {ε : ℝ}
    (hε : 0 ≤ ε) (h : ∀ x, quadratic B x ≤ quadratic A x + ε * ‖x‖ ^ 2) :
    ballValue B K ≤ ballValue A K + ε := by
  apply csSup_le ⟨0,zero_mem_ballValues B K⟩
  rintro r ⟨x,hx,hn,rfl⟩
  have hs : ‖x‖ ^ 2 ≤ 1 := by nlinarith [norm_nonneg x]
  have hp := quadratic_le_ballValue A K hx hn
  have he : ε * ‖x‖ ^ 2 ≤ ε := by nlinarith
  exact (h x).trans (by linarith)

theorem second_values_bddBelow (T : E →L[ℝ] E) :
    BddBelow (Set.range (fun v : E => ballValue T (hyperplane v))) :=
  ⟨0, fun r ⟨v,he⟩ => he ▸ ballValue_nonnegative T (hyperplane v)⟩

theorem secondValue_nonnegative (T : E →L[ℝ] E) : 0 ≤ secondValue T := by
  apply le_csInf (Set.range_nonempty _)
  rintro r ⟨v,rfl⟩
  exact ballValue_nonnegative T _

theorem secondValue_le (T : E →L[ℝ] E) (v : E) : secondValue T ≤ ballValue T (hyperplane v) :=
  csInf_le (second_values_bddBelow T) ⟨v,rfl⟩

/-- The first/second min-max brackets are proved from quadratic order, not assumed. -/
theorem variational_bracket (A B : E →L[ℝ] E) {ε : ℝ} (hε : 0 ≤ ε)
    (hlower : ∀ x, quadratic A x ≤ quadratic B x)
    (hupper : ∀ x, quadratic B x ≤ quadratic A x + ε * ‖x‖ ^ 2) :
    firstValue A ≤ firstValue B ∧ secondValue B ≤ secondValue A + ε := by
  refine ⟨ballValue_mono A B ⊤ hlower, ?_⟩
  have hs : secondValue B - ε ≤ secondValue A := by
    apply le_csInf (Set.range_nonempty _)
    rintro r ⟨v,rfl⟩
    have h1 := secondValue_le B v
    have h2 := ballValue_le_add A B (hyperplane v) hε hupper
    linarith
  linarith

/-- A Rayleigh quotient is realized by normalizing an actual input in the same subspace. -/
theorem quotient_le_ballValue (T : E →L[ℝ] E) (K : Submodule ℝ E)
    {x : E} (hx : x ∈ K) (hx0 : x ≠ 0) : quadratic T x / ‖x‖ ^ 2 ≤ ballValue T K := by
  have hn : 0 < ‖x‖ := norm_pos_iff.mpr hx0
  have hu : ‖(‖x‖⁻¹ : ℝ) • x‖ ≤ 1 := by
    rw [norm_smul, Real.norm_eq_abs, abs_of_pos (inv_pos.mpr hn), inv_mul_cancel₀ hn.ne']
  have he : quadratic T ((‖x‖⁻¹ : ℝ) • x) = quadratic T x / ‖x‖ ^ 2 := by
    simp only [quadratic, map_smul, real_inner_smul_left, inner_smul_right]
    field_simp [hn.ne']
    <;> ring
  rw [← he]
  exact quadratic_le_ballValue T K (K.smul_mem _ hx) hu

theorem firstValue_eq_norm (T : E →L[ℝ] E) (hT : T.toLinearMap.IsSymmetric)
    (hpos : ∀ x, 0 ≤ quadratic T x) : firstValue T = ‖T‖ := by
  apply le_antisymm (ballValue_le_norm T ⊤)
  rw [T.norm_eq_iSup_rayleighQuotient hT]
  apply ciSup_le
  intro x
  have hp : 0 ≤ T.rayleighQuotient x := by
    change 0 ≤ inner ℝ (T x) x / ‖x‖ ^ 2
    rw [real_inner_comm]
    exact div_nonneg (hpos x) (sq_nonneg _)
  rw [abs_of_nonneg hp]
  by_cases hx : x = 0
  · subst x
    simpa [ContinuousLinearMap.rayleighQuotient, ContinuousLinearMap.reApplyInnerSelf] using
      ballValue_nonnegative T ⊤
  · simpa only [ContinuousLinearMap.rayleighQuotient,
      ContinuousLinearMap.reApplyInnerSelf_apply, RCLike.re_to_real,
      quadratic, real_inner_comm] using quotient_le_ballValue T ⊤ (Submodule.mem_top) hx

/-- The compact positive operator really has its norm as an eigenvalue. -/
theorem hasEigenvalue_norm [CompleteSpace E] [Nontrivial E]
    (T : E →L[ℝ] E) (hT : T.toLinearMap.IsSymmetric) (hcompact : IsCompactOperator T)
    (hpos : ∀ x, 0 ≤ quadratic T x) (hne : T ≠ 0) :
    Module.End.HasEigenvalue T.toLinearMap ‖T‖ := by
  apply (hcompact.hasEigenvalue_iff_mem_spectrum (norm_ne_zero_iff.mpr hne)).mpr
  by_contra hspec
  have hres : algebraMap ℝ ℝ ‖T‖ ∈ resolventSet ℝ T := by simpa [spectrum] using hspec
  obtain ⟨ε,hε,hb⟩ := T.rayleighQuotient_le_of_norm_mem_resolventSet hres
  have hp (x : E) : 0 ≤ T.rayleighQuotient x := by
    change 0 ≤ inner ℝ (T x) x / ‖x‖ ^ 2
    rw [real_inner_comm]
    exact div_nonneg (hpos x) (sq_nonneg _)
  have hc : ‖T‖ ≤ ‖T‖ - ε := by
    rw [T.norm_eq_iSup_rayleighQuotient hT]
    exact ciSup_le (fun x => by rw [abs_of_nonneg (hp x)]; exact hb x)
  linarith



/-- An actual two-dimensional test space meets every hyperplane. -/
theorem orthonormal_pair_le_second (T : E →L[ℝ] E)
    (hT : T.toLinearMap.IsSymmetric) {v w : E} {s : ℝ}
    (hv : ‖v‖ = 1) (hw : ‖w‖ = 1) (hvw : inner ℝ v w = 0)
    (hcross : inner ℝ v (T w) = 0)
    (hvs : s ≤ quadratic T v) (hws : s ≤ quadratic T w) :
    s ≤ secondValue T := by
  have hwv : inner ℝ w v = 0 := by rw [real_inner_comm, hvw]
  have hcross' : inner ℝ w (T v) = 0 := by
    rw [real_inner_comm, hT v w, hcross]
  apply le_csInf (Set.range_nonempty _)
  rintro r ⟨z, rfl⟩
  by_cases ha : inner ℝ z v = 0
  · exact hvs.trans (quadratic_le_ballValue T (hyperplane z) ha hv.le)
  · let a := inner ℝ z v
    let b := inner ℝ z w
    let x := b • v - a • w
    have hxmem : x ∈ hyperplane z := by
      change inner ℝ z (b • v - a • w) = 0
      simp only [inner_sub_right, inner_smul_right]
      dsimp [a,b]
      ring
    have hnorm : ‖x‖ ^ 2 = b ^ 2 + a ^ 2 := by
      rw [← real_inner_self_eq_norm_sq]
      simp only [x, inner_sub_left, inner_sub_right, real_inner_smul_left,
        inner_smul_right, real_inner_self_eq_norm_sq, hv, hw, hvw, hwv]
      ring
    have hx0 : x ≠ 0 := by
      intro hx
      have hn := hnorm
      rw [hx, norm_zero, zero_pow (by decide : (2 : ℕ) ≠ 0)] at hn
      have ha0 : a ≠ 0 := ha
      nlinarith [sq_pos_of_ne_zero ha0, sq_nonneg b]
    have hq : quadratic T x = b ^ 2 * quadratic T v + a ^ 2 * quadratic T w := by
      simp only [quadratic, x, map_sub, map_smul, inner_sub_left, inner_sub_right,
        real_inner_smul_left, inner_smul_right, hcross, hcross']
      ring
    have hl : s * ‖x‖ ^ 2 ≤ quadratic T x := by
      rw [hnorm, hq]
      nlinarith [mul_nonneg (sq_nonneg b) (sub_nonneg.mpr hvs),
        mul_nonneg (sq_nonneg a) (sub_nonneg.mpr hws)]
    have hn : 0 < ‖x‖ ^ 2 := sq_pos_of_pos (norm_pos_iff.mpr hx0)
    exact ((le_div_iff₀ hn).mpr hl).trans (quotient_le_ballValue T _ hxmem hx0)

theorem quadratic_le_first_mul_norm_sq (T : E →L[ℝ] E) (x : E) :
    quadratic T x ≤ firstValue T * ‖x‖ ^ 2 := by
  by_cases hx : x = 0
  · simp [hx, quadratic]
  · exact (div_le_iff₀ (sq_pos_of_pos (norm_pos_iff.mpr hx))).mp
      (quotient_le_ballValue T ⊤ Submodule.mem_top hx)

/-- The second variational value is the actual top Rayleigh value on the
orthogonal complement of a principal eigenvector. This pays the min-max link. -/
theorem secondValue_eq_top_complement (T : E →L[ℝ] E)
    (hT : T.toLinearMap.IsSymmetric) (hpos : ∀ x, 0 ≤ quadratic T x)
    {v : E} (hv : ‖v‖ = 1) (he : T v = firstValue T • v) :
    secondValue T = ballValue T (hyperplane v) := by
  apply le_antisymm (secondValue_le T v)
  apply csSup_le ⟨0,zero_mem_ballValues T (hyperplane v)⟩
  rintro r ⟨x,hx,hn,rfl⟩
  by_cases hx0 : x = 0
  · simpa [hx0, quadratic] using secondValue_nonnegative T
  · let w := (‖x‖⁻¹ : ℝ) • x
    have hnpos : 0 < ‖x‖ := norm_pos_iff.mpr hx0
    have hw : ‖w‖ = 1 := by
      simp only [w, norm_smul, Real.norm_eq_abs, abs_of_pos (inv_pos.mpr hnpos),
        inv_mul_cancel₀ hnpos.ne']
    have hvw : inner ℝ v w = 0 := by
      change inner ℝ v x = 0 at hx
      simp [w, inner_smul_right, hx]
    have hcross : inner ℝ v (T w) = 0 := by
      rw [← hT v w, he, real_inner_smul_left, hvw, mul_zero]
    have hqv : quadratic T v = firstValue T := by
      simp [quadratic, he, inner_smul_right, real_inner_self_eq_norm_sq, hv]
    have hqw : quadratic T w ≤ quadratic T v := by
      rw [hqv]
      simpa only [hw, one_pow, mul_one] using quadratic_le_first_mul_norm_sq T w
    have hsecond := orthonormal_pair_le_second T hT hv hw hvw hcross hqw le_rfl
    have hqx : quadratic T x = ‖x‖ ^ 2 * quadratic T w := by
      simp only [w, quadratic, map_smul, real_inner_smul_left, inner_smul_right]
      field_simp [hnpos.ne']
    have hxsq : ‖x‖ ^ 2 ≤ 1 := by nlinarith [norm_nonneg x]
    rw [hqx]
    exact (mul_le_of_le_one_left (hpos w) hxsq).trans hsecond

/-- Every different eigenvalue is bounded by the genuine second value. -/
theorem eigenvalue_le_second (T : E →L[ℝ] E)
    (hT : T.toLinearMap.IsSymmetric) (hpos : ∀ x, 0 ≤ quadratic T x)
    {v x : E} {μ : ℝ} (hv : ‖v‖ = 1) (hev : T v = firstValue T • v)
    (hx : x ≠ 0) (hex : T x = μ • x) (hμ : μ ≠ firstValue T) :
    μ ≤ secondValue T := by
  have ho : inner ℝ v x = 0 := by
    have h := hT v x
    rw [hev, hex, real_inner_smul_left, inner_smul_right] at h
    have hz : (μ - firstValue T) * inner ℝ v x = 0 := by nlinarith
    exact (mul_eq_zero.mp hz).resolve_left (sub_ne_zero.mpr hμ)
  rw [secondValue_eq_top_complement T hT hpos hv hev]
  have hq := quotient_le_ballValue T (hyperplane v) ho hx
  have he : quadratic T x / ‖x‖ ^ 2 = μ := by
    simp only [quadratic, hex, inner_smul_right, real_inner_self_eq_norm_sq]
    field_simp [norm_ne_zero_iff.mpr hx]
  rwa [he] at hq

/-- A normalized principal eigenvector is constructed, not a supplied premise. -/
theorem exists_unit_principal [CompleteSpace E] [Nontrivial E]
    (T : E →L[ℝ] E) (hT : T.toLinearMap.IsSymmetric) (hcompact : IsCompactOperator T)
    (hpos : ∀ x, 0 ≤ quadratic T x) (hne : T ≠ 0) :
    ∃ v : E, ‖v‖ = 1 ∧ T v = firstValue T • v := by
  obtain ⟨x,hxe,hx⟩ := (hasEigenvalue_norm T hT hcompact hpos hne).exists_hasEigenvector
  have hex : T x = ‖T‖ • x := by
    simpa only [Module.End.mem_eigenspace_iff] using hxe
  have hn : 0 < ‖x‖ := norm_pos_iff.mpr hx
  refine ⟨(‖x‖⁻¹ : ℝ) • x, ?_, ?_⟩
  · simp [norm_smul, Real.norm_eq_abs, abs_of_pos (inv_pos.mpr hn), hn.ne']
  · rw [map_smul, hex, firstValue_eq_norm T hT hpos]
    exact smul_comm _ _ _



/-- The positive second value is actually attained as an eigenvalue. The zero
case is deliberately zero-padding and need not have a nonzero eigenvector. -/
theorem secondValue_hasEigenvector [CompleteSpace E]
    (T : E →L[ℝ] E) (hs : T.toLinearMap.IsSymmetric) (hc : IsCompactOperator T)
    (hp : ∀ x : E, 0 ≤ quadratic T x)
    {v : E} (hv : ‖v‖ = 1) (hev : T v = firstValue T • v)
    (hsecond : 0 < secondValue T) :
    ∃ x : E, x ≠ 0 ∧ T x = secondValue T • x ∧ inner ℝ v x = 0 := by
  let K := hyperplane v
  have hclosed : IsClosed (K : Set E) := (innerSL ℝ v).isClosed_ker
  letI : CompleteSpace K := hclosed.isComplete.completeSpace_coe
  have hpres : ∀ x ∈ K, T x ∈ K := by
    intro x hx
    change inner ℝ v x = 0 at hx
    change inner ℝ v (T x) = 0
    rw [← hs v x, hev, real_inner_smul_left, hx, mul_zero]
  let S : K →L[ℝ] K := T.restrict hpres
  have hSsym : S.toLinearMap.IsSymmetric := fun x y => hs (x : E) (y : E)
  have hSc : IsCompactOperator S := hc.restrict hpres hclosed
  have hSp : ∀ x : K, 0 ≤ quadratic S x := fun x => hp (x : E)
  have hvalues : ballValues S ⊤ = ballValues T K := by
    ext r
    constructor
    · rintro ⟨x,_,hn,rfl⟩
      exact ⟨(x : E),x.property,hn,rfl⟩
    · rintro ⟨x,hx,hn,rfl⟩
      exact ⟨⟨x,hx⟩,Submodule.mem_top,hn,rfl⟩
  have hnorm : ‖S‖ = secondValue T := by
    rw [← firstValue_eq_norm S hSsym hSp, firstValue, ballValue, hvalues]
    exact (secondValue_eq_top_complement T hs hp hv hev).symm
  have hSne : S ≠ 0 := by
    intro hz
    rw [hz, norm_zero] at hnorm
    linarith
  rcases subsingleton_or_nontrivial K with hsub | hnon
  · letI := hsub
    exact (hSne (Subsingleton.elim _ _)).elim
  · letI := hnon
    obtain ⟨x,hxe,hx⟩ := (hasEigenvalue_norm S hSsym hSc hSp hSne).exists_hasEigenvector
    have hex : S x = ‖S‖ • x := Module.End.mem_eigenspace_iff.mp hxe
    refine ⟨(x : E), ?_, ?_, x.property⟩
    · intro hz; exact hx (Subtype.ext hz)
    · have he := congrArg Subtype.val hex
      simpa only [S, ContinuousLinearMap.restrict_apply, Submodule.coe_smul, hnorm] using he

end GRWTSK.Analysis.InnerProductSpace.VariationalSpectralBracket
