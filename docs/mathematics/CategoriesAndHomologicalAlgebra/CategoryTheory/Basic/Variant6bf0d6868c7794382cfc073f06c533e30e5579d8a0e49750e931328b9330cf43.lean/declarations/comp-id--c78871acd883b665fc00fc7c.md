# comp_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "540f74b75972ff6e8f35f4f461607f228aab0651",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 426,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6b/6bf0d6868c7794382cfc073f06c533e30e5579d8a0e49750e931328b9330cf43.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:272b1c77-728e-4a40-fd00-d50c74b4ab70",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b87e5e6d-be8c-0763-acdf-903d22f3a286",
  "kind": "lemma",
  "lexical_name": "comp_id",
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
  "slug": "comp-id--c78871acd883b665fc00fc7c",
  "source": {
    "blob": "540f74b75972ff6e8f35f4f461607f228aab0651",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 437,
    "line": 426,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6bf0d6868c7794382cfc073f06c533e30e5579d8a0e49750e931328b9330cf43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c78871acd883b665fc00fc7cee199886458a031c3c4ec0de95bfca25d15fef37",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6bf0d6868c7794382cfc073f06c533e30e5579d8a0e49750e931328b9330cf43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b87e5e6d-be8c-0763-acdf-903d22f3a286`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 426–437.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma comp_id (x y : C) [Closed x] [Closed y] :
    (ρ_ ((ihom x).obj y)).inv ≫ _ ◁ id y ≫ comp x y y = 𝟙 _ := by
  apply uncurry_injective
  rw [uncurry_natural_left, uncurry_natural_left, comp_eq, uncurry_curry, compTranspose_eq,
    associator_inv_naturality_right_assoc, ← rightUnitor_tensor_inv_assoc,
    whisker_exchange_assoc, ← rightUnitor_inv_naturality_assoc, ← uncurry_id_eq_ev y y]
  simp only [Functor.id_obj]
  rw [← uncurry_natural_left]
  simp [id_eq, uncurry_id_eq_ev]

/-- Associativity of the enriched structure -/
@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6bf0d6868c7794382cfc073f06c533e30e5579d8a0e49750e931328b9330cf43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6bf0d6868c7794382cfc073f06c533e30e5579d8a0e49750e931328b9330cf43.lean#L426).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `540f74b75972ff6e8f35f4f461607f228aab0651` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
