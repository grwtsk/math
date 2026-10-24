# isLeftAdjoint_square_lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "89bc8e957914d4dc24e423bc702f2fb8600c9a28",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 218,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b6cace285d54370fcfff86522569814dcede4292e0f061b9e14870eb6378c663.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4d4a1018-5286-6996-16b8-a96483453ca1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e7248fb7-cab6-a122-fccb-2316794bba16",
  "kind": "lemma",
  "lexical_name": "isLeftAdjoint_square_lift",
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
  "slug": "isleftadjoint-square-lift--f51bb47443bf40d0ed92fef8",
  "source": {
    "blob": "89bc8e957914d4dc24e423bc702f2fb8600c9a28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 218,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variantb6cace285d54370fcfff86522569814dcede4292e0f061b9e14870eb6378c663.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f51bb47443bf40d0ed92fef86d39a3fb6d15cf1386d260e385438806b7ef3794",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variantb6cace285d54370fcfff86522569814dcede4292e0f061b9e14870eb6378c663.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7248fb7-cab6-a122-fccb-2316794bba16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
lemma isLeftAdjoint_square_lift (Q : A ⥤ B) (V : B ⥤ D) (U : A ⥤ C) (L : C ⥤ D)
    (comm : U ⋙ L ≅ Q ⋙ V) [U.IsLeftAdjoint] [V.IsLeftAdjoint] [L.IsLeftAdjoint]
    [∀ X, RegularMono ((Adjunction.ofIsLeftAdjoint V).unit.app X)] [HasCoreflexiveEqualizers A] :
    Q.IsLeftAdjoint :=
  have := ((Adjunction.ofIsLeftAdjoint (U ⋙ L)).ofNatIsoLeft comm).isLeftAdjoint
  isLeftAdjoint_triangle_lift Q (Adjunction.ofIsLeftAdjoint V)

/-- Suppose we have a commutative square of functors

```
      Q
    A → B
  U ↓   ↓ V
    C → D
      R
```

where `U` has a right adjoint, `A` has reflexive equalizers and `V` is comonadic.
Then `Q` has a right adjoint if `L` has a right adjoint.

See https://ncatlab.org/nlab/show/adjoint+lifting+theorem
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variantb6cace285d54370fcfff86522569814dcede4292e0f061b9e14870eb6378c663.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variantb6cace285d54370fcfff86522569814dcede4292e0f061b9e14870eb6378c663.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89bc8e957914d4dc24e423bc702f2fb8600c9a28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
