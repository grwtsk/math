import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.KernelCorrespondence.Basic

/-!
COHERENCE-1. Agreement is relative to a common operator, domain and restriction.
These logical theorems do not decide foundational consistency, validate an
arbitrary axiom set, or identify different source objects. AI-assisted local
formalization of the explicitly stated proof obligations; no novelty claim.
-/
namespace Coherence

/-- Two certified lifts with the same restriction agree on the reduced kernel. -/
theorem lifts_agree {V W : Type} (T : V → V) (S : W → W)
    (L₁ L₂ : W → V) (R : V → W) (zV : V) (zW : W)
    (first : Finite1Pipeline.KernelCorrespondence T S L₁ R zV zW)
    (second : Finite1Pipeline.KernelCorrespondence T S L₂ R zV zW)
    (x : W) (hx : S x = zW) : L₁ x = L₂ x := by
  have h := first.2.2.2 (L₂ x) (second.1 x hx)
  rw [second.2.2.1 x] at h
  exact h

/-- Any declared observation respects that exact agreement. -/
theorem observations_agree {V W U : Type} (T : V → V) (S : W → W)
    (L₁ L₂ : W → V) (R : V → W) (zV : V) (zW : W)
    (first : Finite1Pipeline.KernelCorrespondence T S L₁ R zV zW)
    (second : Finite1Pipeline.KernelCorrespondence T S L₂ R zV zW)
    (observe : V → U) (x : W) (hx : S x = zW) :
    observe (L₁ x) = observe (L₂ x) :=
  congrArg observe (lifts_agree T S L₁ L₂ R zV zW first second x hx)

/-- Joint assumptions must be checked together, not just two at a time. -/
theorem joint_impossible {A : Type} (x y z : A)
    (xy : x = y) (yz : y = z) (xz : x ≠ z) : False :=
  xz (xy.trans yz)

/-- Actual witnesses for all three pairs, despite the impossible conjunction. -/
theorem pairwise_bool_witnesses :
    (∃ x y z : Bool, x = y ∧ y = z) ∧
    (∃ x y z : Bool, x = y ∧ x ≠ z) ∧
    (∃ x y z : Bool, y = z ∧ x ≠ z) := by
  refine ⟨⟨false, false, false, rfl, rfl⟩, ?_, ?_⟩
  · exact ⟨false, false, true, rfl, by decide⟩
  · exact ⟨true, false, false, rfl, by decide⟩

end Coherence
#print axioms Coherence.lifts_agree
#print axioms Coherence.observations_agree
#print axioms Coherence.joint_impossible
#print axioms Coherence.pairwise_bool_witnesses
