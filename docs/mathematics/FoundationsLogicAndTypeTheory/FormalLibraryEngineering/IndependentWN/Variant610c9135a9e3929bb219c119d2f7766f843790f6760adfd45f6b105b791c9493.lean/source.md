# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IndependentWN.Variant610c9135a9e3929bb219c119d2f7766f843790f6760adfd45f6b105b791c9493

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c659de0788c489a89b6e5551d7d06a33019e8f4d` · SHA-256 `407a9b62e2fa5c6c1d32545e912856d0773c0ecf838a8d9ed6be43151d3f9cf0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Arrow.Variant64fbd60c8f4897e22017b857a23f5475bac4a66e3c03957ab26726f61d07b9e0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"64fbd60c8f4897e22017b857a23f5475bac4a66e3c03957ab26726f61d07b9e0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Arrow.Variant64fbd60c8f4897e22017b857a23f5475bac4a66e3c03957ab26726f61d07b9e0","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"64fbd60c8f4897e22017b857a23f5475bac4a66e3c03957ab26726f61d07b9e0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/type-theory-reconstruction/FormalResearch/TypeTheory/PureTypeSystem/IndependentWN.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.TypeTheory.PureTypeSystem.IntendedPTS

/-!
Independent weak normalization for all legal terms and legal types of the
literal-base monomorphic arrow PTS, in every actual valid source context.
The proof uses actual annotated syntax, beta reduction and typing judgments.
Human research direction and evaluation: grwtsk contributors.
Formal construction and pinned replay: Codex.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Arrow.Variant64fbd60c8f4897e22017b857a23f5475bac4a66e3c03957ab26726f61d07b9e0

namespace FormalResearch.TypeTheory.IntendedPTS

open OAI.PureTypeSystem

/-- The simple literal-base arrow types used in the independent reducibility proof. -/
inductive Arrow : Type
  | base
  | function (domain codomain : Arrow)
  deriving DecidableEq

/-- Encode a simple arrow type as the actual annotated PTS base/product syntax. -/
def Arrow.expression : Arrow → Expr Bool
  | .base => .sort false
  | .function domain codomain => .pi domain.expression codomain.expression

/-- Read product structure as an arrow type, using the base fallback for other raw expressions. -/
def decodeArrow : Expr Bool → Arrow
  | .pi domain codomain => .function (decodeArrow domain) (decodeArrow codomain)
  | _ => .base

theorem Arrow.grammar (type : Arrow) : BaseArrowType type.expression := by
  induction type with
  | base => exact .base
  | function domain codomain ihDomain ihCodomain => exact .arrow ihDomain ihCodomain

theorem decode_expression (type : Expr Bool) (typed : BaseArrowType type) :
    (decodeArrow type).expression = type := by
  induction typed with
  | base => rfl
  | arrow domain codomain ihDomain ihCodomain =>
      simp only [decodeArrow, Arrow.expression, ihDomain, ihCodomain]

theorem decode_rename (term : Expr Bool) (rename : Nat → Nat) :
    decodeArrow (term.rename rename) = decodeArrow term := by
  induction term generalizing rename with
  | var index => rfl
  | sort sort => rfl
  | app function argument ihFunction ihArgument => rfl
  | lam annotation body ihAnnotation ihBody => rfl
  | pi domain codomain ihDomain ihCodomain =>
      simp only [Expr.rename, decodeArrow, ihDomain, ihCodomain]

private theorem wn_rename {term : Expr Bool} (normalizing : WeaklyNormalizing term)
    (rename : Nat → Nat) : WeaklyNormalizing (term.rename rename) := by
  obtain ⟨normal, reduces, normality⟩ := normalizing
  exact ⟨normal.rename rename, Reduces.rename reduces rename, normality.rename rename⟩

private theorem wn_prepend {term target : Expr Bool} (reduces : Reduces term target)
    (normalizing : WeaklyNormalizing target) : WeaklyNormalizing term := by
  obtain ⟨normal, tail, normality⟩ := normalizing
  exact ⟨normal, reduces.trans tail, normality⟩

