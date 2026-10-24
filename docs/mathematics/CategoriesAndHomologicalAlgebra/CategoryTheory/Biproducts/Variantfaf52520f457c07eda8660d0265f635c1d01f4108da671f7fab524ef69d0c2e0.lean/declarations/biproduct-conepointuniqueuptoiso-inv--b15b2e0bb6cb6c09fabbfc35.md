# biproduct.conePointUniqueUpToIso_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "520e0a6bd933273556e0ad716338480eeb0a6463",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 997,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fa/faf52520f457c07eda8660d0265f635c1d01f4108da671f7fab524ef69d0c2e0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8c20f5c9-0669-7917-c85d-323d2e95bf90",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:342c3107-3c17-0c93-e096-98250e3a308e",
  "kind": "theorem",
  "lexical_name": "biproduct.conePointUniqueUpToIso_inv",
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
  "slug": "biproduct-conepointuniqueuptoiso-inv--b15b2e0bb6cb6c09fabbfc35",
  "source": {
    "blob": "520e0a6bd933273556e0ad716338480eeb0a6463",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1009,
    "line": 997,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantfaf52520f457c07eda8660d0265f635c1d01f4108da671f7fab524ef69d0c2e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b15b2e0bb6cb6c09fabbfc35b46b0c450e74e8f33ddbea3df9c1f4232bca66f7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantfaf52520f457c07eda8660d0265f635c1d01f4108da671f7fab524ef69d0c2e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:342c3107-3c17-0c93-e096-98250e3a308e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 997–1009.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem biproduct.conePointUniqueUpToIso_inv (f : J → C) [HasBiproduct f] {b : Bicone f}
    (hb : b.IsBilimit) :
    (hb.isLimit.conePointUniqueUpToIso (biproduct.isLimit _)).inv = biproduct.desc b.ι := by
  refine' biproduct.hom_ext' _ _ fun j => hb.isLimit.hom_ext fun j' => _
  rw [Category.assoc, IsLimit.conePointUniqueUpToIso_inv_comp, Bicone.toCone_π_app,
    biproduct.bicone_π, biproduct.ι_desc, biproduct.ι_π, b.toCone_π_app, b.ι_π]
#align category_theory.limits.biproduct.cone_point_unique_up_to_iso_inv CategoryTheory.Limits.biproduct.conePointUniqueUpToIso_inv

/-- Biproducts are unique up to isomorphism. This already follows because bilimits are limits,
    but in the case of biproducts we can give an isomorphism with particularly nice definitional
    properties, namely that `biproduct.lift b.π` and `biproduct.desc b.ι` are inverses of each
    other. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantfaf52520f457c07eda8660d0265f635c1d01f4108da671f7fab524ef69d0c2e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantfaf52520f457c07eda8660d0265f635c1d01f4108da671f7fab524ef69d0c2e0.lean#L997).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `520e0a6bd933273556e0ad716338480eeb0a6463` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
