/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI Codex.
Free Dirichlet counting limit and its inverse cuts. Mathlib authorship and
licenses remain upstream. No Sturmian IDS existence or RH estimate is assumed. -/
import GRWTSK.Spectral.OperatorTheory.SpectralTheory.FreeDirichletSpectrum
import Mathlib.Analysis.SpecificLimits.Basic

set_option autoImplicit false
noncomputable section
namespace GRWTSK.Spectral.FreeIDS
open GRWTSK.Spectral.FreeDirichletSpectrum
open GRWTSK.Spectral.SturmianFiniteVolume
open Filter

def angleFraction (E : ℝ) : ℝ := Real.arccos (E/2) / Real.pi
def freeIDS (E : ℝ) : ℝ := 1 - angleFraction E
def cutoff (N : ℕ) (E : ℝ) : ℝ := (N+1) * angleFraction E
def freeEnergy (label : ℝ) : ℝ := -2 * Real.cos (Real.pi * label)

theorem angleFraction_bounds (E : ℝ) : 0 ≤ angleFraction E ∧ angleFraction E ≤ 1 := by
  constructor
  · exact div_nonneg (Real.arccos_nonneg _) Real.pi_pos.le
  · exact (div_le_one Real.pi_pos).mpr (Real.arccos_le_pi _)

theorem eigenvalue_le_iff_angle (N : ℕ) (k : Fin N) (E : ℝ) :
    eigenvalue N k ≤ E ↔ Real.arccos (E/2) ≤ angle N k := by
  by_cases hlo : E ≤ -2
  · have har : Real.arccos (E/2) = Real.pi := Real.arccos_eq_pi.mpr (by linarith)
    have hc := Real.strictAntiOn_cos
      ⟨(angle_pos N k).le, (angle_lt_pi N k).le⟩
      ⟨Real.pi_pos.le, le_rfl⟩ (angle_lt_pi N k)
    simp only [Real.cos_pi] at hc
    rw [har]
    unfold eigenvalue
    constructor <;> intro h <;> nlinarith [angle_lt_pi N k]
  · by_cases hhi : 2 ≤ E
    · have har : Real.arccos (E/2) = 0 := Real.arccos_eq_zero.mpr (by linarith)
      rw [har]
      unfold eigenvalue
      constructor
      · intro _; exact (angle_pos N k).le
      · intro _; nlinarith [Real.cos_le_one (angle N k)]
    · have hcos := Real.cos_arccos (x := E/2) (by linarith) (by linarith)
      have hc := Real.strictAntiOn_cos.le_iff_ge
        ⟨(angle_pos N k).le, (angle_lt_pi N k).le⟩
        ⟨Real.arccos_nonneg (E/2), Real.arccos_le_pi (E/2)⟩
      rw [hcos] at hc
      unfold eigenvalue
      constructor
      · intro h; apply hc.mp; linarith
      · intro h; have := hc.mpr h; linarith

theorem eigenvalue_le_iff_cutoff (N : ℕ) (k : Fin N) (E : ℝ) :
    eigenvalue N k ≤ E ↔ cutoff N E ≤ (k.val:ℝ)+1 := by
  rw [eigenvalue_le_iff_angle]
  unfold angle cutoff angleFraction
  rw [le_div_iff₀ (by positivity : (0:ℝ) < N+1)]
  rw [show (N+1) * (Real.arccos (E/2) / Real.pi) =
    ((N+1) * Real.arccos (E/2)) / Real.pi by ring, div_le_iff₀ Real.pi_pos]
  constructor <;> intro h <;> nlinarith

