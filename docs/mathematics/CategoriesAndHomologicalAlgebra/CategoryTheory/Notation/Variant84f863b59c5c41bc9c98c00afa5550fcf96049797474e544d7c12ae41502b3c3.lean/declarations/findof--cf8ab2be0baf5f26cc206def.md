# findOf?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5563e8d2406cbaf55a21165bf97601c1704c48692770b126b829184b11c6f0f1",
  "kind": "def",
  "lexical_name": "findOf?",
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
  "slug": "findof--cf8ab2be0baf5f26cc206def",
  "source": {
    "blob": "34555acd5a4ac0b11e04caee2288f09cbf9438e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 66,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Notation/Variant84f863b59c5c41bc9c98c00afa5550fcf96049797474e544d7c12ae41502b3c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf8ab2be0baf5f26cc206def8454c3c5b8e76d20ddf76f3d5a52eed684453b99",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Notation/Variant84f863b59c5c41bc9c98c00afa5550fcf96049797474e544d7c12ae41502b3c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5563e8d2406cbaf55a21165bf97601c1704c48692770b126b829184b11c6f0f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def findOf? (ty : Expr) : MetaM (Option (Name × Nat)) := do
  let ty ← whnfCore ty
  if let .const declName _ := ty.getAppFn then
    let ofName := declName ++ `of
    -- `FooCat.of` is allowed not to exist, in which case we move on to unfolding `ty`.
    if let some info := (← getEnv).find? ofName then
      if let some (num, _) := explicitArgs? info.type then return some (ofName, num)
  match ← unfoldDefinition? ty with
  | some ty => findOf? ty
  | none => return none

end OfNotation

open OfNotation

/-- `↧X` is the object of a concrete category corresponding to the type `X`, i.e. `FooCat.of X`
where the category `FooCat` is determined by the expected type.

`↧X` elaborates to a literal application of `FooCat.of`.
* `(↧R : CommRingCat)` is `CommRingCat.of R`,
* `(↧M : ModuleCat R)` is `ModuleCat.of R M`,
* `(↧A : CommAlgCat R)` is `CommAlgCat.of R A`.

The expected type must be known. -/
syntax:max "↧" term:max : term

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Notation/Variant84f863b59c5c41bc9c98c00afa5550fcf96049797474e544d7c12ae41502b3c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Notation/Variant84f863b59c5c41bc9c98c00afa5550fcf96049797474e544d7c12ae41502b3c3.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34555acd5a4ac0b11e04caee2288f09cbf9438e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
