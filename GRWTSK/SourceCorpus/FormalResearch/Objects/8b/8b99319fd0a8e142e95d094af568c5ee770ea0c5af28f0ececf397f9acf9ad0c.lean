import Think.Logic.Mathlib.FiveLayer

open CategoryTheory

universe u v

namespace Think.Epistemology.Adjunction

structure EpistemicReceipt
    (Log Inf : Type u) [Category.{v} Log] [Category.{v} Inf] where
  L : Log ⥤ Inf
  E : Inf ⥤ Log
  adjunction : L ⊣ E
  unitReceiptHash : String
  counitReceiptHash : String
  triangleReceiptHash : String
  evaluationHash : String
  receiptHash : String
  claimBearing : Bool

def EpistemicReceipt.accepted
    {Log Inf : Type u} [Category.{v} Log] [Category.{v} Inf]
    (R : EpistemicReceipt Log Inf) : Prop :=
  R.claimBearing = false

def EpistemicReceipt.has_adjunction
    {Log Inf : Type u} [Category.{v} Log] [Category.{v} Inf]
    (R : EpistemicReceipt Log Inf) :
    R.L ⊣ R.E :=
by
  exact R.adjunction

theorem EpistemicReceipt.not_claim_bearing_if_accepted
    {Log Inf : Type u} [Category.{v} Log] [Category.{v} Inf]
    (R : EpistemicReceipt Log Inf) :
    R.accepted → R.claimBearing = false :=
by
  intro h
  exact h

end Think.Epistemology.Adjunction
