# Complete source: GRWTSK.Logic.PTSModelTransport

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `46eca07b0b7a7c3f6c978f4c13d0c8081f278f9d` · SHA-256 `cfbca6eb89b6b9e690c4e8ef029af7e9c3ad4c65cac33db3d681e0ceea476649`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Logic.ExternalPTSSystemTransport
import GRWTSK.Logic.PortPureTypeSystem

namespace GRWTSK.Logic.PTSModelTransport

open GRWTSK.Logic.ExternalPTSBridge
open GRWTSK.Logic.PortPureTypeSystem

universe u v u' v'

-- The expression and context fields have independent universes. Their maximum in the
-- structure's result sort is intentional; identifying them would restrict model alignment.
set_option linter.checkUnivs false in
/-- Context-indexed reduction model used to align independently formalized pure type systems. -/
structure Model where
  Expr : Type u
  Context : Type v
  valid : Context → Prop
  legal : Context → Expr → Prop
  step : Expr → Expr → Prop

namespace Model

/-- System-wide weak normalization for a context-indexed reduction model. -/
def SystemWeaklyNormalizing (M : Model) : Prop :=
  ∀ Γ, M.valid Γ → ∀ e, M.legal Γ e → WeaklyNormalizing M.step e

/-- System-wide strong normalization for a context-indexed reduction model. -/
def SystemStronglyNormalizing (M : Model) : Prop :=
  ∀ Γ, M.valid Γ → ∀ e, M.legal Γ e → StronglyNormalizing M.step e

end Model

/-- Exact alignment between two context-indexed reduction models.

Syntax, contexts, legality, and the one-step reduction relation are all part of the alignment.
A source path, theorem name, or prose statement cannot construct this record. -/
structure ModelEquiv (M : Model.{u, v}) (N : Model.{u', v'}) where
  exprEquiv : M.Expr ≃ N.Expr
  contextEquiv : M.Context ≃ N.Context
  valid_iff : ∀ Γ, N.valid (contextEquiv Γ) ↔ M.valid Γ
  legal_iff : ∀ Γ e, N.legal (contextEquiv Γ) (exprEquiv e) ↔ M.legal Γ e
  step_iff : ∀ e e', N.step (exprEquiv e) (exprEquiv e') ↔ M.step e e'

namespace ModelEquiv

variable {M : Model.{u, v}} {N : Model.{u', v'}}

/-- Identity alignment of one context-indexed reduction model. -/
def refl (M : Model.{u, v}) : ModelEquiv M M where
  exprEquiv := Equiv.refl _
  contextEquiv := Equiv.refl _
  valid_iff _ := Iff.rfl
  legal_iff _ _ := Iff.rfl
  step_iff _ _ := Iff.rfl

/-- Underlying exact reduction equivalence. -/
def toReductionEquiv (E : ModelEquiv M N) :
    ReductionEquiv M.Expr N.Expr M.step N.step where
  mapEquiv := E.exprEquiv
  step_iff := E.step_iff

/-- System-wide weak normalization transports forward through exact model alignment. -/
theorem systemWeak_forward
    (E : ModelEquiv M N) (hM : M.SystemWeaklyNormalizing) :
    N.SystemWeaklyNormalizing := by
  intro Δ hΔ y hy
  let Γ : M.Context := E.contextEquiv.symm Δ
  let x : M.Expr := E.exprEquiv.symm y
  have hΓ : M.valid Γ := by
    apply (E.valid_iff Γ).mp
    simpa [Γ] using hΔ
  have hx : M.legal Γ x := by
    apply (E.legal_iff Γ x).mp
    simpa [Γ, x] using hy
  have hw := hM Γ hΓ x hx
  have hforward := E.toReductionEquiv.weaklyNormalizing_forward hw
  simpa [toReductionEquiv, x] using hforward

