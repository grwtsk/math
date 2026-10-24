# comp_d₀₁_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "023ea16e8534ddc5d6d3bafccea77930a8b78afe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 158,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32c37df86754e60d015037a2c7a14df9cd443df67c1831734c7e0d8824e880b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f29e06c3-9cc0-5072-1d80-0f87e4183a6d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:139761e3-7c72-ddb0-eeed-8c7ae1933803",
  "kind": "theorem",
  "lexical_name": "comp_d₀₁_eq",
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
  "slug": "comp-d-eq--f6dc5e7e96cfb17e9e33d853",
  "source": {
    "blob": "023ea16e8534ddc5d6d3bafccea77930a8b78afe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 158,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/LowDegree/Variant32c37df86754e60d015037a2c7a14df9cd443df67c1831734c7e0d8824e880b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6dc5e7e96cfb17e9e33d8531b0651d57a0cb7abf02ab95356df87484a4c3d8f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/LowDegree/Variant32c37df86754e60d015037a2c7a14df9cd443df67c1831734c7e0d8824e880b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:139761e3-7c72-ddb0-eeed-8c7ae1933803`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_d₀₁_eq :
    (cochainsIso₀ A).hom ≫ d₀₁ A =
      (inhomogeneousCochains A).d 0 1 ≫ (cochainsIso₁ A).hom := by
  ext x a y
  simp only [cochainsIso₀, LinearEquiv.toModuleIso_hom, ModuleCat.hom_comp,
    ConcreteCategory.hom_ofHom, LinearMap.coe_comp, LinearEquiv.coe_coe,
    LinearEquiv.funUnique_apply, LinearMap.coe_single, Function.comp_apply, Function.eval,
    d₀₁_hom_apply, zero_add, ↓reduceDIte, Nat.reduceAdd, eqToHom_refl, Category.comp_id,
    cochainsIso₁, Iso.symm_hom, LinearEquiv.toModuleIso_inv, LinearEquiv.funCongrLeft_symm,
    LinearEquiv.funCongrLeft_apply, Equiv.funUnique_symm_apply, LinearMap.funLeft_apply,
    inhomogeneousCochains.d_hom_apply, Fin.isValue, uniqueElim_const, Finset.univ_unique,
    Fin.default_eq_zero, Fin.val_eq_zero, pow_one, neg_smul, one_smul, Finset.sum_neg_distrib,
    Finset.sum_singleton, ← sub_eq_add_neg, CochainComplex.of.d]
  rw [← Subsingleton.elim (α := Fin 0 → G) default (fun i ↦ y), Subsingleton.elim
    (Fin.contractNth 0 _) default, Pi.default_def]

-- @[reassoc (attr := simp), elementwise (attr := simp)]
@[reassoc, elementwise]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/LowDegree/Variant32c37df86754e60d015037a2c7a14df9cd443df67c1831734c7e0d8824e880b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/LowDegree/Variant32c37df86754e60d015037a2c7a14df9cd443df67c1831734c7e0d8824e880b8.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `023ea16e8534ddc5d6d3bafccea77930a8b78afe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