private theorem wn_lam {annotation body : Expr Bool}
    (normalizingAnnotation : WeaklyNormalizing annotation)
    (normalizingBody : WeaklyNormalizing body) : WeaklyNormalizing (.lam annotation body) := by
  obtain ⟨annotation', annotationPath, annotationNormal⟩ := normalizingAnnotation
  obtain ⟨body', bodyPath, bodyNormal⟩ := normalizingBody
  exact ⟨.lam annotation' body', Reduces.lam annotationPath bodyPath,
    annotationNormal.lam bodyNormal⟩

private theorem wn_pi {domain codomain : Expr Bool}
    (normalizingDomain : WeaklyNormalizing domain)
    (normalizingCodomain : WeaklyNormalizing codomain) :
    WeaklyNormalizing (.pi domain codomain) := by
  obtain ⟨domain', domainPath, domainNormal⟩ := normalizingDomain
  obtain ⟨codomain', codomainPath, codomainNormal⟩ := normalizingCodomain
  exact ⟨.pi domain' codomain', Reduces.pi domainPath codomainPath, domainNormal.pi codomainNormal⟩

private theorem neutral_rename {term : Expr Bool} (neutral : Neutral term)
    (rename : Nat → Nat) : Neutral (term.rename rename) := by
  induction neutral with
  | var index => exact .var _
  | app source ih => exact .app ih

private theorem neutral_step {term target : Expr Bool} (neutral : Neutral term)
    (step : Beta term target) : Neutral target := by
  induction neutral generalizing target with
  | var index => cases step
  | app source ih =>
      cases step with
      | head => cases source
      | app_left step => exact .app (ih step)
      | app_right step => exact .app source

private theorem neutral_reduces {term target : Expr Bool} (neutral : Neutral term)
    (reduces : Reduces term target) : Neutral target := by
  induction reduces with
  | refl => exact neutral
  | tail prior step ih => exact neutral_step ih step

private theorem wn_neutral_app {function argument : Expr Bool} (neutral : Neutral function)
    (normalizingFunction : WeaklyNormalizing function)
    (normalizingArgument : WeaklyNormalizing argument) :
    WeaklyNormalizing (.app function argument) := by
  obtain ⟨function', functionPath, functionNormal⟩ := normalizingFunction
  obtain ⟨argument', argumentPath, argumentNormal⟩ := normalizingArgument
  have neutralFunction := neutral_reduces neutral functionPath
  refine ⟨.app function' argument', Reduces.app functionPath argumentPath, ?_⟩
  intro target step
  cases step with
  | head => cases neutralFunction
  | app_left step => exact functionNormal _ step
  | app_right step => exact argumentNormal _ step

/-- Weak Kripke reducibility: all renamings of a function consume actual reducible arguments. -/
def Reducible : Arrow → Expr Bool → Prop
  | .base, term => WeaklyNormalizing term
  | .function domain codomain, term => WeaklyNormalizing term ∧
      ∀ rename argument, Reducible domain argument →
        Reducible codomain (.app (term.rename rename) argument)

theorem reducible_wn {type : Arrow} {term : Expr Bool} (reducible : Reducible type term) :
    WeaklyNormalizing term := by
  cases type with
  | base => exact reducible
  | function domain codomain => exact reducible.1

theorem reducible_rename {type : Arrow} {term : Expr Bool}
    (reducible : Reducible type term) (rename : Nat → Nat) :
    Reducible type (term.rename rename) := by
  cases type with
  | base => exact wn_rename reducible rename
  | function domain codomain =>
      refine ⟨wn_rename reducible.1 rename, ?_⟩
      intro subsequent argument argumentReducible
      simpa only [Expr.rename_comp] using
        reducible.2 (subsequent ∘ rename) argument argumentReducible

