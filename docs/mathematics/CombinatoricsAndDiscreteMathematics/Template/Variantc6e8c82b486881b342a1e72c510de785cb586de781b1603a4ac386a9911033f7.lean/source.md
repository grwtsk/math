# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Template.Variantc6e8c82b486881b342a1e72c510de785cb586de781b1603a4ac386a9911033f7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f3e2523e56f49e1b79778f5c8c5646c0bb4e5c15` · SHA-256 `c6e8c82b486881b342a1e72c510de785cb586de781b1603a4ac386a9911033f7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.AbelReynolds.Boundary
import Mathematics.AbelReynolds.Tally
import Mathlib.Data.Finset.Basic

/-!
# Closed symbolic template language

The AST is finite and structurally evaluated.  Its only variable reads are
declared symbols, so dependency certificates can bind the exact free-variable
set without arbitrary host evaluation or unbounded search.
-/

namespace Mathematics.AbelReynolds

inductive ValueSort
  | tally
  | nat
  | bool
  | classId
  | primeId
  deriving DecidableEq, Repr

inductive DependencyPartition
  | global
  | class
  | prime
  | auxiliary
  | runtime
  deriving DecidableEq, Repr

structure Symbol where
  name : String
  sort : ValueSort
  partition : DependencyPartition
  deriving DecidableEq, Repr

inductive Term
  | tallyLiteral (count : Nat)
  | natLiteral (value : Nat)
  | boolLiteral (value : Bool)
  | classLiteral (value : String)
  | primeLiteral (value : String)
  | variable (symbol : Symbol)
  | count (term : Term)
  | add (left right : Term)
  | equal (left right : Term)
  | conditional (condition whenTrue whenFalse : Term)
  | transport (certificate : BoundaryTransport) (term : Term)
  deriving Repr

inductive Value
  | tally (value : Tally)
  | nat (value : Nat)
  | bool (value : Bool)
  | classId (value : String)
  | primeId (value : String)
  deriving DecidableEq, Repr

def Value.sort : Value → ValueSort
  | .tally _ => .tally
  | .nat _ => .nat
  | .bool _ => .bool
  | .classId _ => .classId
  | .primeId _ => .primeId

abbrev Environment := List (Symbol × Value)

def Environment.lookup
    (environment : Environment)
    (symbol : Symbol) : Option Value :=
  match environment.find? (fun entry => entry.1 = symbol) with
  | some entry =>
      if entry.2.sort = symbol.sort then some entry.2 else none
  | none => none

def Term.infer : Term → Option ValueSort
  | .tallyLiteral _ => some .tally
  | .natLiteral _ => some .nat
  | .boolLiteral _ => some .bool
  | .classLiteral _ => some .classId
  | .primeLiteral _ => some .primeId
  | .variable symbol => some symbol.sort
  | .count term =>
      if term.infer = some .tally then some .nat else none
  | .add left right =>
      if left.infer = some .nat ∧ right.infer = some .nat
      then some .nat else none
  | .equal left right =>
      match left.infer, right.infer with
      | some leftSort, some rightSort =>
          if leftSort = rightSort then some .bool else none
      | _, _ => none
  | .conditional condition whenTrue whenFalse =>
      if condition.infer = some .bool ∧
          whenTrue.infer = whenFalse.infer
      then whenTrue.infer else none
  | .transport _ term => term.infer

def Term.freeVariables : Term → Finset Symbol
  | .tallyLiteral _
  | .natLiteral _
  | .boolLiteral _
  | .classLiteral _
  | .primeLiteral _ => ∅
  | .variable symbol => {symbol}
  | .count term => term.freeVariables
  | .add left right
  | .equal left right =>
      left.freeVariables ∪ right.freeVariables
  | .conditional condition whenTrue whenFalse =>
      condition.freeVariables ∪
        whenTrue.freeVariables ∪ whenFalse.freeVariables
  | .transport _ term => term.freeVariables

inductive EvalResult
  | value (value : Value)
  | missingEvidence (symbol : String)
  | typedFailure
  deriving DecidableEq, Repr

inductive PrimeHoleValidation
  | nonemptyIdentifier
  | naturalAtLeast (minimum : Nat)
  | tallyAtLeast (minimum : Nat)
  | boolean
  deriving DecidableEq, Repr

structure PrimeHole where
  symbol : Symbol
  sort : ValueSort
  symbolSort : symbol.sort = sort
  primePartition : symbol.partition = .prime
  boundary : BoundaryKey
  validation : PrimeHoleValidation
  consumingOperationId : String
  certificateId : String
  deriving Repr

