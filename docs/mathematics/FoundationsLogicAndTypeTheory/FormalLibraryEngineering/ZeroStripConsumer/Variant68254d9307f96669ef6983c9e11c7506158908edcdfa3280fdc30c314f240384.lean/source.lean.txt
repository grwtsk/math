import FormalResearch.RiemannHypothesis.Definitions
import Mathlib.Tactic

/-!
# The next consumer of arbitrarily small zero strips

The rate-extension discussion in audited RH conversation Batch 01 permits a
different eventual polynomial constant and threshold at each stage. Its final
consumer only needs strips with widths tending to zero; it does not need one
constant uniform across all stages. This module proves that final implication
for Mathlib's unchanged RH target. The analytic production of each strip is a
separate unproved obligation, not an axiom in this file.

Human direction: grwtsk contributors. Lean implementation: OpenAI Codex.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.ZeroStripConsumer

open FormalResearch.RiemannHypothesis

/-- The exact source-zero predicate is retained at every stage. -/
def ZeroStrip (η : ℝ) : Prop :=
  ∀ s : ℂ, NontrivialZetaZero s → |s.re - 1 / 2| ≤ η / 2

/-- Arbitrarily small proved strips imply the literal Mathlib RH proposition. -/
theorem arbitrarily_small_strips_imply_rh
    (h : ∀ η : ℝ, 0 < η → ZeroStrip η) : RiemannHypothesis := by
  intro s hz hn hp
  have hs : NontrivialZetaZero s := ⟨hz, hn, hp⟩
  by_contra hre
  have hd : 0 < |s.re - 1 / 2| := abs_pos.mpr (sub_ne_zero.mpr hre)
  have hb := h |s.re - 1 / 2| hd s hs
  linarith

/-- A fixed seed strip is a single stage and does not give an automatic gain. -/
theorem seed_rate_returns_seed :
    (1 / 2 : ℝ) + (3 / 4) / 2 = 7 / 8 := by norm_num

end GRWTSK.RiemannHypothesis.Conversation.ZeroStripConsumer
