import OriginalClosureNarrow

/-!
Concrete intended PTS for the independent weak-normalization premise.
`false` is the base type and `true` its kind. This has actual product formation,
legal lambdas and beta reductions. The full system-wide WN proposition remains
unproved; these fixtures do not discharge it.
Human research direction and evaluation: grwtsk contributors.
Formal constructions and replay: Codex.
-/

namespace FormalResearch.TypeTheory.IntendedPTS

open OAI.PureTypeSystem

/-- The monomorphic literal-base arrow PTS with products `(true,true,true)`. -/
def monomorphicArrow : Specification Bool where
  axioms := fun source target => source = false ∧ target = true
  rule := fun domain codomain output => domain = true ∧ codomain = true ∧ output = true

/-- Exact missing premise, including all valid contexts and all legal expressions and types. -/
def WeakNormalizationGoal : Prop := SystemWeaklyNormalizing monomorphicArrow

/-- Its one source axiom is independently realized in the actual typing relation. -/
theorem base_has_type : HasType monomorphicArrow [] (.sort false) (.sort true) :=
  .ax ⟨rfl, rfl⟩

/-- A nonempty valid source context, with a declared variable of the actual base type. -/
theorem base_context_valid : ValidContext monomorphicArrow [.sort false] :=
  .cons .nil base_has_type

private theorem base_in_context :
    HasType monomorphicArrow [.sort false] (.sort false) (.sort true) :=
  .weaken base_has_type base_has_type

/-- The open source variable is typed by its actual newest-first de Bruijn declaration. -/
theorem variable_has_type : HasType monomorphicArrow [.sort false] (.var 0) (.sort false) :=
  .var base_has_type

/-- The actual annotated source identity lambda is legal in that nonempty context. -/
theorem identity_has_type :
    HasType monomorphicArrow [.sort false] (.lam (.sort false) (.var 0))
      (.pi (.sort false) (.sort false)) :=
  .abstraction (.var base_in_context)
    (.product base_in_context (.weaken base_in_context base_in_context) ⟨rfl, rfl, rfl⟩)

/-- A legal beta-redex of the intended system, rather than an empty/no-product instance. -/
theorem identity_application_has_type :
    HasType monomorphicArrow [.sort false]
      (.app (.lam (.sort false) (.var 0)) (.var 0)) (.sort false) :=
  .application identity_has_type variable_has_type

/-- Its actual directed annotated beta rule contracts to the source variable. -/
theorem identity_application_reduces :
    Beta (S := Bool) (.app (.lam (.sort false) (.var 0)) (.var 0)) (.var 0) :=
  .head (.sort false) (.var 0) (.var 0)

/-- Independent weak normalization of this particular legal beta-redex. -/
theorem identity_application_weakly_normalizing :
    WeaklyNormalizing (S := Bool) (.app (.lam (.sort false) (.var 0)) (.var 0)) :=
  ⟨.var 0, .single identity_application_reduces, Normal.var 0⟩

/-- The literal-base simple-arrow type grammar, with no bound-variable occurrence. -/
inductive BaseArrowType : Expr Bool → Prop
  | base : BaseArrowType (.sort false)
  | arrow {domain codomain} : BaseArrowType domain → BaseArrowType codomain →
      BaseArrowType (.pi domain codomain)

namespace BaseArrowType

/-- Every type in the intended grammar is independent of all variable indices. -/
theorem rename_eq {type : Expr Bool} (typed : BaseArrowType type) (rename : Nat → Nat) :
    type.rename rename = type := by
  induction typed generalizing rename with
  | base => rfl
  | arrow domain codomain ihDomain ihCodomain =>
      simp only [Expr.rename, ihDomain, ihCodomain]

/-- Substituting actual annotated terms leaves these literal-base types unchanged. -/
theorem subst_eq {type : Expr Bool} (typed : BaseArrowType type)
    (substitution : Nat → Expr Bool) : type.subst substitution = type := by
  induction typed generalizing substitution with
  | base => rfl
  | arrow domain codomain ihDomain ihCodomain =>
      simp only [Expr.subst, ihDomain, ihCodomain]

/-- These exact annotations already are beta-normal. -/
theorem normal {type : Expr Bool} (typed : BaseArrowType type) : Normal type := by
  induction typed with
  | base => exact Normal.sort false
  | arrow domain codomain ihDomain ihCodomain =>
      intro target reduced
      cases reduced with
      | pi_domain reduced => exact ihDomain _ reduced
      | pi_body reduced => exact ihCodomain _ reduced