/-- Weak reducibility is closed backwards along actual full annotated beta paths. -/
theorem reducible_prepend {type : Arrow} {term target : Expr Bool}
    (targetReducible : Reducible type target) (reduces : Reduces term target) :
    Reducible type term := by
  induction type generalizing term target with
  | base => exact wn_prepend reduces targetReducible
  | function domain codomain ihDomain ihCodomain =>
      refine ⟨wn_prepend reduces targetReducible.1, ?_⟩
      intro rename argument argumentReducible
      exact ihCodomain (targetReducible.2 rename argument argumentReducible)
        (Reduces.app (Reduces.rename reduces rename) .refl)

theorem reducible_neutral (type : Arrow) {term : Expr Bool} (neutral : Neutral term)
    (normalizing : WeaklyNormalizing term) : Reducible type term := by
  induction type generalizing term with
  | base => exact normalizing
  | function domain codomain ihDomain ihCodomain =>
      refine ⟨normalizing, ?_⟩
      intro rename argument argumentReducible
      exact ihCodomain (.app (neutral_rename neutral rename))
        (wn_neutral_app (neutral_rename neutral rename) (wn_rename normalizing rename)
          (reducible_wn argumentReducible))

theorem reducible_var (type : Arrow) (index : Nat) :
    Reducible type (.var index) :=
  reducible_neutral type (.var index) ⟨.var index, .refl, Normal.var index⟩

/-- The annotation-preserving simple-arrow judgment used by the actual PTS bridge. -/
inductive ArrowTyping : List Arrow → Expr Bool → Arrow → Prop
  | var {context index type} : context[index]? = some type →
      ArrowTyping context (.var index) type
  | lam {context domain codomain body} : ArrowTyping (domain :: context) body codomain →
      ArrowTyping context (.lam domain.expression body) (.function domain codomain)
  | app {context function argument domain codomain} :
      ArrowTyping context function (.function domain codomain) →
      ArrowTyping context argument domain → ArrowTyping context (.app function argument) codomain

/-- A simultaneous substitution supplying a reducible image for each declared simple-arrow
variable.
-/
def ReducibleEnvironment (context : List Arrow) (substitution : Nat → Expr Bool) : Prop :=
  ∀ index type, context[index]? = some type → Reducible type (substitution index)

theorem reducible_environment_lift {context : List Arrow} {substitution : Nat → Expr Bool}
    (environment : ReducibleEnvironment context substitution) (domain : Arrow) :
    ReducibleEnvironment (domain :: context) (Expr.liftSub substitution) := by
  intro index type found
  cases index with
  | zero =>
      have equality : domain = type := Option.some.inj found
      subst type
      exact reducible_var domain 0
  | succ index =>
      change context[index]? = some type at found
      exact reducible_rename (environment index type found) Nat.succ

