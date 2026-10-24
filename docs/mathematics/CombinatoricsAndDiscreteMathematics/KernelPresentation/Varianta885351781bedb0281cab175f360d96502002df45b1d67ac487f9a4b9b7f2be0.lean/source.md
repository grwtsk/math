# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.KernelPresentation.Varianta885351781bedb0281cab175f360d96502002df45b1d67ac487f9a4b9b7f2be0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `39a60c85516deb92d5c900cce38736a244331470` · SHA-256 `a885351781bedb0281cab175f360d96502002df45b1d67ac487f9a4b9b7f2be0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Finset.Union
import Atomize.Formal.ScopedJudgment

/-!
# Abstract kernel presentation

**Architectural problem:** The structural recovery theorem should not depend on
one unstable encoding of Lean internals, but it still needs enough typed data to
prevent rules and scope changes from being assembled arbitrarily.

**Important data and indices:** A presentation selects universe contexts, local
contexts, expressions, constant names, root variables, leaf origins, and rule
keys.  `Rule premises conclusion` fixes the exact premise list and conclusion.
`CtxMorphism Γ Δ`, universe substitutions, and local substitutions record every
premise-to-conclusion scope transition exposed by the presentation.

**Type-enforced invariant:** `actJudgment` consumes `ScopedJudgment.At Γ` and
returns `ScopedJudgment.At Δ`; a morphism cannot act on a judgment packaged at
the wrong source.  The identity and composition fields require this action to
respect the presentation's morphism operations by propositional equality.

**Layer boundary:** This is an abstract rule vocabulary.  It does not export
Lean rules, replay definitional equality, or reconstruct a historical frontend
trace.  A later pinned adapter must instantiate the interface and justify that
its rule and context data faithfully represent the selected Lean version.

**Worked example:** The private `toyPresentation` fixture in `Examples.lean`
uses list-valued telescopes.  Its
action replaces the source telescope by the indexed target, and proves that
identity transport changes nothing and composed transport agrees with two
successive transports.

**Validation consequence:** The structural `Comp`/`Eval` theorem is conditional
on the supplied presentation.  These action laws prevent a future adapter from
using a context-indexed morphism while silently ignoring its source or target,
but they do not themselves certify a Lean adapter.
-/

namespace Atomize.Formal

universe u

set_option linter.unusedVariables false in
/--
**Architectural problem:** Package the data needed to form well-indexed abstract
derivation nodes without granting arbitrary untyped rule assembly.

**Important data and indices:** `Rule` is indexed by the full premise list and
conclusion.  Rule metadata exposes constants, root variables, a stable key, and
one context/universe/local substitution record per premise.  `leafOrigin?` is
available only when the premise list is empty.

**Type-enforced invariant:** Context action is indexed at both endpoints and
satisfies identity and composition.  A rule's children must match its indexed
premises, while only an empty-premise rule may contribute leaf provenance.

**Equality notion:** `actJudgment_id` and `actJudgment_comp` are propositional
equalities of `ScopedJudgment.At` values.  They are not claims of definitional
reduction, alpha-equivalence, or kernel definitional equality.

**Boundary cases:** Primitive constants are declared independently of any
chosen project boundary.  Completeness with respect to Lean requires a separate
adapter proof and is not supplied by constructing this record.

**Layer boundary:** This record specifies an abstract kernel presentation, not
a concrete Lean rule trace or elaborator implementation.

**Worked example:** The private toy instance uses list contexts and indexed
unary and lambda-introduction rules.

**Used by:** Every M1a judgment, derivation, plan, compilation, and boundary
predicate is parameterized by one presentation.

**Proof idea:** Dependent fields make rule premises and context endpoints part
of the types accepted by later constructors.

