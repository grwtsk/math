# CoproductDisjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e3e1cbe317d863e532f032719101acd5e22a4984aafaa8e008514316d9a299fc",
  "kind": "class",
  "lexical_name": "CoproductDisjoint",
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
  "slug": "coproductdisjoint--ec5f837faf1f806e7279e8c3",
  "source": {
    "blob": "3984cbe02908c91ff374eadbfe854c79f33eace6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 55,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DisjointCoproduct/Variant856a9fac13044907512a739456426501b58b153f0735b006826076b8907bf1fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec5f837faf1f806e7279e8c3a967710220bfa173e5ec663d59c67285537ff5d8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DisjointCoproduct/Variant856a9fac13044907512a739456426501b58b153f0735b006826076b8907bf1fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e3e1cbe317d863e532f032719101acd5e22a4984aafaa8e008514316d9a299fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
class CoproductDisjoint (X₁ X₂ : C) where
  /-- `Z` is initial where `X₁ ⟶ X ⟵ X₂` is a coproduct diagram -/
  isInitialOfIsPullbackOfIsCoproduct :
    ∀ {X Z} {pX₁ : X₁ ⟶ X} {pX₂ : X₂ ⟶ X} {f : Z ⟶ X₁} {g : Z ⟶ X₂}
      (_cX : IsColimit (BinaryCofan.mk pX₁ pX₂)) {comm : f ≫ pX₁ = g ≫ pX₂},
      IsLimit (PullbackCone.mk _ _ comm) → IsInitial Z
  mono_inl : ∀ (X) (X₁ : X₁ ⟶ X) (X₂ : X₂ ⟶ X) (_cX : IsColimit (BinaryCofan.mk X₁ X₂)), Mono X₁
  mono_inr : ∀ (X) (X₁ : X₁ ⟶ X) (X₂ : X₂ ⟶ X) (_cX : IsColimit (BinaryCofan.mk X₁ X₂)), Mono X₂

/-- If the coproduct of `X₁` and `X₂` is disjoint, then given any pullback square

```
Z  ⟶ X₁
↓    ↓
X₂ ⟶ X
```

where `X₁ ⟶ X ← X₂` is a coproduct, then `Z` is initial.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DisjointCoproduct/Variant856a9fac13044907512a739456426501b58b153f0735b006826076b8907bf1fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DisjointCoproduct/Variant856a9fac13044907512a739456426501b58b153f0735b006826076b8907bf1fd.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3984cbe02908c91ff374eadbfe854c79f33eace6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
