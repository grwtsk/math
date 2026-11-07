/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Data.Set.Basic

/-!
# Inquiry-scoped disclosure and material revisions

Two principles are modeled without pretending that a system knows all facts:
(1) among AVAILABLE and AUTHORIZED facts, every ASKED fact is disclosed;
(2) a new discovery that materially changes a previously given answer
generates a notice intent with the original and revised answer and evidence.

The contrapositive in the first principle distinguishes "not asked" from
"silently withheld". It cannot be applied to inaccessible or unauthorized
facts. The answer carrier should represent semantic content, not wording.
A materiality assessment and discovery identity are explicit inputs, not
claims of truth, permission, authenticity, or actual delivery.

Compare the separate pure notice-intent/authorization pattern in
CareAccessErrorNotification.lean. This source does not dispatch messages,
authorize external effects, or establish any actual assistant compliance.
No novelty claim. Source proof candidate. Compilation, Lean elaboration,
fresh kernel checking, transitive axiom audit and independent review: NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.Communication.InquiryTransparency

universe u v w

/-- Available and authorized are distinct: disclosure does not imply
authority to reveal every available item. -/
structure KnowledgeState (Fact : Type u) where
  available : Set Fact
  asked : Set Fact
  authorized : Set Fact
  disclosed : Set Fact
  disclosed_available : disclosed ⊆ available
  disclosed_authorized : disclosed ⊆ authorized

/-- No withholding within the scope of a question and authorization. -/
def CompleteOnQuestions {Fact : Type u} (s : KnowledgeState Fact) : Prop :=
  ∀ f, f ∈ s.available → f ∈ s.asked → f ∈ s.authorized →
    f ∈ s.disclosed

theorem disclosed_is_available_and_authorized {Fact : Type u}
    (s : KnowledgeState Fact) {f : Fact} (h : f ∈ s.disclosed) :
    f ∈ s.available ∧ f ∈ s.authorized :=
  ⟨s.disclosed_available h, s.disclosed_authorized h⟩

/-- An available, authorized, undisclosed fact was not asked about,
provided requested disclosure is complete. -/
theorem unasked_of_available_authorized_undisclosed {Fact : Type u}
    (s : KnowledgeState Fact) (hc : CompleteOnQuestions s) {f : Fact}
    (hav : f ∈ s.available) (hau : f ∈ s.authorized)
    (hnot : f ∉ s.disclosed) : f ∉ s.asked := by
  intro hasked
  exact hnot (hc f hav hasked hau)

/-- Inclusion of precisely the questioned, authorized, available region
implies the relevant completeness property. -/
theorem complete_on_questions_of_inclusion {Fact : Type u}
    (s : KnowledgeState Fact)
    (h : s.available ∩ s.asked ∩ s.authorized ⊆ s.disclosed) :
    CompleteOnQuestions s := by
  intro f hav hasked hau
  exact h ⟨⟨hav, hasked⟩, hau⟩

/-- A material change must genuinely change the modeled semantic answer.
The consumer still has to justify its materiality and its new evidence. -/
structure AnswerRevision (Question : Type u) (Answer : Type v)
    (Evidence : Type w) where
  question : Question
  previous : Answer
  current : Answer
  discovery : Option Evidence
  material : Bool
  material_implies_changed : material = true → previous ≠ current

/-- A payload retaining both versions and the discovery source. -/
structure RevisionNotice (Question : Type u) (Answer : Type v)
    (Evidence : Type w) where
  question : Question
  previous : Answer
  current : Answer
  discovery : Evidence

/-- Pure notification intent; no message is sent by this definition. -/
def noticeIntent {Question : Type u} {Answer : Type v}
    {Evidence : Type w} (r : AnswerRevision Question Answer Evidence) :
    Option (RevisionNotice Question Answer Evidence) :=
  match r.discovery with
  | none => none
  | some e =>
      if r.material then
        some { question := r.question, previous := r.previous,
               current := r.current, discovery := e }
      else none

theorem notice_none_without_discovery {Question : Type u} {Answer : Type v}
    {Evidence : Type w} (r : AnswerRevision Question Answer Evidence)
    (h : r.discovery = none) : noticeIntent r = none := by
  simp [noticeIntent, h]

theorem notice_none_if_immaterial {Question : Type u} {Answer : Type v}
    {Evidence : Type w} (r : AnswerRevision Question Answer Evidence)
    (h : r.material = false) : noticeIntent r = none := by
  cases hd : r.discovery with
  | none => simp [noticeIntent, hd]
  | some e => simp [noticeIntent, hd, h]

/-- The exact before/after/source return for a material new discovery. -/
theorem notice_of_material_discovery {Question : Type u} {Answer : Type v}
    {Evidence : Type w} (r : AnswerRevision Question Answer Evidence)
    (e : Evidence) (hd : r.discovery = some e)
    (hm : r.material = true) :
    noticeIntent r = some {
      question := r.question
      previous := r.previous
      current := r.current
      discovery := e
    } := by
  simp [noticeIntent, hd, hm]

theorem notice_some_iff {Question : Type u} {Answer : Type v}
    {Evidence : Type w} (r : AnswerRevision Question Answer Evidence) :
    (∃ n, noticeIntent r = some n) ↔
      r.discovery.isSome = true ∧ r.material = true := by
  cases hd : r.discovery with
  | none => simp [noticeIntent, hd]
  | some e =>
      cases hm : r.material with
      | false => simp [noticeIntent, hd, hm]
      | true => simp [noticeIntent, hd, hm]

theorem notice_implies_answer_changed {Question : Type u} {Answer : Type v}
    {Evidence : Type w} (r : AnswerRevision Question Answer Evidence)
    {n : RevisionNotice Question Answer Evidence}
    (hn : noticeIntent r = some n) : r.previous ≠ r.current := by
  have hm : r.material = true := ((notice_some_iff r).mp ⟨n, hn⟩).2
  exact r.material_implies_changed hm

end GRWTSK.Communication.InquiryTransparency
