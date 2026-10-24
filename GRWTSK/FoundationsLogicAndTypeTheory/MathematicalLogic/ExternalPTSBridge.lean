import Mathlib
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.TypedPortNormalization

namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ExternalPTSBridge

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

/-- A one-step relation has at most one reduct from each source. -/
def Deterministic {X : Type u} (step : X → X → Prop) : Prop :=
  ∀ ⦃x y z⦄, step x y → step x z → y = z

/-- Every one-step fork can be joined by finite reduction. -/
def LocallyConfluent {X : Type u} (step : X → X → Prop) : Prop :=
  ∀ ⦃x y z⦄, step x y → step x z →
    ∃ w, Relation.ReflTransGen step y w ∧ Relation.ReflTransGen step z w

/-- Every expression has exactly one reachable normal form. -/
def HasUniqueNormalForm {X : Type u} (step : X → X → Prop) : Prop :=
  ∀ x, ∃! n, Relation.ReflTransGen step x n ∧ Normal step n

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

open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.TypedPortNormalization

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

/-- Normality for the selected canonicalization is exactly equality with the canonical form. -/
theorem canonicalStep_normal_iff (e : Expr Port a b) :
    Normal CanonicalStep e ↔ e = e.normalForm := by
  constructor
  · intro h
    by_contra hne
    exact h e.normalForm ⟨hne, rfl⟩
  · intro he f hf
    exact hf.1 he

/-- Every typed port expression weakly normalizes to its canonical path. -/
theorem canonicalStep_weaklyNormalizing (e : Expr Port a b) :
    WeaklyNormalizing CanonicalStep e := by
  refine ⟨e.normalForm, ?_, normalForm_normal e⟩
  by_cases h : e = e.normalForm
  · rw [← h]
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
  exact False.elim ((normalForm_normal e g) hg)

/-- Canonicalization has at most one one-step result. -/
theorem canonicalStep_deterministic :
    Deterministic (@CanonicalStep Obj Port a b) := by
  intro e f g hef heg
  exact hef.2.trans heg.2.symm

/-- Every one-step canonicalization fork joins immediately. -/
theorem canonicalStep_locallyConfluent :
    LocallyConfluent (@CanonicalStep Obj Port a b) := by
  intro e f g hef heg
  have hfg : f = g := canonicalStep_deterministic hef heg
  subst g
  exact ⟨f, Relation.ReflTransGen.refl, Relation.ReflTransGen.refl⟩

/-- Any reachable normal target is the canonical right-associated normal form. -/
theorem reachable_normal_eq_normalForm
    (e n : Expr Port a b)
    (hreach : Relation.ReflTransGen CanonicalStep e n)
    (hn : Normal CanonicalStep n) :
    n = e.normalForm := by
  rcases Relation.ReflTransGen.cases_head hreach with hEq | ⟨c, hec, hcn⟩
  · subst n
    exact (canonicalStep_normal_iff e).mp hn
  · have hc : c = e.normalForm := hec.2
    subst c
    rcases Relation.ReflTransGen.cases_head hcn with hEq | ⟨d, hstep, _⟩
    · exact hEq.symm
    · exact False.elim ((normalForm_normal e) d hstep)

/-- The selected typed port reduction has a unique reachable normal form. -/
theorem canonicalStep_hasUniqueNormalForm :
    HasUniqueNormalForm (@CanonicalStep Obj Port a b) := by
  intro e
  refine ⟨e.normalForm, ?_, ?_⟩
  · by_cases h : e = e.normalForm
    · exact ⟨by rw [← h], normalForm_normal e⟩
    · exact ⟨Relation.ReflTransGen.single ⟨h, rfl⟩, normalForm_normal e⟩
  · intro n hn
    exact reachable_normal_eq_normalForm e n hn.1 hn.2

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

end GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ExternalPTSBridge
