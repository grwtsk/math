import Think.Logic.Mathlib.Layers
import Think.Wisdom.Monad.Mathlib

namespace Think.Wisdom.Monad

structure OptimizationReceipt where
  targetMonadHash : String
  kleisliReceiptHash : String
  valueObjectHash : String
  optimizationLawHash : String
  claimBearing : Bool

def OptimizationReceipt.accepted (R : OptimizationReceipt) : Prop :=
  R.claimBearing = false

theorem OptimizationReceipt.not_claim_bearing_if_accepted
    (R : OptimizationReceipt) :
    R.accepted → R.claimBearing = false :=
by
  intro h
  exact h

end Think.Wisdom.Monad