/-- The independent substitution/reducibility theorem has no PTS system-WN premise. -/
theorem ArrowTyping.reducible {context : List Arrow} {term : Expr Bool} {type : Arrow}
    (typed : ArrowTyping context term type) (substitution : Nat → Expr Bool)
    (environment : ReducibleEnvironment context substitution) :
    Reducible type (term.subst substitution) := by
  induction typed generalizing substitution with
  | var found => exact environment _ _ found
  | app function argument ihFunction ihArgument =>
      have functionReducible := ihFunction substitution environment
      have argumentReducible := ihArgument substitution environment
      simpa only [Expr.subst, Expr.rename_id] using
        functionReducible.2 id _ argumentReducible
  | @lam context domain codomain body typedBody ihBody =>
      have lifted := ihBody (Expr.liftSub substitution)
        (reducible_environment_lift environment domain)
      have annotationNormal := (Arrow.grammar domain).normal
      have annotationSubst := (Arrow.grammar domain).subst_eq substitution
      change Reducible (.function domain codomain)
        (.lam (domain.expression.subst substitution) (body.subst (Expr.liftSub substitution)))
      rw [annotationSubst]
      refine ⟨wn_lam ⟨domain.expression, .refl, annotationNormal⟩ (reducible_wn lifted), ?_⟩
      intro rename argument argumentReducible
      let theta : Nat → Expr Bool := fun index =>
        (Expr.liftSub substitution index).subst (Expr.single argument ∘ Expr.liftRen rename)
      have thetaZero : theta 0 = argument := rfl
      have thetaSucc (index : Nat) : theta (index + 1) = (substitution index).rename rename := by
        dsimp only [theta]
        rw [Expr.liftSub_succ, Expr.subst_rename]
        change (substitution index).subst (Expr.var ∘ rename) =
          (substitution index).rename rename
        exact Expr.subst_var_rename _ _
      have thetaEnvironment : ReducibleEnvironment (domain :: context) theta := by
        intro index type found
        cases index with
        | zero =>
            have equality : domain = type := Option.some.inj found
            subst type
            rw [thetaZero]
            exact argumentReducible
        | succ index =>
            change context[index]? = some type at found
            rw [thetaSucc]
            exact reducible_rename (environment index type found) rename
      have bodyReducible := ihBody theta thetaEnvironment
      have bodyEquality :
          ((body.subst (Expr.liftSub substitution)).rename
            (Expr.liftRen rename)).instantiate argument = body.subst theta := by
        rw [Expr.instantiate, Expr.subst_rename, Expr.subst_subst]
      have renamedAnnotation := (Arrow.grammar domain).rename_eq rename
      change Reducible codomain (.app
        (.lam (domain.expression.rename rename)
          ((body.subst (Expr.liftSub substitution)).rename (Expr.liftRen rename))) argument)
      rw [renamedAnnotation]
      apply reducible_prepend (bodyEquality.symm ▸ bodyReducible)
      exact .single (.head _ _ _)

theorem ArrowTyping.weakly_normalizing {context : List Arrow} {term : Expr Bool} {type : Arrow}
    (typed : ArrowTyping context term type) : WeaklyNormalizing term := by
  have environment : ReducibleEnvironment context Expr.var :=
    fun index type _ => reducible_var type index
  have reducible := typed.reducible Expr.var environment
  simpa only [Expr.subst_var] using reducible_wn reducible

theorem BaseArrowType.ne_kind {type : Expr Bool} (typed : BaseArrowType type) :
    type ≠ .sort true := by
  cases typed with
  | base =>
      intro equality
      exact Bool.false_ne_true (Expr.sort.inj equality)
  | arrow domain codomain => intro equality; cases equality

/-- Grammar types have exactly the kind classifier in any actual source context. -/
theorem BaseArrowType.sort_unique {type : Expr Bool} (grammar : BaseArrowType type)
    {context : List (Expr Bool)} {sort : Bool}
    (typed : HasType monomorphicArrow context type (.sort sort)) : sort = true := by
  cases grammar with
  | base =>
      obtain ⟨target, sourceAxiom, conversion⟩ := typed.generation
      exact conversion.sort_inj.trans sourceAxiom.2
  | arrow domain codomain =>
      obtain ⟨domainSort, codomainSort, outputSort, domainTyped, codomainTyped,
        sourceRule, conversion⟩ := typed.generation_pi
      exact conversion.sort_inj.trans sourceRule.2.2

theorem lookup_sorted {context : List (Expr Bool)} {index : Nat} {type : Expr Bool}
    (lookup : Lookup context index type) (valid : ValidContext monomorphicArrow context) :
    ∃ sort, HasType monomorphicArrow context type (.sort sort) := by
  induction valid generalizing index type with
  | nil => cases lookup
  | cons tail typed ih =>
      cases lookup with
      | zero => exact ⟨_, .weaken typed typed⟩
      | succ declared lookup =>
          obtain ⟨sourceSort, sourceTyped⟩ := ih lookup
          exact ⟨sourceSort, .weaken sourceTyped typed⟩

theorem lookup_decoded {context : List (Expr Bool)} {index : Nat} {type : Expr Bool}
    (lookup : Lookup context index type) :
    (context.map decodeArrow)[index]? = some (decodeArrow type) := by
  induction lookup with
  | zero declared context => simp only [List.map_cons, List.getElem?_cons_zero, decode_rename]
  | succ declared lookup ih =>
      simpa only [List.map_cons, List.getElem?_cons_succ, decode_rename] using ih

