import FormalResearch.MathematicalTooling.Coverage.Finite
import Mathlib.Data.List.OfFn

/-!
# Scoped proof composition

An inductive tree is acyclic. Its source, domain, hypotheses and claim are part
of its type; each rule consumes an actual implication or cover proof. The
source-indexed claim must supply the mathematical meaning of its source.
Human research direction: grwtsk contributors. Implementation: OpenAI Codex.
-/

namespace FormalResearch.MathematicalTooling.Certificates

universe u v
variable {Source : Type u} {X : Type v}

/-- Finite proof trees indexed by exact source and hypothesis semantics. -/
inductive ScopedProof (source : Source) (H : X → Prop) :
    (domain : Set X) → (claim : Source → X → Prop) → Type (max u v)
  | leaf {D P} (proof : ∀ x ∈ D, H x → P source x) : ScopedProof source H D P
  | and {D P Q} (left : ScopedProof source H D P) (right : ScopedProof source H D Q) :
      ScopedProof source H D (fun s x ↦ P s x ∧ Q s x)
  | chooseLeft {D} {P Q : Source → X → Prop} (proof : ScopedProof source H D P) :
      ScopedProof source H D (fun s x ↦ P s x ∨ Q s x)
  | chooseRight {D} {P Q : Source → X → Prop} (proof : ScopedProof source H D Q) :
      ScopedProof source H D (fun s x ↦ P s x ∨ Q s x)
  | implication {D P Q} (proof : ScopedProof source H D P)
      (transfer : ∀ x ∈ D, H x → P source x → Q source x) : ScopedProof source H D Q
  | restrict {D E P} (proof : ScopedProof source H D P) (subset : E ⊆ D) :
      ScopedProof source H E P
  | cover {D P} {n : ℕ} (cells : Fin n → Set X)
      (coverage : ∀ x ∈ D, ∃ i, x ∈ cells i)
      (children : ∀ i, ScopedProof source H (cells i) P) : ScopedProof source H D P
  | coverTail {D P} {n : ℕ} (cells : Fin n → Set X) (tail : Set X)
      (coverage : ∀ x ∈ D, (∃ i, x ∈ cells i) ∨ x ∈ tail)
      (children : ∀ i, ScopedProof source H (cells i) P)
      (tailProof : ScopedProof source H tail P) : ScopedProof source H D P

/-- Every accepted composition proves its declared proposition on its own domain. -/
theorem ScopedProof.sound {source : Source} {H : X → Prop} {D : Set X}
    {P : Source → X → Prop} (proof : ScopedProof source H D P) :
    ∀ x ∈ D, H x → P source x := by
  induction proof with
  | leaf proof => exact proof
  | and _ _ ihLeft ihRight =>
    exact fun x hx hH ↦ ⟨ihLeft x hx hH, ihRight x hx hH⟩
  | chooseLeft _ ih => exact fun x hx hH ↦ .inl (ih x hx hH)
  | chooseRight _ ih => exact fun x hx hH ↦ .inr (ih x hx hH)
  | implication _ transfer ih => exact fun x hx hH ↦ transfer x hx hH (ih x hx hH)
  | restrict _ subset ih => exact fun x hx hH ↦ ih x (subset hx) hH
  | cover cells coverage _ ih =>
    intro x hx hH
    obtain ⟨i, hi⟩ := coverage x hx
    exact ih i x hi hH
  | coverTail cells tail coverage _ _ ih iht =>
    intro x hx hH
    rcases coverage x hx with ⟨i, hi⟩ | ht
    · exact ih i x hi hH
    · exact iht x ht hH

/-- The maximum includes zero so empty regional covers have an explicit budget. -/
def regionalMaximum : List ℝ → ℝ
  | [] => 0
  | c :: cs => max c (regionalMaximum cs)

theorem le_regionalMaximum {cs : List ℝ} {c : ℝ} (hc : c ∈ cs) :
    c ≤ regionalMaximum cs := by
  induction cs with
  | nil => simp only [List.not_mem_nil] at hc
  | cons d ds ih =>
    rcases List.mem_cons.mp hc with rfl | hm
    · exact le_max_left _ _
    · exact (ih hm).trans (le_max_right _ _)

/-- Regional composition propagates a proved maximum constant on the exact covered domain. -/
def regionalCover (source : Source) (H : X → Prop) (D : Set X)
    (f : Source → X → ℝ) {n : ℕ} (cells : Fin n → Set X) (constants : Fin n → ℝ)
    (coverage : ∀ x ∈ D, ∃ i, x ∈ cells i)
    (children : ∀ i, ScopedProof source H (cells i) (fun s x ↦ f s x ≤ constants i)) :
    ScopedProof source H D (fun s x ↦ f s x ≤ regionalMaximum (List.ofFn constants)) :=
  .cover cells coverage (fun i ↦ .implication (children i) (by
    intro x _ _ h
    exact h.trans (le_regionalMaximum (List.mem_ofFn.mpr ⟨i, rfl⟩))))

/-- A separate tail proof remains mandatory and its constant joins the maximum. -/
def regionalCoverTail (source : Source) (H : X → Prop) (D tail : Set X)
    (f : Source → X → ℝ) {n : ℕ} (cells : Fin n → Set X) (constants : Fin n → ℝ)
    (tailConstant : ℝ) (coverage : ∀ x ∈ D, (∃ i, x ∈ cells i) ∨ x ∈ tail)
    (children : ∀ i, ScopedProof source H (cells i) (fun s x ↦ f s x ≤ constants i))
    (tailProof : ScopedProof source H tail (fun s x ↦ f s x ≤ tailConstant)) :
    ScopedProof source H D
      (fun s x ↦ f s x ≤ max (regionalMaximum (List.ofFn constants)) tailConstant) :=
  .coverTail cells tail coverage (fun i ↦ .implication (children i) (by
    intro x _ _ h
    exact h.trans ((le_regionalMaximum (List.mem_ofFn.mpr ⟨i, rfl⟩)).trans
      (le_max_left _ _))))
    (.implication tailProof (by intro x _ _ h; exact h.trans (le_max_right _ _)))

end FormalResearch.MathematicalTooling.Certificates
