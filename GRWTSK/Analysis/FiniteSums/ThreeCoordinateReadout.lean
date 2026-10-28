/- Copyright (c) 2026 grwtsk. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.Analysis.FiniteSums.DyadicVariance
import GRWTSK.Analysis.FiniteSums.WeightedCellRefinement

/-!
# Signed three-coordinate readouts, retained detail, and exact observability

These finite identities reuse the existing equal/unequal cell refinements.
The scalar readout is a-b-c. The two complementary coordinates are invisible
to that readout but must be retained when reconstructing the full energy.
No arithmetic estimate, entropy claim or analytic source identification occurs here.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.FiniteSums.ThreeCoordinateReadout

/-- The source's signed scalar, not its three-dimensional norm. -/
def signedValue (a b c : ℝ) : ℝ := a - b - c

/-- The two old refinement identities give an orthogonal three-coordinate split. -/
theorem energy_split (a b c : ℝ) :
    a ^ 2 + b ^ 2 + c ^ 2 = (signedValue a b c) ^ 2 / 3 +
      (b - c) ^ 2 / 2 + (2 * a + b + c) ^ 2 / 6 := by
  have hpair := GRWTSK.Analysis.FiniteSums.DyadicVariance.pair_centered_split b c 0 2
  have hweighted := GRWTSK.Analysis.FiniteSums.WeightedCellRefinement.split_identity
    1 2 a (-(b + c) / 2) 0 (by norm_num)
  dsimp [GRWTSK.Analysis.FiniteSums.DyadicVariance.pairMean] at hpair
  dsimp [GRWTSK.Analysis.FiniteSums.WeightedCellRefinement.mean] at hweighted
  dsimp [signedValue]
  nlinarith [hpair, hweighted]

theorem signed_square_le_three_energy (a b c : ℝ) :
    (signedValue a b c) ^ 2 ≤ 3 * (a ^ 2 + b ^ 2 + c ^ 2) := by
  rw [energy_split]
  nlinarith [sq_nonneg (b - c), sq_nonneg (2 * a + b + c)]

/-- Details can be nonzero even when the scalar target is exactly zero. -/
theorem invisible_directions (d e : ℝ) : signedValue (d + e) d e = 0 := by
  unfold signedValue
  ring

theorem signedValue_invariant (a b c d e : ℝ) :
    signedValue (a + d + e) (b + d) (c + e) = signedValue a b c := by
  unfold signedValue
  ring

/-- The component parallel to (1,-1,-1) has exactly the same signed value. -/
theorem projected_value (s : ℝ) : signedValue (s / 3) (-s / 3) (-s / 3) = s := by
  unfold signedValue
  ring

theorem projected_energy (s : ℝ) :
    (s / 3) ^ 2 + (-s / 3) ^ 2 + (-s / 3) ^ 2 = s ^ 2 / 3 := by ring

/-- Explicit inversion of the scalar and two detail coordinates. -/
theorem reconstruction (a b c : ℝ) :
    a = (signedValue a b c + (2 * a + b + c)) / 3 ∧
    b = ((2 * a + b + c) - 2 * signedValue a b c + 3 * (b - c)) / 6 ∧
    c = ((2 * a + b + c) - 2 * signedValue a b c - 3 * (b - c)) / 6 := by
  unfold signedValue
  constructor
  · ring
  constructor <;> ring

/-- The scalar response is strictly weaker than control of all coordinates. -/
theorem zero_readout_unbounded_energy (B : ℝ) :
    ∃ a b c : ℝ, signedValue a b c = 0 ∧ B < a ^ 2 + b ^ 2 + c ^ 2 := by
  refine ⟨B + 1, B + 1, 0, ?_, ?_⟩
  · unfold signedValue; ring
  · nlinarith [sq_nonneg (B + 3 / 4)]

/-- A readout is recoverable from features exactly when it is constant on their fibres.
This is not a claim that an arithmetic feature map has the stated property. -/
theorem decoder_exists_iff {α β : Type*} (feature : α → β) (readout : α → ℝ) :
    (∃ decode : β → ℝ, ∀ x, decode (feature x) = readout x) ↔
      (∀ x y, feature x = feature y → readout x = readout y) := by
  classical
  constructor
  · rintro ⟨decode, hd⟩ x y hxy
    rw [← hd x, ← hd y, hxy]
  · intro hf
    let decode : β → ℝ := fun b =>
      if h : ∃ x, feature x = b then readout (Classical.choose h) else 0
    refine ⟨decode, ?_⟩
    intro x
    have hx : ∃ y, feature y = feature x := ⟨x, rfl⟩
    dsimp [decode]
    rw [dif_pos hx]
    exact hf _ x (Classical.choose_spec hx)

/-- Total mass and the last-two difference do not determine the signed value. -/
theorem two_features_insufficient :
    ¬ ∃ decode : ℝ × ℝ → ℝ, ∀ a b c : ℝ,
      decode (a + b + c, b - c) = signedValue a b c := by
  rintro ⟨decode, hd⟩
  have h0 := hd 0 0 0
  have h1 := hd 2 (-1) (-1)
  norm_num [signedValue] at h0 h1
  linarith

end GRWTSK.Analysis.FiniteSums.ThreeCoordinateReadout
