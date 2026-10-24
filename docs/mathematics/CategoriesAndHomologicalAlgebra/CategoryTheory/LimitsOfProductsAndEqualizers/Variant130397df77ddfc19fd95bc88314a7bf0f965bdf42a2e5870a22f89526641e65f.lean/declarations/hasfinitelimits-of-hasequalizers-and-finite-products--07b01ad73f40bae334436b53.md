# hasFiniteLimits_of_hasEqualizers_and_finite_products

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0b5ba14746f8c2c4f315eebca7b96c0ea756dc3b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 132,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8ff28a1f-fa66-a44e-c2dd-7257241e0163",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4bacb26f-4772-088a-0f55-149290de2550",
  "kind": "theorem",
  "lexical_name": "hasFiniteLimits_of_hasEqualizers_and_finite_products",
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
  "slug": "hasfinitelimits-of-hasequalizers-and-finite-products--07b01ad73f40bae334436b53",
  "source": {
    "blob": "0b5ba14746f8c2c4f315eebca7b96c0ea756dc3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 132,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07b01ad73f40bae334436b53bf4a41b82cb31f052f301157891fe73e8452e657",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4bacb26f-4772-088a-0f55-149290de2550`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasFiniteLimits_of_hasEqualizers_and_finite_products [HasFiniteProducts C]
    [HasEqualizers C] : HasFiniteLimits C where
  out _ := { has_limit := fun F => hasLimit_of_equalizer_and_product F }

variable {D : Type u₂} [Category.{v₂} D]

section

variable [HasLimitsOfShape (Discrete J) C] [HasLimitsOfShape (Discrete (Σ p : J × J, p.1 ⟶ p.2)) C]
  [HasEqualizers C]

variable (G : C ⥤ D) [PreservesLimitsOfShape WalkingParallelPair G]
  -- [PreservesFiniteProducts G]
  [PreservesLimitsOfShape (Discrete.{w} J) G]
  [PreservesLimitsOfShape (Discrete.{w} (Σ p : J × J, p.1 ⟶ p.2)) G]

/-- If a functor preserves equalizers and the appropriate products, it preserves limits. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant130397df77ddfc19fd95bc88314a7bf0f965bdf42a2e5870a22f89526641e65f.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b5ba14746f8c2c4f315eebca7b96c0ea756dc3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
