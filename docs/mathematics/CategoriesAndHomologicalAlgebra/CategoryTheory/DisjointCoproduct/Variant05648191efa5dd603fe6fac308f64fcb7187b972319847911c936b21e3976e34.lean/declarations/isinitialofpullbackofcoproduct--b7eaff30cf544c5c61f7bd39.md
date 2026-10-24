# isInitialOfPullbackOfCoproduct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:704a8a25de1f06168f5f17bc655fcc97d3840a11f161ab9d28324ada4b4962da",
  "kind": "def",
  "lexical_name": "isInitialOfPullbackOfCoproduct",
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
  "slug": "isinitialofpullbackofcoproduct--b7eaff30cf544c5c61f7bd39",
  "source": {
    "blob": "6a3b6c61cf048c32ba476786aa8bac6bb1403f88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 104,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DisjointCoproduct/Variant05648191efa5dd603fe6fac308f64fcb7187b972319847911c936b21e3976e34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b7eaff30cf544c5c61f7bd39e5fae69ed1837dc511fad576017532f302c384f1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DisjointCoproduct/Variant05648191efa5dd603fe6fac308f64fcb7187b972319847911c936b21e3976e34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:704a8a25de1f06168f5f17bc655fcc97d3840a11f161ab9d28324ada4b4962da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isInitialOfPullbackOfCoproduct {X₁ X₂ : C} [HasBinaryCoproduct X₁ X₂]
    [CoproductDisjoint X₁ X₂] [HasPullback (coprod.inl : X₁ ⟶ _ ⨿ X₂) coprod.inr] :
    IsInitial (pullback (coprod.inl : X₁ ⟶ _ ⨿ X₂) coprod.inr) :=
  isInitialOfIsPullbackOfCoproduct (pullbackIsPullback _ _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DisjointCoproduct/Variant05648191efa5dd603fe6fac308f64fcb7187b972319847911c936b21e3976e34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DisjointCoproduct/Variant05648191efa5dd603fe6fac308f64fcb7187b972319847911c936b21e3976e34.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a3b6c61cf048c32ba476786aa8bac6bb1403f88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
