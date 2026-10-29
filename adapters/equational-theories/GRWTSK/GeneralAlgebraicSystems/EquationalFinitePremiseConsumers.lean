/-
Local attribution: grwtsk contributors.

The imported equational proof calculus and completeness theorem are from the
pinned equational_theories dependency, whose original attribution and Apache-2.0
license remain upstream. These are source proof candidates. Compilation, fresh
kernel replay and complete transitive axiom auditing are NOT_RUN.
-/
import equational_theories.Compactness

/-!
# Exact finite premises for equational-law consumers

The existing GRWTSK joint-premise programme needs every premise of a selected
inference to remain available. An equational proof is a particularly concrete
consumer: the upstream Type-valued derivation computes its finite set of used
axioms. The upstream `Compactness` endpoint exposes a finite context, but does
not include the useful assertion that it is a subset of the original context.

This module proves that subset assertion from the actual derivation. It then
uses upstream soundness/completeness to obtain a finite subcontext preserving
semantic consequence, and to justify keeping only a slice containing the used
axioms of a chosen proof. It does not assert minimality of that support, convert
a reachability graph to a proof, or identify this calculus with the root
`JointPremiseInference` representation. That reification bridge is separate.
-/

namespace GRWTSK.GeneralAlgebraicSystems.EquationalFinitePremiseConsumers

open Law

universe u

/-- Every axiom extracted from a derivation is an actual member of its original
context. Substitution changes terms, not the source-axiom identity. -/
theorem axiomSupport_subset {α : Type u} [DecidableEq α]
    {Γ : Ctx α} {E : MagmaLaw α} (d : Γ ⊢ E) :
    ∀ F, F ∈ derive.getAxioms d → F ∈ Γ := by
  induction d with
  | @Ax E h =>
      intro F hF
      have hFE : F = E := by
        simpa only [derive.getAxioms, Finset.mem_singleton] using hF
      simpa only [hFE] using h
  | Ref =>
      intro F hF
      exact False.elim (by simpa only [derive.getAxioms, Finset.not_mem_empty] using hF)
  | Sym d ih => exact ih
  | Trans d₁ d₂ ih₁ ih₂ =>
      intro F hF
      rcases Finset.mem_union.mp hF with hF | hF
      · exact ih₁ F hF
      · exact ih₂ F hF
  | Subst σ d ih => exact ih
  | Cong d₁ d₂ ih₁ ih₂ =>
      intro F hF
      rcases Finset.mem_union.mp hF with hF | hF
      · exact ih₁ F hF
      · exact ih₂ F hF

/-- Semantic consequence admits a finite subset of the original assumptions.
The witness is the source-axiom set of a completeness-produced derivation. -/
theorem finite_subcontext_consequence {α : Type u} [DecidableEq α]
    {Γ : Ctx α} {E : MagmaLaw α} (h : Γ ⊧ E) :
    ∃ Δ : Finset (MagmaLaw α),
      (ToCtx Δ ⊆ Γ) ∧ (ToCtx Δ ⊧ E) := by
  obtain ⟨d⟩ := _root_.Completeness h
  refine ⟨derive.getAxioms d, ?_, _root_.Soundness (derive.getAxiomsEnough d)⟩
  intro F hF
  exact axiomSupport_subset d F hF

/-- A consumer may discard unused axioms of a chosen proof, provided it retains
all of that proof's actual source axioms jointly. No minimal-proof claim follows. -/
theorem consequence_of_retained_support {α : Type u} [DecidableEq α]
    {Γ : Ctx α} {E : MagmaLaw α} (d : Γ ⊢ E)
    (Δ : Finset (MagmaLaw α))
    (hkeep : ∀ F, F ∈ derive.getAxioms d → F ∈ Δ) :
    ToCtx Δ ⊧ E := by
  have hsub : ToCtx (derive.getAxioms d) ⊆ ToCtx Δ := by
    intro F hF
    exact hkeep F hF
  exact _root_.Soundness (derive.Weak hsub (derive.getAxiomsEnough d))

/-- A concrete countermodel prevents any derivation from the same full context.
The model is arbitrary; finite-model completeness is not being asserted. -/
theorem countermodel_blocks_derivation {α : Type u}
    {Γ : Ctx α} {E : MagmaLaw α} (G : Type) [Magma G]
    (hΓ : G ⊧ Γ) (hE : ¬ G ⊧ E) :
    ¬ Nonempty (Γ ⊢ E) := by
  rintro ⟨d⟩
  exact hE (_root_.Soundness d G hΓ)

/-- Reflexivity consumes no context premise, including when the context is empty. -/
theorem reflexive_support_empty {α : Type u} [DecidableEq α]
    (Γ : Ctx α) (t : FreeMagma α) :
    derive.getAxioms (derive.Ref (Γ := Γ) (t := t)) = ∅ := rfl

/-- Transitivity retains both premise supports. Choosing one branch alone is not
an available rule of the upstream proof calculus. -/
theorem trans_support_mem_iff {α : Type u} [DecidableEq α]
    {Γ : Ctx α} {s t v : FreeMagma α}
    (d₁ : Γ ⊢ MagmaLaw.mk s t) (d₂ : Γ ⊢ MagmaLaw.mk t v)
    (F : MagmaLaw α) :
    F ∈ derive.getAxioms (derive.Trans d₁ d₂) ↔
      F ∈ derive.getAxioms d₁ ∨ F ∈ derive.getAxioms d₂ :=
  Finset.mem_union

end GRWTSK.GeneralAlgebraicSystems.EquationalFinitePremiseConsumers
