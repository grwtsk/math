# biproduct.isoCoproduct_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b74c015c-9695-552a-9690-5168adde127e",
  "kind": "theorem",
  "lexical_name": "biproduct.isoCoproduct_hom",
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
  "slug": "biproduct-isocoproduct-hom--b85b0d12f7f0b15fff5b0378",
  "source": {
    "blob": "d01bcdd6cfe52972b0f74ead8243f88dc3db82fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 542,
    "line": 536,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantabafba1b88f58e1aa3b724e469c4a766a02d5af807f920e717a4a77ea31c681e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b85b0d12f7f0b15fff5b0378e6b6282800a7b4fc192ab4a6663d9aff05687104",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantabafba1b88f58e1aa3b724e469c4a766a02d5af807f920e717a4a77ea31c681e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b74c015c-9695-552a-9690-5168adde127e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 536–542.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem biproduct.isoCoproduct_hom {f : J → C} [HasBiproduct f] :
    (biproduct.isoCoproduct f).hom = biproduct.desc (Sigma.ι f) :=
  biproduct.hom_ext' _ _ fun j => by simp [← Iso.eq_comp_inv]

/-- If a category has biproducts of a shape `J`, its `colim` and `lim` functor on diagrams over `J`
are isomorphic. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantabafba1b88f58e1aa3b724e469c4a766a02d5af807f920e717a4a77ea31c681e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantabafba1b88f58e1aa3b724e469c4a766a02d5af807f920e717a4a77ea31c681e.lean#L536).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d01bcdd6cfe52972b0f74ead8243f88dc3db82fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