**Validation consequence:** Constructing an instance checks its internal laws
but does not prove fidelity to a pinned Lean environment.
-/
structure KernelPresentation where
  UniverseContext : Type u
  LocalContext : Type u
  Expr : Type u
  ConstantName : Type u
  RootVariable : Type u
  LeafOrigin : Type u
  RuleKey : Type u
  constantNameDecidableEq : DecidableEq ConstantName
  rootVariableDecidableEq : DecidableEq RootVariable
  leafOriginDecidableEq : DecidableEq LeafOrigin
  ruleKeyDecidableEq : DecidableEq RuleKey
  judgmentDecidableEq :
    DecidableEq (ScopedJudgment UniverseContext LocalContext Expr)
  primitiveConstants : Finset ConstantName
  CtxMorphism : LocalContext → LocalContext → Type u
  idMorphism : (context : LocalContext) → CtxMorphism context context
  compMorphism :
    {first second third : LocalContext} →
    CtxMorphism first second →
    CtxMorphism second third →
    CtxMorphism first third
  actJudgment :
    {source target : LocalContext} →
    CtxMorphism source target →
    ScopedJudgment.At (UniverseContext := UniverseContext) (Expr := Expr) source →
    ScopedJudgment.At (UniverseContext := UniverseContext) (Expr := Expr) target
  actJudgment_id :
    (context : LocalContext) →
    (judgment :
      ScopedJudgment.At (UniverseContext := UniverseContext) (Expr := Expr) context) →
    actJudgment (idMorphism context) judgment = judgment
  actJudgment_comp :
    {first second third : LocalContext} →
    (firstToSecond : CtxMorphism first second) →
    (secondToThird : CtxMorphism second third) →
    (judgment :
      ScopedJudgment.At (UniverseContext := UniverseContext) (Expr := Expr) first) →
    actJudgment (compMorphism firstToSecond secondToThird) judgment =
      actJudgment secondToThird (actJudgment firstToSecond judgment)
  UniverseSubstitution : UniverseContext → UniverseContext → Type u
  LocalSubstitution : LocalContext → LocalContext → Type u
  Rule :
    {premises : List (ScopedJudgment UniverseContext LocalContext Expr)} →
    ScopedJudgment UniverseContext LocalContext Expr → Type u
  ruleConstantReferences :
    {premises : List (ScopedJudgment UniverseContext LocalContext Expr)} →
    {conclusion : ScopedJudgment UniverseContext LocalContext Expr} →
    Rule (premises := premises) conclusion → Finset ConstantName
  ruleRootVariables :
    {premises : List (ScopedJudgment UniverseContext LocalContext Expr)} →
    {conclusion : ScopedJudgment UniverseContext LocalContext Expr} →
    Rule (premises := premises) conclusion → Finset RootVariable
  ruleKey :
    {premises : List (ScopedJudgment UniverseContext LocalContext Expr)} →
    {conclusion : ScopedJudgment UniverseContext LocalContext Expr} →
    Rule (premises := premises) conclusion → RuleKey
  ruleContextMorphism :
    {premises : List (ScopedJudgment UniverseContext LocalContext Expr)} →
    {conclusion : ScopedJudgment UniverseContext LocalContext Expr} →
    Rule (premises := premises) conclusion →
    (index : Fin premises.length) →
    CtxMorphism (premises.get index).localContext conclusion.localContext
  ruleUniverseSubstitution :
    {premises : List (ScopedJudgment UniverseContext LocalContext Expr)} →
    {conclusion : ScopedJudgment UniverseContext LocalContext Expr} →
    Rule (premises := premises) conclusion →
    (index : Fin premises.length) →
    UniverseSubstitution
      (premises.get index).universeContext
      conclusion.universeContext
  ruleLocalSubstitution :
    {premises : List (ScopedJudgment UniverseContext LocalContext Expr)} →
    {conclusion : ScopedJudgment UniverseContext LocalContext Expr} →
    Rule (premises := premises) conclusion →
    (index : Fin premises.length) →
    LocalSubstitution (premises.get index).localContext conclusion.localContext
  leafOrigin? :
    {conclusion : ScopedJudgment UniverseContext LocalContext Expr} →
    Rule (premises := []) conclusion → Option LeafOrigin

