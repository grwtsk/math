# toCatExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:747d0e42005acfa61b55a4734fc36d9312aca0819e7dcd5b8b77ff7312bfff7c",
  "kind": "def",
  "lexical_name": "toCatExpr",
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
  "slug": "tocatexpr--fd66cb36373d4966b51a12a0",
  "source": {
    "blob": "1a787d9341433b626e446028b9ea61079cff000b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 54,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variantc6941fd0c75ac36423cc09af342da722f516da4b5be216a46c58e688e2952728.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd66cb36373d4966b51a12a0495993a6fd787971c629761df50895a1d74fc403",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variantc6941fd0c75ac36423cc09af342da722f516da4b5be216a46c58e688e2952728.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:747d0e42005acfa61b55a4734fc36d9312aca0819e7dcd5b8b77ff7312bfff7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toCatExpr (e : Expr) : MetaM Expr := do
  let (args, binderInfos, conclusion) ← forallMetaTelescope (← inferType e)
  -- Find the expression corresponding to the bicategory, by anylizing `η = θ` (i.e. conclusion)
  let B ←
    match conclusion.getAppFnArgs with
    | (`Eq, #[_, η, _]) =>
      match (← inferType η).getAppFnArgs with
      | (`Quiver.Hom, #[_, _, f, _]) =>
        match (← inferType f).getAppFnArgs with
        | (`Quiver.Hom, #[_, _, a, _]) => inferType a
        | _ => throwError "The conclusion {conclusion} is not an equality of 2-morphisms!"
      | _ => throwError "The conclusion {conclusion} is not an equality of 2-morphisms!"
    | _ => throwError "The conclusion {conclusion} is not an equality!"
  -- Create level metavariables to be used for `Cat.{v, u}`
  let u ← mkFreshLevelMVar
  let v ← mkFreshLevelMVar
  -- Assign `B` to `Cat.{v, u}`
  let _ ← isDefEq B (.const ``Cat [v, u])
  -- Assign the right bicategory instance to `Cat.{v, u}`
  let some inst ← args.findM? fun x => do
      return (← inferType x).getAppFnArgs == (`CategoryTheory.Bicategory, #[B])
    | throwError "Can not find the argument for the bicategory instance of the bicategory in which \
      the equality is taking place."
  let _ ← isDefEq inst (.const ``CategoryTheory.Cat.bicategory [v, u])
  -- Construct the new expression
  let value := mkAppN e args
  let rec
  /-- Recursive function which applies `mkLambdaFVars` stepwise
  (so that each step can have different binderinfos) -/
    apprec (i : Nat) (e : Expr) : MetaM Expr := do
      if h : i < args.size then
        let arg := args[i]
        let bi := binderInfos[i]!
        let e' ← apprec (i + 1) e
        unless arg != B && arg != inst do return e'
        mkLambdaFVars #[arg] e' (binderInfoForMVars := bi)
      else
        return e
  let value ← apprec 0 value
  return value

/--
Given morphisms `f g : C ⟶ D` in the bicategory `Cat`, and an equation `η = θ` between 2-morphisms
(possibly after a `∀` binder), produce the equation `∀ (X : C), f.app X = g.app X`, and simplify
it using basic lemmas about `NatTrans.app`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variantc6941fd0c75ac36423cc09af342da722f516da4b5be216a46c58e688e2952728.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variantc6941fd0c75ac36423cc09af342da722f516da4b5be216a46c58e688e2952728.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a787d9341433b626e446028b9ea61079cff000b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
