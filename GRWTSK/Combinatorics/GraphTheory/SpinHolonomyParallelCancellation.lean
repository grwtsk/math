/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; AI-assisted Lean drafting.
SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_MATHEMATICAL_REVIEW_NOT_RUN. -/
import GRWTSK.Combinatorics.GraphTheory.SpinHolonomySignedDomination
import Mathlib.Tactic

/-!
# A sharp finite cancellation budget for signed spin transport

## Source and consumer

The source is the EXISTING `SpinHolonomyFiniteDiffusion.EventDiffusion`:
a finite row-normalized inventory of fully tagged quiver arrows, whose
weights are nonnegative and whose phases are Bool. Its incoming signed
density operator `SpinHolonomyFullAdjoint.signedPush` is NOT positive,
although the full two-sheet operator is a Markov operator.

This increment gives a quantitative strengthening of the earlier
nonexpansion theorem `signedPushEvolve_l1_le`. For a source a and target b,
let plus(a,b) and minus(a,b) be the TOTAL WEIGHTS of the actual positive-
and negative-phase arrows from a to b. Parallel arrows retain their own
labels and are aggregated only in these certified row coefficients.

The signed row is plus - minus, while the unsigned row is plus + minus.
The real scalar identity

  |plus - minus| = plus + minus - 2 * min plus minus

gives the exact source-specific cancellation deficit

  defect(a) = 2 * sum_b min(plus(a,b), minus(a,b)),
  sum_b |signedRow(a,b)| = 1 - defect(a).

The bound 0 ≤ defect(a) ≤ 1 follows from the ACTUAL source-row
normalization, not from a fictitious signed Markov law.

If every source has defect(a) ≥ ε, with 0 ≤ ε ≤ 1, then for all initial
signed real masses m and every natural time n,

  sum_b |signedPushEvolve D m n b|
    ≤ (1 - ε)^n * sum_a |m a|.

This proves strict geometric signed L1 contraction when ε > 0, under an
explicit finite source certificate. Its proof does not assume irreducibility,
reversibility, a ground-state gap, or a complete arithmetic trace formula.

## Analytical comparison and boundaries

The primary mechanism is exact positive/negative arrow splitting, finite
triangle inequalities, and row-wise summation. This is distinct from
the old pure-gauge obstruction: a coboundary phase has a nonzero fixed
signed observable and therefore cannot have any positive *uniform*
strict contraction rate under the same finite source hypotheses.
Indeed the resulting source rows must have zero deficit at some vertex.

Two equally weighted opposite-phase parallel arrows a→b have maximal
local cancellation: their signed aggregate vanishes, while the full
two-sheet process remains positive and conserves mass. Conversely,
negative holonomy or negative edges alone do not force parallel-edge
cancellation, so the hypothesis is substantive. This theorem is about
finite-time algebra and does not prove physical energy or spectral/Weil
positivity, RH, Dirichlet GRH, or a continuous heat-semigroup limit.

The mechanism is the standard absolute-column-sum norm estimate for a
finite signed matrix, here returned to the EXACT edge-tag source.
No independent priority/novelty claim is made. The Lean scripts have
not been compiled, kernel checked, or axiom audited in this increment.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinHolonomyParallelCancellation

open Quiver
open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.EdgeTrace
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinHolonomyEventWalk
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinHolonomyFiniteDiffusion
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinHolonomyFullAdjoint
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinHolonomySignedDomination

universe u

variable {V : Type u} [Quiver V] [Fintype V] [DecidableEq V]
  [Fintype (Event V)]

/-- Source- and target-resolved weight of all actual positive-phase
arrow identities. -/
def positiveRow (D : EventDiffusion V) (a b : V) : ℝ :=
  ∑ e : Event V,
    if e.1 = a ∧ e.2.1 = b ∧ D.phase e = false then D.weight e else 0

/-- Source- and target-resolved weight of all actual negative-phase
arrow identities. -/
def negativeRow (D : EventDiffusion V) (a b : V) : ℝ :=
  ∑ e : Event V,
    if e.1 = a ∧ e.2.1 = b ∧ D.phase e = true then D.weight e else 0

/-- The exact signed transition coefficient at a vertex pair, obtained
by summing over the ORIGINAL tagged-arrow identities. -/
def signedRow (D : EventDiffusion V) (a b : V) : ℝ :=
  ∑ e : Event V,
    if e.1 = a ∧ e.2.1 = b then
      D.weight e * bitSign ℝ (D.phase e) else 0