/-- Conversion to a grammar type forces the actual valid-context declaration
to be that same grammar type, even for arbitrary source contexts. -/
theorem sorted_convert_to_grammar {context : List (Expr Bool)} {type grammarType : Expr Bool}
    {sort : Bool} (typed : HasType monomorphicArrow context type (.sort sort))
    (grammar : BaseArrowType grammarType) (conversion : Converts type grammarType) :
    type = grammarType := by
  obtain ⟨common, sourcePath, targetPath⟩ := conversion.join
  have equality := grammar.normal.reduces_eq targetPath
  subst common
  have grammarTyped := typed.subject_reduces sourcePath
  have sortEquality := grammar.sort_unique grammarTyped
  subst sort
  have sourceGrammar := sorted_type_classification typed rfl
  exact sourceGrammar.normal.eq_of_converts grammar.normal conversion

/-- Every actual source judgment at a literal-base arrow type has an
annotation-preserving simple-arrow typing in the complete mapped context. -/
theorem arrow_typing {term : Expr Bool} :
    ∀ {context type}, HasType monomorphicArrow context term type → BaseArrowType type →
      ArrowTyping (context.map decodeArrow) term (decodeArrow type) := by
  induction term with
  | var index =>
      intro context type typed grammar
      obtain ⟨declared, lookup, conversion⟩ := typed.generation
      obtain ⟨sort, declaredTyped⟩ := lookup_sorted lookup typed.valid
      have equality := sorted_convert_to_grammar declaredTyped grammar (.symm _ _ conversion)
      subst declared
      exact .var (lookup_decoded lookup)
  | sort sort =>
      intro context type typed grammar
      obtain ⟨target, sourceAxiom, conversion⟩ := typed.generation
      have equality := grammar.normal.eq_of_converts (Normal.sort target) conversion
      have targetEquality := sourceAxiom.2
      subst target
      exact False.elim (grammar.ne_kind equality)
  | pi domain codomain ihDomain ihCodomain =>
      intro context type typed grammar
      obtain ⟨domainSort, codomainSort, outputSort, domainTyped, codomainTyped,
        sourceRule, conversion⟩ := typed.generation_pi
      have equality := grammar.normal.eq_of_converts (Normal.sort outputSort) conversion
      have outputEquality := sourceRule.2.2
      subst outputSort
      exact False.elim (grammar.ne_kind equality)
  | lam annotation body ihAnnotation ihBody =>
      intro context type typed grammar
      obtain ⟨codomain, sort, bodyTyped, productTyped, conversion⟩ := typed.generation_lam
      obtain ⟨domainSort, codomainSort, outputSort, annotationTyped, codomainTyped,
        sourceRule, productConversion⟩ := productTyped.generation_pi
      obtain ⟨rfl, rfl, rfl⟩ := sourceRule
      have annotationGrammar := sorted_type_classification annotationTyped rfl
      have codomainGrammar := sorted_type_classification codomainTyped rfl
      have productGrammar : BaseArrowType (.pi annotation codomain) :=
        .arrow annotationGrammar codomainGrammar
      have equality := grammar.normal.eq_of_converts productGrammar.normal conversion
      subst type
      have simpleBody := ihBody bodyTyped codomainGrammar
      have annotationEquality := decode_expression annotation annotationGrammar
      change ArrowTyping (context.map decodeArrow) (.lam annotation body)
        (.function (decodeArrow annotation) (decodeArrow codomain))
      have result : ArrowTyping (context.map decodeArrow)
          (.lam (decodeArrow annotation).expression body)
          (.function (decodeArrow annotation) (decodeArrow codomain)) := .lam simpleBody
      simpa only [annotationEquality] using result
  | app function argument ihFunction ihArgument =>
      intro context type typed grammar
      obtain ⟨domain, codomain, functionTyped, argumentTyped, conversion⟩ := typed.generation_app
      obtain ⟨sort, productTyped⟩ := functionTyped.product_type_sorted
      obtain ⟨domainSort, codomainSort, outputSort, domainTyped, codomainTyped,
        sourceRule, productConversion⟩ := productTyped.generation_pi
      obtain ⟨rfl, rfl, rfl⟩ := sourceRule
      have domainGrammar := sorted_type_classification domainTyped rfl
      have codomainGrammar := sorted_type_classification codomainTyped rfl
      have instantiateEquality : codomain.instantiate argument = codomain :=
        codomainGrammar.subst_eq (Expr.single argument)
      rw [instantiateEquality] at conversion
      have equality := grammar.normal.eq_of_converts codomainGrammar.normal conversion
      subst type
      exact .app (ihFunction functionTyped (.arrow domainGrammar codomainGrammar))
        (ihArgument argumentTyped domainGrammar)