inductive TemplateFieldScope
  | class
  | prime
  | runtime
  deriving DecidableEq, Repr

def Term.eval (term : Term) (environment : Environment) : EvalResult :=
  match term with
  | .tallyLiteral tallyCount =>
      .value (.tally (Tally.ofNat tallyCount))
  | .natLiteral value => .value (.nat value)
  | .boolLiteral value => .value (.bool value)
  | .classLiteral value => .value (.classId value)
  | .primeLiteral value => .value (.primeId value)
  | .variable symbol =>
      match environment.lookup symbol with
      | some value => .value value
      | none => .missingEvidence symbol.name
  | .count inner =>
      match inner.eval environment with
      | .value (.tally tally) => .value (.nat tally.count)
      | .missingEvidence symbol => .missingEvidence symbol
      | _ => .typedFailure
  | .add left right =>
      match left.eval environment, right.eval environment with
      | .value (.nat leftValue), .value (.nat rightValue) =>
          .value (.nat (leftValue + rightValue))
      | .missingEvidence symbol, _ | _, .missingEvidence symbol =>
          .missingEvidence symbol
      | _, _ => .typedFailure
  | .equal left right =>
      match left.eval environment, right.eval environment with
      | .value leftValue, .value rightValue =>
          if leftValue.sort = rightValue.sort
          then .value (.bool (leftValue = rightValue))
          else .typedFailure
      | .missingEvidence symbol, _ | _, .missingEvidence symbol =>
          .missingEvidence symbol
      | _, _ => .typedFailure
  | .conditional condition whenTrue whenFalse =>
      match condition.eval environment with
      | .value (.bool true) => whenTrue.eval environment
      | .value (.bool false) => whenFalse.eval environment
      | .missingEvidence symbol => .missingEvidence symbol
      | _ => .typedFailure
  | .transport _ inner => inner.eval environment

structure TemplateField where
  fieldId : String
  index : Nat
  ordinal : Tally
  ordinalCorrect : ordinal = fieldOrdinal index
  sort : ValueSort
  term : Term
  wellTyped : term.infer = some sort
  dependencySet : Finset Symbol
  dependencyExact : dependencySet = term.freeVariables
  semanticNoninterference :
    ∀ left right : Environment,
      (∀ symbol ∈ dependencySet,
        left.lookup symbol = right.lookup symbol) →
      term.eval left = term.eval right
  primeHoles : List PrimeHole
  scope : TemplateFieldScope
  boundary : BoundaryKey
  symmetryProfile : String
  dependencyCertificateId : String
  proofObjectId : String
  costCertificateId : String
  fieldDigest : String

def TemplateField.ClassReusable (field : TemplateField) : Prop :=
  ∀ symbol ∈ field.dependencySet,
    symbol.partition = .global ∨ symbol.partition = .class

theorem TemplateField.classReusable_has_no_primeDependency
    {field : TemplateField}
    (reusable : field.ClassReusable)
    {symbol : Symbol}
    (member : symbol ∈ field.dependencySet) :
    symbol.partition ≠ .prime := by
  intro prime
  rcases reusable symbol member with globalCase | classCase
  · have impossible :
        DependencyPartition.global = .prime :=
      globalCase.symm.trans prime
    cases impossible
  · have impossible :
        DependencyPartition.class = .prime :=
      classCase.symm.trans prime
    cases impossible

structure Template where
  fields : List TemplateField

def Template.classFields (template : Template) :
    List TemplateField :=
  template.fields.filter (fun field => field.scope = .class)

def Template.primeFields (template : Template) :
    List TemplateField :=
  template.fields.filter (fun field => field.scope = .prime)

def Template.runtimeFields (template : Template) :
    List TemplateField :=
  template.fields.filter (fun field => field.scope = .runtime)

theorem Template.class_prime_disjoint
    (template : Template) :
    ∀ field,
      field ∈ template.classFields →
      field ∉ template.primeFields := by
  intro field classMember primeMember
  have classScope :
      field.scope = TemplateFieldScope.class := by
    exact of_decide_eq_true (List.mem_filter.mp classMember).2
  have primeScope :
      field.scope = TemplateFieldScope.prime := by
    exact of_decide_eq_true (List.mem_filter.mp primeMember).2
  cases classScope.symm.trans primeScope

end Mathematics.AbelReynolds
```