theorem positiveRow_nonneg (D : EventDiffusion V) (a b : V) :
    0 ≤ positiveRow D a b := by
  unfold positiveRow
  apply Finset.sum_nonneg
  intro e _
  split_ifs
  · exact D.weight_nonneg e
  · exact le_refl 0

theorem negativeRow_nonneg (D : EventDiffusion V) (a b : V) :
    0 ≤ negativeRow D a b := by
  unfold negativeRow
  apply Finset.sum_nonneg
  intro e _
  split_ifs
  · exact D.weight_nonneg e
  · exact le_refl 0

/-- The signed coefficient is exactly the difference of the two
nonnegative phase channels; it is not a new independently specified
signed adjacency matrix. -/
theorem signedRow_eq_positive_sub_negative (D : EventDiffusion V)
    (a b : V) :
    signedRow D a b = positiveRow D a b - negativeRow D a b := by
  classical
  unfold signedRow positiveRow negativeRow
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro e _
  by_cases ha : e.1 = a
  · by_cases hb : e.2.1 = b
    · cases hp : D.phase e <;>
        simp [ha, hb, hp, bitSign] <;> ring
    · simp [ha, hb]
  · simp [ha]

/-- The untwisted arrow weight is the sum of the two phase channels. -/
theorem positive_add_negative_row (D : EventDiffusion V)
    (a b : V) :
    positiveRow D a b + negativeRow D a b =
      ∑ e : Event V,
        if e.1 = a ∧ e.2.1 = b then D.weight e else 0 := by
  classical
  unfold positiveRow negativeRow
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro e _
  by_cases ha : e.1 = a
  · by_cases hb : e.2.1 = b
    · cases hp : D.phase e <;> simp [ha, hb, hp]
    · simp [ha, hb]
  · simp [ha]

/-- THE actual source-row normalization, with each parallel arrow
accounted for once in exactly one of the two phase channels. -/
theorem phase_rows_sum_one (D : EventDiffusion V) (a : V) :
    (∑ b : V, positiveRow D a b + negativeRow D a b) = 1 := by
  classical
  calc
    (∑ b : V, positiveRow D a b + negativeRow D a b) =
        ∑ b : V, ∑ e : Event V,
          if e.1 = a ∧ e.2.1 = b then D.weight e else 0 := by
            apply Finset.sum_congr rfl
            intro b _
            exact positive_add_negative_row D a b
    _ = ∑ e : Event V, ∑ b : V,
          if e.1 = a ∧ e.2.1 = b then D.weight e else 0 :=
        Finset.sum_comm
    _ = ∑ e : Event V,
          if e.1 = a then D.weight e else 0 := by
            apply Finset.sum_congr rfl
            intro e _
            by_cases ha : e.1 = a
            · simp [ha]
            · simp [ha]
    _ = 1 := D.row_mass_one a

/-- Elementary signed-mass cancellation: the loss in the sum of absolute
weights is twice the smaller phase channel. -/
private theorem abs_sub_eq_add_sub_two_min (p q : ℝ)
    (hp : 0 ≤ p) (hq : 0 ≤ q) :
    |p - q| = p + q - 2 * min p q := by
  rcases le_total p q with h | h
  · rw [min_eq_left h, abs_of_nonpos (sub_nonpos.mpr h)]
    ring
  · rw [min_eq_right h, abs_of_nonneg (sub_nonneg.mpr h)]
    ring

/-- Total local cancellation, measured on the ORIGINAL source-row
stochastic normalization. The factor two is exact. -/
def cancellationDeficit (D : EventDiffusion V) (a : V) : ℝ :=
  2 * ∑ b : V, min (positiveRow D a b) (negativeRow D a b)

/-- The complete source-row absolute mass has an EXACT deficit, not
merely an upper estimate for selected trial fields. -/
theorem signedRow_abs_sum_eq_one_sub_deficit
    (D : EventDiffusion V) (a : V) :
    (∑ b : V, |signedRow D a b|) = 1 - cancellationDeficit D a := by
  classical
  calc
    (∑ b : V, |signedRow D a b|) =
        ∑ b : V, (positiveRow D a b + negativeRow D a b -
          2 * min (positiveRow D a b) (negativeRow D a b)) := by
            apply Finset.sum_congr rfl
            intro b _
            rw [signedRow_eq_positive_sub_negative]
            exact abs_sub_eq_add_sub_two_min
              (positiveRow D a b) (negativeRow D a b)
              (positiveRow_nonneg D a b) (negativeRow_nonneg D a b)
    _ = (∑ b : V, positiveRow D a b + negativeRow D a b) -
          2 * (∑ b : V, min (positiveRow D a b) (negativeRow D a b)) := by
            rw [Finset.sum_sub_distrib, Finset.mul_sum]
    _ = 1 - cancellationDeficit D a := by
          rw [phase_rows_sum_one]
          rfl