namespace KernelPresentation

/--
**Important data and indices:** The judgment type determined by a presentation.

**Layer boundary:** This abbreviation exposes the full abstract scoped record;
use `K.JudgmentAt Γ` when an API must enforce one local-context endpoint.

**Architectural problem:** Consumers need one canonical name for the complete
judgment type selected by `K`.

**Type-enforced invariant:** All universe, local-context, and expression types
come from the same presentation.

**Worked example:** `ToyJudgment` instantiates this shape with list contexts and
natural-number expression labels.

**Used by:** Rule indices, raw derivations, and tree plans.

**Proof idea:** The abbreviation expands directly to `ScopedJudgment` with
`K`'s selected component types.

**Equality notion:** Equality is equality of the expanded scoped record.

**Boundary cases:** Empty contexts remain ordinary judgment values.

**Validation consequence:** The alias prevents type mixing but adds no adapter
or kernel authority.
-/
abbrev Judgment (K : KernelPresentation) :=
  ScopedJudgment K.UniverseContext K.LocalContext K.Expr

/--
**Type-enforced invariant:** `JudgmentAt K Γ` contains exactly a `K.Judgment`
whose stored local context is `Γ`.

**Used by:** The public context action and its algebra laws use this endpoint-
indexed view; raw derivation nodes continue to retain the full judgment index.

**Proof idea:** Endpoint membership is carried as a subtype equality witness;
the presentation's action laws then make identity and sequential transport
agree by propositional equality.

**Architectural problem:** A bare `Judgment` is insufficient when a morphism
must enforce its source or target context.

**Important data and indices:** `context` is a local-context index selected by
the same presentation `K`.

**Layer boundary:** This is an abstract endpoint view, not Lean context
transport.

**Worked example:** The toy identity action consumes a value at `[]`.

**Equality notion:** The subtype stores propositional context equality.

**Boundary cases:** The empty telescope still has an explicit endpoint index.

**Validation consequence:** Wrong-source abstract actions fail to elaborate;
concrete transport correctness remains external to M1a.
-/
abbrev JudgmentAt (K : KernelPresentation) (context : K.LocalContext) :=
  ScopedJudgment.At (UniverseContext := K.UniverseContext) (Expr := K.Expr) context

/--
**Architectural problem:** Leaf provenance must not be manufactured by an
internal node that still has proof premises.

**Type-enforced invariant:** `leafOrigin?` can be called only in the empty-list
branch, so non-leaf rules contribute the empty provenance set by construction.

**Boundary cases:** A genuine leaf may still have no provenance label (`none`);
this function then contributes the empty set.

**Important data and indices:** The rule's premise list determines whether the
function may inspect `leafOrigin?`.

**Layer boundary:** Provenance is presentation metadata, not a theorem or
trusted-boundary certificate.

**Worked example:** The toy internal-constant leaf contributes
`.internalConstant`, while unary nodes contribute nothing directly.

**Used by:** `RawDer.leafOrigins` and its compilation-preservation theorem.

**Proof idea:** Pattern matching on the indexed premise list exposes the empty
case required by `leafOrigin?`.

**Equality notion:** Results use exact `Finset` equality over leaf-origin names.

**Validation consequence:** The function preserves declared provenance but
does not prove that a concrete adapter classified every leaf correctly.
-/
def ruleLeafOrigins (K : KernelPresentation) :
    {premises : List K.Judgment} →
    {conclusion : K.Judgment} →
    K.Rule (premises := premises) conclusion → Finset K.LeafOrigin
  | [], _, rule =>
      letI := K.leafOriginDecidableEq
      match K.leafOrigin? rule with
      | none => ∅
      | some origin => {origin}
  | _ :: _, _, _ => ∅

end KernelPresentation

end Atomize.Formal
```
