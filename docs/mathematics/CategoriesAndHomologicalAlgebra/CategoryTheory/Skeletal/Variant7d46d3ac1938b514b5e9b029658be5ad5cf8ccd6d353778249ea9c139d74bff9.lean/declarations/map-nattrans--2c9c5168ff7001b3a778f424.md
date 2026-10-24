# map₂NatTrans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3b6b763801e4235b508ae7619113a68c7e6ef21cda2ea7b0bce762ede7c4a4b",
  "kind": "def",
  "lexical_name": "map₂NatTrans",
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
  "slug": "map-nattrans--2c9c5168ff7001b3a778f424",
  "source": {
    "blob": "3a848751c03556f7c75a78bdc0890c75b2501833",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 241,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant7d46d3ac1938b514b5e9b029658be5ad5cf8ccd6d353778249ea9c139d74bff9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2c9c5168ff7001b3a778f424953980d66be17718a29df8e5cfddcc922071acc6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant7d46d3ac1938b514b5e9b029658be5ad5cf8ccd6d353778249ea9c139d74bff9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3b6b763801e4235b508ae7619113a68c7e6ef21cda2ea7b0bce762ede7c4a4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def map₂NatTrans (F : C ⥤ D ⥤ E) : {x₁ x₂ : ThinSkeleton C} → (x₁ ⟶ x₂) →
    (map₂Functor F x₁ ⟶ map₂Functor F x₂) := fun {x₁} {x₂} =>
  @Quotient.recOnSubsingleton₂ C C (isIsomorphicSetoid C) (isIsomorphicSetoid C)
    (fun x x' : ThinSkeleton C => (x ⟶ x') → (map₂Functor F x ⟶ map₂Functor F x')) _ x₁ x₂
    (fun X₁ X₂ f => { app := fun y =>
      Quotient.recOnSubsingleton y fun Y => homOfLE (f.le.elim fun f' => ⟨(F.map f').app Y⟩) })

-- TODO: state the lemmas about what happens when you compose with `toThinSkeleton`
/-- A functor `C ⥤ D ⥤ E` computably lowers to a functor
`ThinSkeleton C ⥤ ThinSkeleton D ⥤ ThinSkeleton E` -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant7d46d3ac1938b514b5e9b029658be5ad5cf8ccd6d353778249ea9c139d74bff9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant7d46d3ac1938b514b5e9b029658be5ad5cf8ccd6d353778249ea9c139d74bff9.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a848751c03556f7c75a78bdc0890c75b2501833` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
