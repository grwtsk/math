import FormalResearch.RiemannHypothesis.Conversation.InboundChannels

/-!
# Complete finite-cover pairing amplifies a retained root

The scalar marked model retains every seven-cover sheet and every coordinate.
The unchanged pullback pairing is exactly seven times its base pairing. Its
constant root has positive amplified energy; a centered coordinate readout
vanishes for a different reason. Thus sheet invariance is compatible with
amplification and does not itself establish cancellation.

This is the complete finite marked interface relevant to B24-L05. It does not
assert the external OpenAI cubic-cover theorem, construct a geometric cover or
identify the marked scalar pairing with an arithmetic source. Those exact
source hypotheses and receipts remain separately recorded.
Human invariant-root and descent direction: grwtsk contributors. Local finite
pairing consumer: OpenAI Codex. Mathlib finite sums retain upstream identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.FiniteCoverAmplification
open scoped BigOperators
noncomputable section

def basePairing {m : ℕ} (v w : Fin m → ℚ) : ℚ := ∑ j, v j * w j

def pullback {m : ℕ} (v : Fin m → ℚ) : Fin 7 × Fin m → ℚ := fun ij ↦ v ij.2

def coverPairing {m : ℕ} (v w : Fin 7 × Fin m → ℚ) : ℚ := ∑ ij, v ij * w ij

theorem complete_seven_sheet_pairing {m : ℕ} (v w : Fin m → ℚ) :
    coverPairing (pullback v) (pullback w) = 7 * basePairing v w := by
  simp [coverPairing, pullback, Fintype.sum_prod_type, basePairing]

theorem marked_root_base_pairing :
    basePairing (fun _ : Fin 6 ↦ (1 : ℚ)) (fun _ : Fin 6 ↦ 1) = 6 := by
  norm_num [basePairing]

theorem marked_root_cover_pairing :
    coverPairing (pullback (fun _ : Fin 6 ↦ (1 : ℚ)))
      (pullback (fun _ : Fin 6 ↦ 1)) = 42 := by
  rw [complete_seven_sheet_pairing, marked_root_base_pairing]
  norm_num

theorem invariance_does_not_force_zero_pairing :
    ∃ v : Fin 7 × Fin 6 → ℚ,
      (∀ (p : Equiv.Perm (Fin 7)) (i : Fin 7) (j : Fin 6), v (p i, j) = v (i, j)) ∧
      0 < coverPairing v v := by
  refine ⟨pullback (fun _ : Fin 6 ↦ (1 : ℚ)), ?_, ?_⟩
  · intros; rfl
  · rw [marked_root_cover_pairing]; norm_num

theorem centered_base_retains_zero_common_readout {m : ℕ} (v : Fin m → ℚ)
    (hv : ∑ j, v j = 0) :
    coverPairing (pullback v) (pullback (fun _ : Fin m ↦ (1 : ℚ))) = 0 := by
  rw [complete_seven_sheet_pairing]
  simp only [basePairing, mul_one, hv, mul_zero]

theorem root_pairing_scales_quadratically (a : ℚ) :
    coverPairing (pullback (fun _ : Fin 6 ↦ a))
      (pullback (fun _ : Fin 6 ↦ a)) = 42 * a ^ 2 := by
  simp [complete_seven_sheet_pairing, basePairing, pow_two]
  ring

end
end GRWTSK.RiemannHypothesis.Conversation.FiniteCoverAmplification
