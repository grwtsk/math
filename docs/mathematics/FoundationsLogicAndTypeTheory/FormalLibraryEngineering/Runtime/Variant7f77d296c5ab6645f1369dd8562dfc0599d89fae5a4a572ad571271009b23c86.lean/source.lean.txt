import Think.Epistemology.Induction.Core

namespace Think.Epistemology.Induction

structure RuntimeScaleReceipt where
  fromScale : Nat
  toScale : Nat
  kernelBefore : String
  kernelAfter : String
  eventHash : String
  logHash : String
  kernelStable : Bool
  receiptsOnly : Bool
  claimBearing : Bool
deriving DecidableEq, Repr

def RuntimeScaleReceipt.accepted (R : RuntimeScaleReceipt) : Prop :=
  R.kernelStable = true ∧
  R.kernelAfter = R.kernelBefore ∧
  R.receiptsOnly = true ∧
  R.claimBearing = false

def RuntimeScaleReceipt.fastCheck (R : RuntimeScaleReceipt) : Bool :=
  R.kernelStable &&
  (R.kernelAfter == R.kernelBefore) &&
  R.receiptsOnly &&
  !R.claimBearing

theorem RuntimeScaleReceipt.kernel_unchanged_if_accepted
    (R : RuntimeScaleReceipt) :
    R.accepted → R.kernelAfter = R.kernelBefore :=
by
  intro h
  exact h.right.left

theorem RuntimeScaleReceipt.receipts_only_if_accepted
    (R : RuntimeScaleReceipt) :
    R.accepted → R.receiptsOnly = true :=
by
  intro h
  exact h.right.right.left

end Think.Epistemology.Induction
