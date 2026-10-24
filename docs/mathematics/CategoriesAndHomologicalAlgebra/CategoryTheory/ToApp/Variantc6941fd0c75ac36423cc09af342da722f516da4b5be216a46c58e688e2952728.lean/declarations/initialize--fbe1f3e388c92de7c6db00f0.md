# Anonymous initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:53d5e834d0b526d4eeb1c5483fc0f875ecd122afb238e510cd8ce364fadbf84b",
  "kind": "initialize",
  "lexical_name": null,
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
  "slug": "initialize--fbe1f3e388c92de7c6db00f0",
  "source": {
    "blob": "1a787d9341433b626e446028b9ea61079cff000b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 122,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variantc6941fd0c75ac36423cc09af342da722f516da4b5be216a46c58e688e2952728.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fbe1f3e388c92de7c6db00f0f72e48419ac2d5aa0936bfb4cf9fb627f4fec38d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variantc6941fd0c75ac36423cc09af342da722f516da4b5be216a46c58e688e2952728.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:53d5e834d0b526d4eeb1c5483fc0f875ecd122afb238e510cd8ce364fadbf84b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
initialize registerBuiltinAttribute {
  name := `to_app
  descr := ""
  applicationTime := .afterCompilation
  add := fun src ref kind => match ref with
  | `(attr| to_app $[(attr := $stx?,*)]?) => MetaM.run' do
    if (kind != AttributeKind.global) then
      throwError "`to_app` can only be used as a global attribute"
    addRelatedDecl src "_app" ref stx? fun type value levels => do
      let levelMVars ← levels.mapM fun _ => mkFreshLevelMVar
      let value ← mkExpectedTypeHint value type
      let value := value.instantiateLevelParams levels levelMVars
      let newValue ← toAppExpr (← toCatExpr value)
      let r := (← getMCtx).levelMVarToParam (fun _ => false) (fun _ => false) newValue
      let output := (r.expr, r.newParamNames.toList)
      pure output
  | _ => throwUnsupportedSyntax }

open Term in
/--
Given an equation `t` of the form `η = θ` between 2-morphisms `f ⟶ g` with `f g : C ⟶ D` in the
bicategory `Cat` (possibly after a `∀` binder), `to_app_of% t` produces the equation
`∀ (X : C), η.app X = θ.app X` (where `X` is an object in the domain of `f` and `g`), and simplifies
it suitably using basic lemmas about `NatTrans.app`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variantc6941fd0c75ac36423cc09af342da722f516da4b5be216a46c58e688e2952728.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variantc6941fd0c75ac36423cc09af342da722f516da4b5be216a46c58e688e2952728.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a787d9341433b626e446028b9ea61079cff000b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