theorem cancellationDeficit_nonneg (D : EventDiffusion V) (a : V) :
    0 ≤ cancellationDeficit D a := by
  unfold cancellationDeficit
  apply mul_nonneg (by norm_num)
  apply Finset.sum_nonneg
  intro b _
  exact le_min (positiveRow_nonneg D a b) (negativeRow_nonneg D a b)

theorem cancellationDeficit_le_one (D : EventDiffusion V) (a : V) :
    cancellationDeficit D a ≤ 1 := by
  have hsum : 0 ≤ ∑ b : V, |signedRow D a b| :=
    Finset.sum_nonneg (fun b _ => abs_nonneg _)
  rw [signedRow_abs_sum_eq_one_sub_deficit] at hsum
  linarith

/-- The original incoming signed density step is the matrix action of
the actual signed rows. This is the consuming interface for the
cancellation estimate. -/
theorem signedPush_eq_signedRows (D : EventDiffusion V)
    (m : V → ℝ) (b : V) :
    signedPush D m b = ∑ a : V, signedRow D a b * m a := by
  classical
  calc
    signedPush D m b =
        ∑ e : Event V,
          if e.2.1 = b then
            D.weight e * bitSign ℝ (D.phase e) * m e.1 else 0 := rfl
    _ = ∑ e : Event V, ∑ a : V,
          if e.1 = a ∧ e.2.1 = b then
            D.weight e * bitSign ℝ (D.phase e) * m a else 0 := by
            apply Finset.sum_congr rfl
            intro e _
            by_cases hb : e.2.1 = b
            · simp [hb]
            · simp [hb]
    _ = ∑ a : V, ∑ e : Event V,
          if e.1 = a ∧ e.2.1 = b then
            D.weight e * bitSign ℝ (D.phase e) * m a else 0 :=
        Finset.sum_comm
    _ = ∑ a : V, signedRow D a b * m a := by
          apply Finset.sum_congr rfl
          intro a _
          unfold signedRow
          rw [Finset.sum_mul]
          apply Finset.sum_congr rfl
          intro e _
          by_cases h : e.1 = a ∧ e.2.1 = b
          · simp [h]
          · simp [h]

/-- A concrete finite ROW certificate `∑ |signedRow| ≤ κ` suffices to
bound the one-step signed incoming density operator in L1. No signed
positivity or source-spectral gap is assumed. -/
theorem signedPush_l1_le_of_rowCap (D : EventDiffusion V)
    (κ : ℝ)
    (hcap : ∀ a : V, (∑ b : V, |signedRow D a b|) ≤ κ)
    (m : V → ℝ) :
    (∑ b : V, |signedPush D m b|) ≤
      κ * (∑ a : V, |m a|) := by
  classical
  have hpoint (b : V) :
      |signedPush D m b| ≤
        ∑ a : V, |signedRow D a b| * |m a| := by
    rw [signedPush_eq_signedRows]
    calc
      |∑ a : V, signedRow D a b * m a| ≤
          ∑ a : V, |signedRow D a b * m a| :=
        Finset.abs_sum_le_sum_abs _ _
      _ = ∑ a : V, |signedRow D a b| * |m a| := by
        simp_rw [abs_mul]
  calc
    (∑ b : V, |signedPush D m b|) ≤
        ∑ b : V, ∑ a : V, |signedRow D a b| * |m a| :=
          Finset.sum_le_sum (fun b _ => hpoint b)
    _ = ∑ a : V, (∑ b : V, |signedRow D a b|) * |m a| := by
          rw [Finset.sum_comm]
          simp_rw [Finset.sum_mul]
    _ ≤ ∑ a : V, κ * |m a| := by
          apply Finset.sum_le_sum
          intro a _
          exact mul_le_mul_of_nonneg_right (hcap a) (abs_nonneg _)
    _ = κ * (∑ a : V, |m a|) := by rw [Finset.mul_sum]

