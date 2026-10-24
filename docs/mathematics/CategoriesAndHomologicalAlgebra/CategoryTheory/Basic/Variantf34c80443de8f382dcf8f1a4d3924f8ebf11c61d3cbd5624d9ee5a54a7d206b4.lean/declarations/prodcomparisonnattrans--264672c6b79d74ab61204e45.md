# prodComparisonNatTrans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:717dab8e010053b3085ef5e7fbe314a6d6ade76dd6573e74bcfab4d6dea5814f",
  "kind": "def",
  "lexical_name": "prodComparisonNatTrans",
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
  "slug": "prodcomparisonnattrans--264672c6b79d74ab61204e45",
  "source": {
    "blob": "e4755b6c0d9448bab61b4bd942518c36b5071fc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 620,
    "line": 612,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf34c80443de8f382dcf8f1a4d3924f8ebf11c61d3cbd5624d9ee5a54a7d206b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:264672c6b79d74ab61204e454b52318c1d163f723de1f9953be28e6d7e393d7c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf34c80443de8f382dcf8f1a4d3924f8ebf11c61d3cbd5624d9ee5a54a7d206b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:717dab8e010053b3085ef5e7fbe314a6d6ade76dd6573e74bcfab4d6dea5814f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 612–620.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def prodComparisonNatTrans (A : C) :
    (curriedTensor C).obj A ⋙ F ⟶ F ⋙ (curriedTensor D).obj (F.obj A) where
  app B := prodComparison F A B
  naturality x y f := by
    apply hom_ext <;>
    simp only [Functor.comp_obj, curriedTensor_obj_obj,
      Functor.comp_map, curriedTensor_obj_map, Category.assoc, prodComparison_fst, whiskerLeft_fst,
      prodComparison_snd, prodComparison_snd_assoc, whiskerLeft_snd, ← F.map_comp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf34c80443de8f382dcf8f1a4d3924f8ebf11c61d3cbd5624d9ee5a54a7d206b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf34c80443de8f382dcf8f1a4d3924f8ebf11c61d3cbd5624d9ee5a54a7d206b4.lean#L612).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4755b6c0d9448bab61b4bd942518c36b5071fc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
