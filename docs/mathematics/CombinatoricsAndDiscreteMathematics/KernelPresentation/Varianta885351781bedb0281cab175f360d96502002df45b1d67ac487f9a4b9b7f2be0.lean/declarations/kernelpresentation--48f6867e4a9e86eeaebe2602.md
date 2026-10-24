# KernelPresentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd47c9c11ba13295ba47538d97ee8cac661bc1560f22223f900fe729b714647d",
  "kind": "structure",
  "lexical_name": "KernelPresentation",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "kernelpresentation--48f6867e4a9e86eeaebe2602",
  "source": {
    "blob": "39a60c85516deb92d5c900cce38736a244331470",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 80,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/KernelPresentation/Varianta885351781bedb0281cab175f360d96502002df45b1d67ac487f9a4b9b7f2be0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:48f6867e4a9e86eeaebe2602968fb0f77680d2b4a5c4406c3114352177748c98",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/KernelPresentation/Varianta885351781bedb0281cab175f360d96502002df45b1d67ac487f9a4b9b7f2be0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd47c9c11ba13295ba47538d97ee8cac661bc1560f22223f900fe729b714647d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
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
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/KernelPresentation/Varianta885351781bedb0281cab175f360d96502002df45b1d67ac487f9a4b9b7f2be0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/KernelPresentation/Varianta885351781bedb0281cab175f360d96502002df45b1d67ac487f9a4b9b7f2be0.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39a60c85516deb92d5c900cce38736a244331470` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