/-- The row-sum certificate propagates through EVERY finite iterate.
No generator exponential or continuous-time limit is asserted. -/
theorem signedPushEvolve_l1_le_of_rowCap (D : EventDiffusion V)
    (κ : ℝ) (hκ : 0 ≤ κ)
    (hcap : ∀ a : V, (∑ b : V, |signedRow D a b|) ≤ κ)
    (m : V → ℝ) (n : ℕ) :
    (∑ b : V, |signedPushEvolve D m n b|) ≤
      κ ^ n * (∑ a : V, |m a|) := by
  induction n generalizing m with
  | zero =>
      simp [signedPushEvolve]
  | succ n ih =>
      change
        (∑ b : V, |signedPushEvolve D (signedPush D m) n b|) ≤
          κ ^ (n + 1) * (∑ a : V, |m a|)
      calc
        (∑ b : V, |signedPushEvolve D (signedPush D m) n b|) ≤
            κ ^ n * (∑ a : V, |signedPush D m a|) :=
          ih (signedPush D m)
        _ ≤ κ ^ n * (κ * (∑ a : V, |m a|)) :=
          mul_le_mul_of_nonneg_left
            (signedPush_l1_le_of_rowCap D κ hcap m) (pow_nonneg hκ n)
        _ = κ ^ (n + 1) * (∑ a : V, |m a|) := by
          rw [pow_succ]
          ring

/-- An EXPLICIT uniform amount of genuine positive/negative
parallel-edge cancellation gives a strict signed contraction rate
whenever the common deficit ε is positive. -/
theorem signedPushEvolve_l1_le_of_cancellation (D : EventDiffusion V)
    (ε : ℝ) (hε0 : 0 ≤ ε) (hε1 : ε ≤ 1)
    (hcancel : ∀ a : V, ε ≤ cancellationDeficit D a)
    (m : V → ℝ) (n : ℕ) :
    (∑ b : V, |signedPushEvolve D m n b|) ≤
      (1 - ε) ^ n * (∑ a : V, |m a|) := by
  apply signedPushEvolve_l1_le_of_rowCap D (1 - ε)
    (sub_nonneg.mpr hε1) ?_ m n
  intro a
  rw [signedRow_abs_sum_eq_one_sub_deficit]
  linarith [hcancel a]

/-- One destination with both phase channels contributes its full
two-channel cancellation to the original source's deficit. This
statement keeps actual parallel-edge weights rather than phase counts. -/
theorem two_channel_contribution_le_deficit (D : EventDiffusion V)
    (a b : V) :
    2 * min (positiveRow D a b) (negativeRow D a b) ≤
      cancellationDeficit D a := by
  have hnonneg (x : V) :
      0 ≤ min (positiveRow D a x) (negativeRow D a x) :=
    le_min (positiveRow_nonneg D a x) (negativeRow_nonneg D a x)
  have hsingle :
      min (positiveRow D a b) (negativeRow D a b) ≤
        ∑ x : V, min (positiveRow D a x) (negativeRow D a x) :=
    Finset.single_le_sum (fun x _ => hnonneg x) (Finset.mem_univ b)
  unfold cancellationDeficit
  exact mul_le_mul_of_nonneg_left hsingle (by norm_num)

/-- A checkable lower bound on BOTH actual phase-channel weights at
one fixed target gives a source-specific quantitative cancellation. -/
theorem deficit_ge_of_two_channels (D : EventDiffusion V)
    (a b : V) (r : ℝ)
    (hplus : r ≤ positiveRow D a b)
    (hminus : r ≤ negativeRow D a b) :
    2 * r ≤ cancellationDeficit D a := by
  have hmin : r ≤ min (positiveRow D a b) (negativeRow D a b) :=
    le_min hplus hminus
  exact (mul_le_mul_of_nonneg_left hmin (by norm_num)).trans
    (two_channel_contribution_le_deficit D a b)

/-- An explicit parallel-arrow-channel certificate at EACH source
implies strict geometric cancellation at all finite times whenever
r > 0. The target vertex may depend on the source. -/
theorem signedPushEvolve_l1_le_of_parallel_channels (D : EventDiffusion V)
    (r : ℝ) (hr0 : 0 ≤ r) (hrhalf : r ≤ 1 / 2)
    (hpair : ∀ a : V, ∃ b : V,
      r ≤ positiveRow D a b ∧ r ≤ negativeRow D a b)
    (m : V → ℝ) (n : ℕ) :
    (∑ b : V, |signedPushEvolve D m n b|) ≤
      (1 - 2 * r) ^ n * (∑ a : V, |m a|) := by
  apply signedPushEvolve_l1_le_of_cancellation D (2 * r)
    (by linarith) (by linarith) ?_ m n
  intro a
  obtain ⟨b, hplus, hminus⟩ := hpair a
  exact deficit_ge_of_two_channels D a b r hplus hminus


end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinHolonomyParallelCancellation
end