/-- All actual annotated typed expressions normalize independently of result245. -/
theorem typed_weakly_normalizing {term : Expr Bool} :
    ∀ {context type}, HasType monomorphicArrow context term type → WeaklyNormalizing term := by
  induction term with
  | var index => intro context type typed; exact ⟨.var index, .refl, Normal.var index⟩
  | sort sort => intro context type typed; exact ⟨.sort sort, .refl, Normal.sort sort⟩
  | lam annotation body ihAnnotation ihBody =>
      intro context type typed
      obtain ⟨codomain, sort, bodyTyped, productTyped, conversion⟩ := typed.generation_lam
      obtain ⟨domainSort, codomainSort, outputSort, annotationTyped, codomainTyped,
        sourceRule, productConversion⟩ := productTyped.generation_pi
      exact wn_lam (ihAnnotation annotationTyped) (ihBody bodyTyped)
  | pi domain codomain ihDomain ihCodomain =>
      intro context type typed
      obtain ⟨domainSort, codomainSort, outputSort, domainTyped, codomainTyped,
        sourceRule, conversion⟩ := typed.generation_pi
      exact wn_pi (ihDomain domainTyped) (ihCodomain codomainTyped)
  | app function argument ihFunction ihArgument =>
      intro context type typed
      obtain ⟨domain, codomain, functionTyped, argumentTyped, conversion⟩ := typed.generation_app
      obtain ⟨sort, productTyped⟩ := functionTyped.product_type_sorted
      obtain ⟨domainSort, codomainSort, outputSort, domainTyped, codomainTyped,
        sourceRule, productConversion⟩ := productTyped.generation_pi
      obtain ⟨rfl, rfl, rfl⟩ := sourceRule
      have domainGrammar := sorted_type_classification domainTyped rfl
      have codomainGrammar := sorted_type_classification codomainTyped rfl
      have simpleFunction := arrow_typing functionTyped (.arrow domainGrammar codomainGrammar)
      have simpleArgument := arrow_typing argumentTyped domainGrammar
      have functionReducible := simpleFunction.reducible Expr.var
        (fun index type _ => reducible_var type index)
      have argumentReducible := simpleArgument.reducible Expr.var
        (fun index type _ => reducible_var type index)
      simp only [Expr.subst_var] at functionReducible argumentReducible
      have applicationReducible := functionReducible.2 id argument argumentReducible
      simpa only [Expr.rename_id] using reducible_wn applicationReducible

/-- Independent system-wide WN of the nonvacuous actual monomorphic arrow PTS,
including every valid context and both alternatives of actual source legality. -/
theorem monomorphic_arrow_weakly_normalizing : SystemWeaklyNormalizing monomorphicArrow := by
  intro context valid term legal
  obtain ⟨type, typed | typed⟩ := legal
  · exact typed_weakly_normalizing typed
  · obtain ⟨sort, rfl⟩ | ⟨sort, typeTyped⟩ := typed.regularity
    · exact ⟨.sort sort, .refl, Normal.sort sort⟩
    · exact typed_weakly_normalizing typeTyped

end FormalResearch.TypeTheory.IntendedPTS

```
