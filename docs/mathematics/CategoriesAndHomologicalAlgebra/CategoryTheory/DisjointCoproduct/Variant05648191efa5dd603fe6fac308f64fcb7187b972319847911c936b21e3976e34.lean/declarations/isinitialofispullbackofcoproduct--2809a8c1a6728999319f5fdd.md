# isInitialOfIsPullbackOfCoproduct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a8e30f634acbb7d59a4dc7e861bd4603b707d8948d08877a650c6b9b6b993d5",
  "kind": "def",
  "lexical_name": "isInitialOfIsPullbackOfCoproduct",
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
  "slug": "isinitialofispullbackofcoproduct--2809a8c1a6728999319f5fdd",
  "source": {
    "blob": "6a3b6c61cf048c32ba476786aa8bac6bb1403f88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 81,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DisjointCoproduct/Variant05648191efa5dd603fe6fac308f64fcb7187b972319847911c936b21e3976e34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2809a8c1a6728999319f5fdd6d4b265f369f62623a88295656d06cc11f824249",
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

Occurrence: `declaration:5a8e30f634acbb7d59a4dc7e861bd4603b707d8948d08877a650c6b9b6b993d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
noncomputable def isInitialOfIsPullbackOfCoproduct {Z X₁ X₂ : C} [HasBinaryCoproduct X₁ X₂]
    [CoproductDisjoint X₁ X₂] {f : Z ⟶ X₁} {g : Z ⟶ X₂}
    {comm : f ≫ (coprod.inl : X₁ ⟶ _ ⨿ X₂) = g ≫ coprod.inr}
    (cZ : IsLimit (PullbackCone.mk _ _ comm)) : IsInitial Z :=
  CoproductDisjoint.isInitialOfIsPullbackOfIsCoproduct (coprodIsCoprod _ _) cZ

/-- If the coproduct of `X₁` and `X₂` is disjoint, then provided `X₁ ⟶ X ← X₂` is a coproduct the
pullback is an initial object:

```
     X₁
     ↓
X₂ ⟶ X
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DisjointCoproduct/Variant05648191efa5dd603fe6fac308f64fcb7187b972319847911c936b21e3976e34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DisjointCoproduct/Variant05648191efa5dd603fe6fac308f64fcb7187b972319847911c936b21e3976e34.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a3b6c61cf048c32ba476786aa8bac6bb1403f88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