/-- Formation of every grammar type in every actual valid source context. -/
theorem has_type {type : Expr Bool} (typed : BaseArrowType type)
    (context : List (Expr Bool)) (valid : ValidContext monomorphicArrow context) :
    HasType monomorphicArrow context type (.sort true) := by
  induction typed generalizing context with
  | base => exact HasType.sort_of_valid valid ⟨rfl, rfl⟩
  | @arrow domain codomain domainType codomainType ihDomain ihCodomain =>
      have formedDomain := ihDomain context valid
      exact .product formedDomain (ihCodomain (domain :: context) (.cons valid formedDomain))
        ⟨rfl, rfl, rfl⟩

end BaseArrowType

/-- A substantive next lemma, stated as a proposition rather than an assumed theorem. -/
def SortedTypeClassificationGoal : Prop :=
  ∀ context type, HasType monomorphicArrow context type (.sort true) → BaseArrowType type

/-- The system's top kind cannot itself be typed, by exact upstream generation. -/
theorem kind_not_typable (context : List (Expr Bool)) (type : Expr Bool) :
    ¬HasType monomorphicArrow context (.sort true) type := by
  intro typed
  obtain ⟨sort, sourceAxiom, _⟩ := typed.generation
  exact Bool.true_ne_false sourceAxiom.1

private theorem rename_sort_inv (term : Expr Bool) (rename : Nat → Nat) (sort : Bool)
    (equality : term.rename rename = .sort sort) : term = .sort sort := by
  cases term <;> cases equality <;> rfl

/-- Independent classification of all expressions sorted at the top kind.
The application case excludes a literal kind in the codomain or argument using
generation and subject syntax, rather than any system-normalization premise. -/
theorem sorted_type_classification {context : List (Expr Bool)} {term type : Expr Bool}
    (typed : HasType monomorphicArrow context term type) :
    type = .sort true → BaseArrowType term := by
  induction typed with
  | ax sourceAxiom =>
      intro _
      obtain ⟨rfl, rfl⟩ := sourceAxiom
      exact .base
  | @var context declared sort declaration ihDeclaration =>
      intro equality
      have declaredEquality := rename_sort_inv declared Nat.succ true equality
      subst declared
      exact False.elim (kind_not_typable context (.sort sort) declaration)
  | @weaken context term type declared sort source declaration ihSource ihDeclaration =>
      intro equality
      have sourceEquality := rename_sort_inv type Nat.succ true equality
      have sourceType := ihSource sourceEquality
      rw [sourceType.rename_eq Nat.succ]
      exact sourceType
  | product domain codomain sourceRule ihDomain ihCodomain =>
      intro _
      obtain ⟨rfl, rfl, rfl⟩ := sourceRule
      exact .arrow (ihDomain rfl) (ihCodomain rfl)
  | abstraction body product ihBody ihProduct =>
      intro equality
      cases equality
  | @application context function argument domain codomain functionTyped argumentTyped
        ihFunction ihArgument =>
      intro equality
      obtain ⟨sort, productTyped⟩ := functionTyped.product_type_sorted
      obtain ⟨domainSort, codomainSort, outputSort, domainTyped, codomainTyped,
        sourceRule, _⟩ := productTyped.generation_pi
      cases codomain with
      | var index =>
          cases index with
          | zero =>
              change argument = .sort true at equality
              subst argument
              exact False.elim (kind_not_typable context domain argumentTyped)
          | succ index => cases equality
      | sort sort =>
          change Expr.sort sort = .sort true at equality
          cases equality
          exact False.elim (kind_not_typable (domain :: context) (.sort codomainSort)
            codomainTyped)
      | app function argument => cases equality
      | lam annotation body => cases equality
      | pi annotation body => cases equality
  | @conversion context term sourceType targetType sort source target conversion
        ihSource ihTarget =>
      intro equality
      subst targetType
      exact False.elim (kind_not_typable context (.sort sort) target)

/-- The previously isolated smallest classification obligation is independently discharged. -/
theorem sorted_type_classification_goal : SortedTypeClassificationGoal :=
  fun _ _ typed => sorted_type_classification typed rfl

end FormalResearch.TypeTheory.IntendedPTS

#print FormalResearch.TypeTheory.IntendedPTS.WeakNormalizationGoal
#print axioms FormalResearch.TypeTheory.IntendedPTS.identity_application_has_type
#print axioms FormalResearch.TypeTheory.IntendedPTS.identity_application_weakly_normalizing
#print axioms FormalResearch.TypeTheory.IntendedPTS.sorted_type_classification_goal
