import Mathlib
import GRWTSK.Logic.TypedPortNormalization

namespace GRWTSK.Logic.ExternalPTSBridge

universe u v

/-- Public identity of an external metatheorem. -/
structure TheoremSource where
  repository : String
  revision : String
  path : String
  declaration : String
  exactStatement : String
  deriving DecidableEq, Repr

/-- No one-step reduct exists. -/
def Normal {X : Type u} (step : X → X → Prop) (x : X) : Prop :=
  ∀ y, ¬ step x y

/-- Some finite reduction reaches a normal expression. -/
def WeaklyNormalizing {X : Type u} (step : X → X → Prop) (x : X) : Prop :=
  ∃ y, Relation.ReflTransGen step x y ∧ Normal step y

/-- Every reduction sequence terminates, expressed by accessibility of the converse step. -/
def StronglyNormalizing {X : Type u} (step : X → X → Prop) (x : X) : Prop :=
  Acc (fun next current => step current next) x

/-- Weak normalization restricted to legal expressions. -/
def SystemWeaklyNormalizing {X : Type u}
    (Legal : X → Prop) (step : X → X → Prop) : Prop :=
  ∀ x, Legal x → WeaklyNormalizing step x

/-- Strong normalization restricted to legal expressions. -/
def SystemStronglyNormalizing {X : Type u}
    (Legal : X → Prop) (step : X → X → Prop) : Prop :=
  ∀ x, Legal x → StronglyNormalizing step x

/-- A proof-carrying weak-to-strong normalization theorem.

The source metadata alone has no logical force; `weakToStrong` must be supplied by an admitted
formal theorem or a checked transport of one. -/
structure WeakToStrongTheorem
    (X : Type u) (Legal : X → Prop) (step : X → X → Prop) where
  source : TheoremSource
  weakToStrong :
    SystemWeaklyNormalizing Legal step →
      SystemStronglyNormalizing Legal step

/-- Exact public source identity of OpenAI's PTS weak-to-strong theorem.

This record intentionally contains no local proof term. -/
def openAIWeakToStrongSource : TheoremSource where
  repository := "openai/math"
  revision := "1581d4cbdd69a0faf34b2089614fe2a814316a6a"
  path := "lean/OAI/Computability/TypeSystem/Normalization.lean"
  declaration := "OAI.PureTypeSystem.weak_implies_strong"
  exactStatement :=
    "SystemWeaklyNormalizing P -> SystemStronglyNormalizing P for every pure type system P"

/-- Apply an admitted source-bound weak-to-strong theorem without changing its legal-expression
or reduction relation. -/
theorem systemStrong_of_bridge
    {X : Type u} {Legal : X → Prop} {step : X → X → Prop}
    (B : WeakToStrongTheorem X Legal step)
    (hw : SystemWeaklyNormalizing Legal step) :
    SystemStronglyNormalizing Legal step :=
  B.weakToStrong hw

open GRWTSK.Logic.TypedPortNormalization

section CanonicalPortReduction

variable {Obj : Type u}
variable {Port : Obj → Obj → Type v}
variable {a b : Obj}

/-- One certified canonicalization step sends a non-normal expression directly to its
right-associated normal form. -/
def CanonicalStep (e f : Expr Port a b) : Prop :=
  e ≠ e.normalForm ∧ f = e.normalForm

/-- A canonical normal form has no further canonicalization step. -/
theorem normalForm_normal (e : Expr Port a b) :
    Normal CanonicalStep e.normalForm := by
  intro f hf
  exact hf.1 (Expr.normalForm_idempotent e).symm

/-- Every typed port expression weakly normalizes to its canonical path. -/
theorem canonicalStep_weaklyNormalizing (e : Expr Port a b) :
    WeaklyNormalizing CanonicalStep e := by
  refine ⟨e.normalForm, ?_, normalForm_normal e⟩
  by_cases h : e = e.normalForm
  · simpa [h] using
      (Relation.ReflTransGen.refl :
        Relation.ReflTransGen CanonicalStep e e)
  · exact Relation.ReflTransGen.single ⟨h, rfl⟩

/-- Every canonicalization sequence for the typed port language terminates.

This is a local direct proof for `CanonicalStep`; it does not import the external PTS theorem. -/
theorem canonicalStep_stronglyNormalizing (e : Expr Port a b) :
    StronglyNormalizing CanonicalStep e := by
  unfold StronglyNormalizing
  constructor
  intro f hf
  rcases hf with ⟨_, rfl⟩
  constructor
  intro g hg
  exact (normalForm_normal e g) hg

/-- The entire endpoint-fixed typed port language is weakly normalizing. -/
theorem canonicalSystemWeaklyNormalizing :
    SystemWeaklyNormalizing (fun _ : Expr Port a b => True) CanonicalStep := by
  intro e _
  exact canonicalStep_weaklyNormalizing e

/-- The entire endpoint-fixed typed port language is strongly normalizing. -/
theorem canonicalSystemStronglyNormalizing :
    SystemStronglyNormalizing (fun _ : Expr Port a b => True) CanonicalStep := by
  intro e _
  exact canonicalStep_stronglyNormalizing e

end CanonicalPortReduction

end GRWTSK.Logic.ExternalPTSBridge
