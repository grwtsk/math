import Mathlib

/-! A declared natural-valued rank for settlement recursion. A producer must
justify its source interpretation and every strict decrease. Rescaling a chart
alone does not prove a decrease. No arithmetic recursion is asserted here. -/

namespace HSSCP04

structure NarrowRank where
  scaleIndex : ℕ
  phaseUncertaintyIndex : ℕ
  unresolvedShellDepth : ℕ
  chartComplexity : ℕ
  deriving DecidableEq, Repr

def NarrowRank.cost (r : NarrowRank) : ℕ :=
  r.scaleIndex + r.phaseUncertaintyIndex + r.unresolvedShellDepth + r.chartComplexity

def LowerRank (child parent : NarrowRank) : Prop := child.cost < parent.cost

theorem lowerRank_wellFounded : WellFounded LowerRank :=
  InvImage.wf NarrowRank.cost Nat.lt_wfRel.wf

theorem unchanged_rank_rejected (r : NarrowRank) : ¬ LowerRank r r :=
  Nat.lt_irrefl _

theorem nondecreasing_rank_rejected (child parent : NarrowRank)
    (h : parent.cost ≤ child.cost) : ¬ LowerRank child parent :=
  not_lt.mpr h

theorem rank_zero_terminal (child parent : NarrowRank) (h : parent.cost = 0) :
    ¬ LowerRank child parent := by
  unfold LowerRank
  rw [h]
  exact Nat.not_lt_zero _

/-- An actual descent chain uses at most the initial natural rank in steps. -/
theorem descent_chain_length (r : ℕ → NarrowRank) (n : ℕ)
    (hsteps : ∀ k < n, LowerRank (r (k + 1)) (r k)) :
    n + (r n).cost ≤ (r 0).cost := by
  induction n with
  | zero => simp
  | succ n ih =>
    have hp := ih (fun k hk => hsteps k (Nat.lt_trans hk (Nat.lt_succ_self n)))
    have hs := hsteps n (Nat.lt_succ_self n)
    unfold LowerRank at hs
    omega

end HSSCP04

#print axioms HSSCP04.lowerRank_wellFounded
#print axioms HSSCP04.descent_chain_length
