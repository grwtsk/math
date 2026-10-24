import FormalResearch.RiemannHypothesis.Conversation.ZeroStripConsumer
import Mathlib

/-!
# A proved contraction at every strip width reaches the unchanged RH target

B19-L10 distinguishes one improved strip from a boundary-parameterized
iteration. This consumer retains one fixed contraction factor, a proved seed,
and a contraction implication at every positive width. Geometric iteration
then gives arbitrarily small zeta strips and the literal Mathlib RH proposition.
No arithmetic contraction is supplied. Character, conductor and height
uniformity needed to construct such a premise remain separate. Constants and
thresholds used to prove individual stages may depend on that stage.

Human quantifier and bootstrap direction: grwtsk contributors. Local finite
iteration and limiting consumer: OpenAI Codex. Geometric limits and RH retain
Mathlib identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.ZeroStripIteration
open Filter ZeroStripConsumer
open scoped Topology
noncomputable section

theorem strip_width_monotone {eta xi : ℝ} (h : eta ≤ xi) (hs : ZeroStrip eta) :
    ZeroStrip xi := by
  intro s hz
  exact (hs s hz).trans (by linarith)

theorem every_geometric_stage {q eta : ℝ} (hq : 0 < q) (heta : 0 < eta)
    (hseed : ZeroStrip eta)
    (hstep : ∀ xi : ℝ, 0 < xi → ZeroStrip xi → ZeroStrip (q * xi)) :
    ∀ n : ℕ, ZeroStrip (eta * q ^ n) := by
  intro n
  induction n with
  | zero => simpa using hseed
  | succ n ih =>
    have hp : 0 < eta * q ^ n := mul_pos heta (pow_pos hq n)
    have h := hstep (eta * q ^ n) hp ih
    have he : q * (eta * q ^ n) = eta * q ^ (n + 1) := by rw [pow_succ]; ring
    rwa [he] at h

theorem geometric_seed_width_tends_to_zero {q : ℝ} (hq : 0 ≤ q) (hq1 : q < 1) (eta : ℝ) :
    Tendsto (fun n : ℕ ↦ eta * q ^ n) atTop (𝓝 0) := by
  simpa only [mul_zero] using
    (tendsto_const_nhds : Tendsto (fun _ : ℕ ↦ eta) atTop (𝓝 eta)).mul
      (tendsto_pow_atTop_nhds_zero_of_lt_one hq hq1)

theorem every_geometric_stage_implies_rh {q eta : ℝ}
    (hq : 0 ≤ q) (hq1 : q < 1)
    (hstage : ∀ n : ℕ, ZeroStrip (eta * q ^ n)) : RiemannHypothesis := by
  apply arbitrarily_small_strips_imply_rh
  intro xi hxi
  have hb := (geometric_seed_width_tends_to_zero hq hq1 eta).eventually_lt_const hxi
  obtain ⟨n, hn⟩ := hb.exists
  exact strip_width_monotone hn.le (hstage n)

/-- This theorem consumes an unproved all-width contraction, rather than iterating a headline. -/
theorem rh_of_seed_and_all_width_contraction {q eta : ℝ}
    (hq : 0 < q) (hq1 : q < 1) (heta : 0 < eta)
    (hseed : ZeroStrip eta)
    (hstep : ∀ xi : ℝ, 0 < xi → ZeroStrip xi → ZeroStrip (q * xi)) : RiemannHypothesis :=
  every_geometric_stage_implies_rh hq.le hq1 (every_geometric_stage hq heta hseed hstep)

end
end GRWTSK.RiemannHypothesis.Conversation.ZeroStripIteration
