# eHom_whisker_exchange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4f59195-4e80-a533-ed6d-cfdf498e2e62",
  "kind": "lemma",
  "lexical_name": "eHom_whisker_exchange",
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
  "slug": "ehom-whisker-exchange--96a4ca267147d9c2c7eea315",
  "source": {
    "blob": "b38992a0e65b7a043e349bfe94c0129223292149",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 154,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5a0aa4fc4f4e1d9ae15822398eb5006805b457c1eae4532e1c8187d474b57a03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96a4ca267147d9c2c7eea315bd04aae67001200dff7932028be18d9e00422948",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5a0aa4fc4f4e1d9ae15822398eb5006805b457c1eae4532e1c8187d474b57a03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4f59195-4e80-a533-ed6d-cfdf498e2e62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eHom_whisker_exchange {X X' Y Y' : C} (f : X ⟶ X') (g : Y ⟶ Y') :
    eHomWhiskerLeft V X' g ≫ eHomWhiskerRight V f Y' =
      eHomWhiskerRight V f Y ≫ eHomWhiskerLeft V X g := by
  dsimp [eHomWhiskerLeft, eHomWhiskerRight]
  rw [assoc, assoc, assoc, assoc, leftUnitor_inv_naturality_assoc,
    whisker_exchange_assoc, ← e_assoc, leftUnitor_tensor_inv_assoc,
    associator_inv_naturality_left_assoc, Iso.hom_inv_id_assoc,
    ← comp_whiskerRight_assoc, whisker_exchange_assoc,
    MonoidalCategory.whiskerRight_id_assoc, assoc, Iso.inv_hom_id_assoc,
    whisker_exchange_assoc, MonoidalCategory.whiskerRight_id_assoc, Iso.inv_hom_id_assoc]

attribute [local simp] eHom_whisker_exchange

variable (C) in
/-- The bifunctor `Cᵒᵖ ⥤ C ⥤ V` which sends `X : Cᵒᵖ` and `Y : C` to `X ⟶[V] Y`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5a0aa4fc4f4e1d9ae15822398eb5006805b457c1eae4532e1c8187d474b57a03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5a0aa4fc4f4e1d9ae15822398eb5006805b457c1eae4532e1c8187d474b57a03.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b38992a0e65b7a043e349bfe94c0129223292149` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