private theorem card_small_indices (N q : ℕ) (hq : q ≤ N) :
    (Finset.univ.filter (fun k : Fin N => k.val < q)).card = q := by
  let e : {k : Fin N // k.val < q} ≃ Fin q :=
    { toFun := fun k => ⟨k.val.val,k.property⟩
      invFun := fun k => ⟨⟨k.val,k.isLt.trans_le hq⟩,k.isLt⟩
      left_inv := fun _ => rfl
      right_inv := fun _ => rfl }
  simpa only [Fintype.card_subtype, Fintype.card_fin] using Fintype.card_congr e

theorem cutoff_bounds (N : ℕ) (E : ℝ) : 0 ≤ cutoff N E ∧ cutoff N E ≤ N+1 := by
  have ht := angleFraction_bounds E
  constructor
  · exact mul_nonneg (by positivity) ht.1
  · simpa [cutoff] using mul_le_mul_of_nonneg_left ht.2
      (by positivity : (0:ℝ) ≤ N+1)

theorem cutoff_ceil_le (N : ℕ) (E : ℝ) : Nat.ceil (cutoff N E) ≤ N+1 := by
  apply Nat.ceil_le.mpr
  simpa only [Nat.cast_add, Nat.cast_one] using (cutoff_bounds N E).2

/-- Exact inclusive count, including both exterior energy regimes and volume zero. -/
theorem freeCount_eq_ceil (N : ℕ) (E : ℝ) :
    freeCount N E = N - (Nat.ceil (cutoff N E) - 1) := by
  rw [freeCount_eq_cosine_count]
  have he : (Finset.univ.filter (fun k : Fin N => eigenvalue N k ≤ E)) =
      Finset.univ.filter (fun k : Fin N => Nat.ceil (cutoff N E) ≤ k.val+1) := by
    ext k
    simp only [Finset.mem_filter, Finset.mem_univ, true_and, eigenvalue_le_iff_cutoff]
    simpa only [Nat.cast_add, Nat.cast_one] using
      (Nat.ceil_le (a := cutoff N E) (n := k.val+1)).symm
  rw [he]
  have hq : Nat.ceil (cutoff N E)-1 ≤ N := by have := cutoff_ceil_le N E; omega
  have hn : (Finset.univ.filter (fun k : Fin N => ¬Nat.ceil (cutoff N E) ≤ k.val+1)) =
      Finset.univ.filter (fun k : Fin N => k.val < Nat.ceil (cutoff N E)-1) := by
    ext k
    simp only [Finset.mem_filter, Finset.mem_univ, true_and]
    omega
  have h := Finset.card_filter_add_card_filter_not
    (s := Finset.univ) (fun k : Fin N => Nat.ceil (cutoff N E) ≤ k.val+1)
  rw [hn, card_small_indices N _ hq, Finset.card_univ, Fintype.card_fin] at h
  omega

private theorem cutoff_rounding_bounds (N : ℕ) (E : ℝ) :
    cutoff N E - 1 ≤ ((Nat.ceil (cutoff N E)-1:ℕ):ℝ) ∧
      ((Nat.ceil (cutoff N E)-1:ℕ):ℝ) ≤ cutoff N E := by
  have hx := (cutoff_bounds N E).1
  by_cases hc : Nat.ceil (cutoff N E) = 0
  · have he : cutoff N E = 0 := le_antisymm (Nat.ceil_eq_zero.mp hc) hx
    simp [he]
  · have hn : 1 ≤ Nat.ceil (cutoff N E) := by omega
    rw [Nat.cast_sub hn, Nat.cast_one]
    exact ⟨by linarith [Nat.le_ceil (cutoff N E)],
      by linarith [(Nat.ceil_lt_add_one hx).le]⟩

/-- A uniform one-over-volume error for the actual eigenvalue count. -/
theorem normalized_count_bounds (N : ℕ) (hN : 0 < N) (E : ℝ) :
    freeIDS E - 1/(N:ℝ) ≤ freeNormalizedCount N E ∧
      freeNormalizedCount N E ≤ freeIDS E + 1/(N:ℝ) := by
  have hn : (0:ℝ) < N := by exact_mod_cast hN
  have hq : Nat.ceil (cutoff N E)-1 ≤ N := by have := cutoff_ceil_le N E; omega
  have hb := cutoff_rounding_bounds N E
  have ht := angleFraction_bounds E
  rw [freeNormalizedCount, freeCount_eq_ceil, Nat.cast_sub hq]
  unfold freeIDS cutoff at *
  constructor
  · apply (le_div_iff₀ hn).mpr
    have he : (1-angleFraction E-1/(N:ℝ))*(N:ℝ) =
        (1-angleFraction E)*(N:ℝ)-1 := by field_simp
    rw [he]
    nlinarith
  · apply (div_le_iff₀ hn).mpr
    have he : (1-angleFraction E+1/(N:ℝ))*(N:ℝ) =
        (1-angleFraction E)*(N:ℝ)+1 := by field_simp
    rw [he]
    nlinarith

theorem freeNormalizedCount_tendsto (E : ℝ) :
    Tendsto (fun N => freeNormalizedCount N E) atTop (nhds (freeIDS E)) := by
  have hi : Tendsto (fun N : ℕ => 1/(N:ℝ)) atTop (nhds 0) :=
    tendsto_one_div_atTop_nhds_zero_nat
  have hl : Tendsto (fun N : ℕ => freeIDS E - 1/(N:ℝ)) atTop (nhds (freeIDS E)) := by
    simpa using tendsto_const_nhds.sub hi
  have hu : Tendsto (fun N : ℕ => freeIDS E + 1/(N:ℝ)) atTop (nhds (freeIDS E)) := by
    simpa using tendsto_const_nhds.add hi
  apply hl.squeeze' hu
  · filter_upwards [eventually_ge_atTop (1:ℕ)] with N hN
    exact (normalized_count_bounds N (by omega) E).1
  · filter_upwards [eventually_ge_atTop (1:ℕ)] with N hN
    exact (normalized_count_bounds N (by omega) E).2

theorem freeIDS_of_le_neg_two {E : ℝ} (h : E ≤ -2) : freeIDS E = 0 := by
  have ha : Real.arccos (E/2) = Real.pi := Real.arccos_eq_pi.mpr (by linarith)
  simp [freeIDS, angleFraction, ha, Real.pi_ne_zero]

theorem freeIDS_of_two_le {E : ℝ} (h : 2 ≤ E) : freeIDS E = 1 := by
  have ha : Real.arccos (E/2) = 0 := Real.arccos_eq_zero.mpr (by linarith)
  simp [freeIDS, angleFraction, ha]

theorem freeIDS_strictMonoOn : StrictMonoOn freeIDS (Set.Ioo (-2:ℝ) 2) := by
  intro x hx y hy hxy
  have ha := Real.arccos_lt_arccos (x := x/2) (y := y/2) (by linarith [hx.1])
    (by linarith) (by linarith [hy.2])
  have hd := (div_lt_div_iff_of_pos_right Real.pi_pos).mpr ha
  unfold freeIDS angleFraction
  linarith

theorem freeEnergy_mem_Ioo {label : ℝ} (hl : 0 < label) (hu : label < 1) :
    freeEnergy label ∈ Set.Ioo (-2:ℝ) 2 := by
  have ha : 0 < Real.pi*label := mul_pos Real.pi_pos hl
  have hb : Real.pi*label < Real.pi := by nlinarith [Real.pi_pos]
  have hcl := Real.strictAntiOn_cos ⟨ha.le,hb.le⟩ ⟨Real.pi_pos.le,le_rfl⟩ hb
  have hcu := Real.strictAntiOn_cos ⟨le_rfl,Real.pi_pos.le⟩ ⟨ha.le,hb.le⟩ ha
  simp only [Real.cos_zero, Real.cos_pi] at hcl hcu
  unfold freeEnergy
  constructor <;> linarith

theorem freeIDS_freeEnergy {label : ℝ} (hl : 0 ≤ label) (hu : label ≤ 1) :
    freeIDS (freeEnergy label) = label := by
  have ha : 0 ≤ Real.pi*label := mul_nonneg Real.pi_pos.le hl
  have hb : Real.pi*label ≤ Real.pi := by nlinarith [Real.pi_pos]
  unfold freeIDS angleFraction freeEnergy
  rw [show -2*Real.cos (Real.pi*label)/2 = -Real.cos (Real.pi*label) by ring,
    Real.arccos_neg, Real.arccos_cos ha hb]
  field_simp
  ring

theorem freeIDS_inverse_left {label : ℝ} (hl : 0 < label) (hu : label < 1)
    (E : ℝ) (h : freeIDS E ≤ label) : E ≤ freeEnergy label := by
  by_contra hn
  have he : freeEnergy label < E := by linarith
  by_cases hE : 2 ≤ E
  · rw [freeIDS_of_two_le hE] at h
    linarith
  · have hm := freeEnergy_mem_Ioo hl hu
    have hx : E ∈ Set.Ioo (-2:ℝ) 2 := ⟨by linarith [hm.1],by linarith⟩
    have hs := freeIDS_strictMonoOn hm hx he
    rw [freeIDS_freeEnergy hl.le hu.le] at hs
    linarith

theorem freeIDS_inverse_right {label : ℝ} (hl : 0 < label) (hu : label < 1)
    (E : ℝ) (h : label ≤ freeIDS E) : freeEnergy label ≤ E := by
  by_contra hn
  have he : E < freeEnergy label := by linarith
  by_cases hE : E ≤ -2
  · rw [freeIDS_of_le_neg_two hE] at h
    linarith
  · have hm := freeEnergy_mem_Ioo hl hu
    have hx : E ∈ Set.Ioo (-2:ℝ) 2 := ⟨by linarith,by linarith [hm.2]⟩
    have hs := freeIDS_strictMonoOn hx hm he
    rw [freeIDS_freeEnergy hl.le hu.le] at hs
    linarith

/-- The free count limit and inverse cuts are now paid. The target Sturmian
count limit and an actual open labelled gap remain premises. -/
theorem gap_width_le_abs_coupling (α V ξ : ℝ) (origin : ℤ)
    {S : Set ℝ} {ids : ℝ → ℝ} {label a b : ℝ} (hl : 0 < label) (hu : label < 1)
    (hids : ∀ E, Tendsto (fun N => sturmianNormalizedCount N α V ξ origin E)
      atTop (nhds (ids E)))
    (hgap : GRWTSK.Spectral.GapTransport.OpenLabelGap S ids label a b) :
    0 < b-a ∧ b-a ≤ |V| :=
  gap_width_le_abs_coupling_of_count_limits α V ξ origin freeNormalizedCount_tendsto hids
    (freeIDS_inverse_left hl hu) (freeIDS_inverse_right hl hu) hgap

theorem sturmianNormalizedCount_zero (N : ℕ) (α ξ : ℝ) (origin : ℤ) (E : ℝ) :
    sturmianNormalizedCount N α 0 ξ origin E = freeNormalizedCount N E := by
  simp only [sturmianNormalizedCount, freeNormalizedCount, sturmianCount, freeCount,
    hamiltonian_zero]

theorem sturmianNormalizedCount_zero_tendsto (α ξ : ℝ) (origin : ℤ) (E : ℝ) :
    Tendsto (fun N => sturmianNormalizedCount N α 0 ξ origin E) atTop (nhds (freeIDS E)) := by
  simpa only [sturmianNormalizedCount_zero] using freeNormalizedCount_tendsto E

/-- The actual free count limit cannot carry a positive-width internal label
plateau, independently of the proposed spectral set. Exterior labels are excluded. -/
theorem no_internal_free_gap {S : Set ℝ} {label a b : ℝ}
    (hl : 0 < label) (hu : label < 1) :
    ¬GRWTSK.Spectral.GapTransport.OpenLabelGap S freeIDS label a b := by
  intro hgap
  have h := gap_width_le_abs_coupling 0 0 0 0 hl hu
    (sturmianNormalizedCount_zero_tendsto 0 0 0) hgap
  norm_num only [abs_zero] at h
  linarith [h.1, h.2]

end GRWTSK.Spectral.FreeIDS