/-- System-wide strong normalization reflects backward through exact model alignment. -/
theorem systemStrong_backward
    (E : ModelEquiv M N) (hN : N.SystemStronglyNormalizing) :
    M.SystemStronglyNormalizing := by
  intro Γ hΓ x hx
  have hΓ' : N.valid (E.contextEquiv Γ) := (E.valid_iff Γ).2 hΓ
  have hx' : N.legal (E.contextEquiv Γ) (E.exprEquiv x) :=
    (E.legal_iff Γ x).2 hx
  have hs := hN (E.contextEquiv Γ) hΓ' (E.exprEquiv x) hx'
  exact E.toReductionEquiv.stronglyNormalizing_backward hs

end ModelEquiv

/-- A source-bound proof of weak-to-strong normalization for one exact model. -/
structure SourceBoundWeakToStrong (M : Model.{u, v}) where
  source : TheoremSource
  «theorem» : M.SystemWeaklyNormalizing → M.SystemStronglyNormalizing

namespace SourceBoundWeakToStrong

variable {M : Model.{u, v}} {N : Model.{u', v'}}

/-- Transport a proof-carrying theorem across an exact context/syntax/reduction alignment. -/
def transport
    (B : SourceBoundWeakToStrong N) (E : ModelEquiv M N) :
    SourceBoundWeakToStrong M where
  source := B.source
  «theorem» := by
    intro hM
    exact E.systemStrong_backward (B.«theorem» (E.systemWeak_forward hM))

end SourceBoundWeakToStrong

/-- Context-indexed model underlying the local annotated PTS implementation. -/
def portModel {«Sort» : Type u} (P : Specification «Sort») : Model.{u, u} where
  Expr := Expr «Sort»
  Context := List (Expr «Sort»)
  valid := ValidContext P
  legal := Legal P
  step := Beta

@[simp]
theorem portModel_systemWeak_iff {«Sort» : Type u} (P : Specification «Sort») :
    Model.SystemWeaklyNormalizing (portModel P) ↔
      GRWTSK.Logic.PortPureTypeSystem.SystemWeaklyNormalizing P :=
  Iff.rfl

@[simp]
theorem portModel_systemStrong_iff {«Sort» : Type u} (P : Specification «Sort») :
    Model.SystemStronglyNormalizing (portModel P) ↔
      GRWTSK.Logic.PortPureTypeSystem.SystemStronglyNormalizing P :=
  Iff.rfl

/-- Complete external admission packet for the local PTS: an external proof and an exact alignment
of contexts, expressions, legality, and beta reduction. -/
structure ExternalAdmission
    {«Sort» : Type u} (P : Specification «Sort») (N : Model.{u', v'}) where
  externalTheorem : SourceBoundWeakToStrong N
  alignment : ModelEquiv (portModel P) N

namespace ExternalAdmission

variable {«Sort» : Type u} {P : Specification «Sort»} {N : Model.{u', v'}}

/-- Transport the external theorem to the exact local context-indexed PTS model. -/
def localTheorem (A : ExternalAdmission P N) :
    SourceBoundWeakToStrong (portModel P) :=
  A.externalTheorem.transport A.alignment

/-- Convert a complete external admission packet into the local PTS theorem interface. -/
def toWeakToStrongAdmission (A : ExternalAdmission P N) :
    GRWTSK.Logic.PortPureTypeSystem.WeakToStrongAdmission P where
  source := A.localTheorem.source
  «theorem» := by
    intro h
    exact A.localTheorem.«theorem» h

/-- Once the exact packet exists, local system-wide weak normalization implies local
system-wide strong normalization. -/
theorem strong_of_weak
    (A : ExternalAdmission P N)
    (h : GRWTSK.Logic.PortPureTypeSystem.SystemWeaklyNormalizing P) :
    GRWTSK.Logic.PortPureTypeSystem.SystemStronglyNormalizing P :=
  A.toWeakToStrongAdmission.«theorem» h

end ExternalAdmission

/-- The reviewed OpenAI theorem source. This metadata does not provide an external model,
its theorem proof, or the exact alignment needed by `ExternalAdmission`. -/
def openAIWeakToStrongSource : TheoremSource :=
  GRWTSK.Logic.PortPureTypeSystem.openAIWeakToStrongSource

end GRWTSK.Logic.PTSModelTransport
```
