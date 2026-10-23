/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.SymmetricPair

set_option autoImplicit false

/-!
# Quantitative stability and completeness for an enclosed symmetric pair

The error budget is not a lower bound obtained by subtracting squared radii.
Instead the source energy is bounded above by twice the model energy plus twice
that budget. This proves eventual strict acceptance at a FIXED nonzero source
pair when the independently certified budget tends to zero. It does not prove
that any unknown pair is nonzero, or interchange pointwise and uniform cutoffs.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.Analysis.Complex.SymmetricPair
open _root_.Complex Filter
open scoped Topology
noncomputable section

lemma energy_nonneg (F : ℂ → ℂ) (c d : ℂ) : 0 ≤ energy F c d := by
  unfold energy
  positivity

/-- Nonzero energy means that the two endpoints do not vanish simultaneously. -/
theorem energy_pos_iff (F : ℂ → ℂ) (c d : ℂ) :
    0 < energy F c d ↔ ¬ (F (c+d)=0 ∧ F (c-d)=0) := by
  rw [energy_identity]
  constructor
  · intro h hz
    rw [hz.1,hz.2,norm_zero] at h
    norm_num at h
  · intro h
    by_cases hp : F (c+d)=0
    · have hm : F (c-d) ≠ 0 := fun hm => h ⟨hp,hm⟩
      have hnorm := norm_pos_iff.mpr hm
      rw [hp,norm_zero]
      nlinarith [sq_pos_of_pos hnorm]
    · have hnorm := norm_pos_iff.mpr hp
      nlinarith [sq_pos_of_pos hnorm,sq_nonneg ‖F (c-d)‖]

namespace Enclosure
variable {F P : ℂ → ℂ} {c d : ℂ}

def budget (C : Enclosure F P c d) : ℝ :=
  C.valueError^2+‖d‖^2*C.secantError^2

lemma budget_nonneg (C : Enclosure F P c d) : 0 ≤ C.budget := by
  unfold budget
  positivity

lemma norm_sq_le_two {a b : ℂ} {e : ℝ} (he : 0 ≤ e) (h : ‖a-b‖ ≤ e) :
    ‖a‖^2 ≤ 2*‖b‖^2+2*e^2 := by
  have ht : ‖a‖ ≤ ‖b‖+e := by
    calc
      ‖a‖ = ‖b+(a-b)‖ := by congr 1; ring
      _ ≤ ‖b‖+‖a-b‖ := norm_add_le _ _
      _ ≤ ‖b‖+e := add_le_add_left h _
  have hs := pow_le_pow_left₀ (norm_nonneg a) ht 2
  nlinarith [sq_nonneg (‖b‖-e)]

/-- This valid estimate is deliberately not energy(F) >= energy(P)-budget. -/
theorem source_energy_le (C : Enclosure F P c d) :
    energy F c d ≤ 2*energy P c d+2*C.budget := by
  have he := norm_sq_le_two C.value_nonneg C.even_error
  have ho := norm_sq_le_two C.secant_nonneg C.odd_error
  have hw := mul_le_mul_of_nonneg_left ho (sq_nonneg ‖d‖)
  unfold energy budget
  nlinarith

/-- A known positive source energy and a sufficiently small budget force the
EXISTING strict model comparison. No uniform lower energy is manufactured. -/
theorem accepts_of_source_gap (C : Enclosure F P c d)
    (h : 4*C.budget < energy F c d) : C.budget < energy P c d := by
  have he := C.source_energy_le
  linarith

theorem rejects_zero_pair (C : Enclosure F P c d)
    (hz : F (c+d)=0 ∧ F (c-d)=0) : ¬ (C.budget < energy P c d) := by
  intro h
  exact C.excludes_pair h hz

/-- Compose arithmetic-tail and finite-evaluation enclosures on the SAME pair.
The channel radii add before squaring; the cross-error terms are not discarded. -/
def trans {Q : ℂ → ℂ} (C : Enclosure F P c d) (D : Enclosure P Q c d) :
    Enclosure F Q c d where
  valueError := C.valueError+D.valueError
  secantError := C.secantError+D.secantError
  value_nonneg := add_nonneg C.value_nonneg D.value_nonneg
  secant_nonneg := add_nonneg C.secant_nonneg D.secant_nonneg
  even_error := by
    rw [(channel_telescope F P Q c d).1]
    exact (norm_add_le _ _).trans (add_le_add C.even_error D.even_error)
  odd_error := by
    rw [(channel_telescope F P Q c d).2]
    exact (norm_add_le _ _).trans (add_le_add C.odd_error D.odd_error)

@[simp] theorem trans_budget {Q : ℂ → ℂ}
    (C : Enclosure F P c d) (D : Enclosure P Q c d) :
    (C.trans D).budget = (C.valueError+D.valueError)^2+
      ‖d‖^2*(C.secantError+D.secantError)^2 := rfl

end Enclosure

/-- The cutoff may depend on this exact pair. This theorem neither supplies a
nonzero source pair nor claims one cutoff works on a whole punctured domain. -/
theorem eventually_accepts_iff {F : ℂ → ℂ} {P : ℕ → ℂ → ℂ} {c d : ℂ}
    (C : ∀ n, Enclosure F (P n) c d)
    (hbudget : Tendsto (fun n => (C n).budget) atTop (𝓝 0)) :
    (∀ᶠ n in atTop, (C n).budget < energy (P n) c d) ↔
      ¬ (F (c+d)=0 ∧ F (c-d)=0) := by
  constructor
  · intro h
    obtain ⟨n,hn⟩ := h.exists
    exact (C n).excludes_pair hn
  · intro h
    have he : 0 < energy F c d := (energy_pos_iff F c d).mpr h
    have hsmall : ∀ᶠ n in atTop, (C n).budget < energy F c d/4 :=
      hbudget.eventually (gt_mem_nhds (by linarith : (0 : ℝ) < energy F c d/4))
    filter_upwards [hsmall] with n hn
    exact (C n).accepts_of_source_gap (by linarith)

/-- A finite strict comparison exists exactly when this particular source pair
is nonzero, provided the complete enclosure budget actually tends to zero. -/
theorem exists_accepts_iff {F : ℂ → ℂ} {P : ℕ → ℂ → ℂ} {c d : ℂ}
    (C : ∀ n, Enclosure F (P n) c d)
    (hbudget : Tendsto (fun n => (C n).budget) atTop (𝓝 0)) :
    (∃ n, (C n).budget < energy (P n) c d) ↔
      ¬ (F (c+d)=0 ∧ F (c-d)=0) := by
  constructor
  · rintro ⟨n,hn⟩
    exact (C n).excludes_pair hn
  · intro h
    exact ((eventually_accepts_iff C hbudget).mpr h).exists

end
end GRWTSK.Analysis.Complex.SymmetricPair
