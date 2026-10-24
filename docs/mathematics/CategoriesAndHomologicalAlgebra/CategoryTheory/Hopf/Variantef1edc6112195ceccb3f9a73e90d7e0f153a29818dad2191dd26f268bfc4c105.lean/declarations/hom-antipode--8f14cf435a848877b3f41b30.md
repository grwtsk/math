# hom_antipode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5d9e1723b7a7d3609d6f9e24aecf9c6c3289bcf3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/ef1edc6112195ceccb3f9a73e90d7e0f153a29818dad2191dd26f268bfc4c105.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f2bf0d9b-9c8a-7f8c-548a-a790ca87c482",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:470906e4-35e0-fa4b-076c-538e9ebae26e",
  "kind": "theorem",
  "lexical_name": "hom_antipode",
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
  "slug": "hom-antipode--8f14cf435a848877b3f41b30",
  "source": {
    "blob": "5d9e1723b7a7d3609d6f9e24aecf9c6c3289bcf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 84,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Hopf/Variantef1edc6112195ceccb3f9a73e90d7e0f153a29818dad2191dd26f268bfc4c105.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f14cf435a848877b3f41b301a91c074a4b5cd72bc4b726ccc1405be86124cd3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Hopf/Variantef1edc6112195ceccb3f9a73e90d7e0f153a29818dad2191dd26f268bfc4c105.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:470906e4-35e0-fa4b-076c-538e9ebae26e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hom_antipode {A B : Hopf_ C} (f : A ⟶ B) :
    f.hom.hom ≫ B.antipode = A.antipode ≫ f.hom.hom := by
  -- We show these elements are equal by exhibiting an element in the convolution algebra
  -- between `A` (as a comonoid) and `B` (as a monoid),
  -- such that the LHS is a left inverse, and the RHS is a right inverse.
  apply left_inv_eq_right_inv
    (M := Conv ((Bimon_.toComon_ C).obj A.X) B.X.X)
    (a := f.hom.hom)
  · erw [Conv.mul_eq, Conv.one_eq]
    simp only [Bimon_.toComon__obj_X, Bimon_.toComon__obj_comul, comp_whiskerRight, Category.assoc,
      Bimon_.toComon__obj_counit]
    slice_lhs 3 4 =>
      rw [← whisker_exchange]
    slice_lhs 2 3 =>
      rw [← tensorHom_def]
    slice_lhs 1 2 =>
      rw [← Bimon_.hom_comul_hom f]
    slice_lhs 2 4 =>
      rw [B.antipode_left]
    slice_lhs 1 2 =>
      rw [Bimon_.hom_counit_hom f]
  · erw [Conv.mul_eq, Conv.one_eq]
    simp only [Bimon_.toComon__obj_X, Bimon_.toComon__obj_comul, MonoidalCategory.whiskerLeft_comp,
      Category.assoc, Bimon_.toComon__obj_counit]
    slice_lhs 2 3 =>
      rw [← whisker_exchange]
    slice_lhs 3 4 =>
      rw [← tensorHom_def]
    slice_lhs 3 4 =>
      rw [← f.hom.mul_hom]
    slice_lhs 1 3 =>
      rw [A.antipode_right]
    slice_lhs 2 3 =>
      rw [f.hom.one_hom]

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Hopf/Variantef1edc6112195ceccb3f9a73e90d7e0f153a29818dad2191dd26f268bfc4c105.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Hopf/Variantef1edc6112195ceccb3f9a73e90d7e0f153a29818dad2191dd26f268bfc4c105.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d9e1723b7a7d3609d6f9e24aecf9c6c3289bcf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
