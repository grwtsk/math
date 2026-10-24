# homCongr_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "91d49e51106a9eb55795b5813e783bb4d7ef7ce0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 174,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/408fe655292caf72e43d0171e01bfbfa29b5568e4d6240cf171e6bca4b851fa9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:53c587f6-a6f8-2f68-6460-0ff96371b55a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c1264636-301e-492f-2cb5-b8ad26d653d2",
  "kind": "theorem",
  "lexical_name": "homCongr_symm_apply",
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
  "slug": "homcongr-symm-apply--cc3872458da080a1b131a52c",
  "source": {
    "blob": "91d49e51106a9eb55795b5813e783bb4d7ef7ce0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 174,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant408fe655292caf72e43d0171e01bfbfa29b5568e4d6240cf171e6bca4b851fa9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc3872458da080a1b131a52c886c2004800931da0194b9a46f61c88b4464050a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant408fe655292caf72e43d0171e01bfbfa29b5568e4d6240cf171e6bca4b851fa9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1264636-301e-492f-2cb5-b8ad26d653d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem homCongr_symm_apply (k : Type*) {C : Type*} [Category C] [Semiring k] [Preadditive C]
    [Linear k C] {X Y W Z : C} (f₁ : X ≅ Y) (f₂ : W ≅ Z) (f : Y ⟶ Z) :
    (homCongr k f₁ f₂).symm f = f₁.hom ≫ f ≫ f₂.inv :=
  rfl
#align category_theory.linear.hom_congr_symm_apply CategoryTheory.Linear.homCongr_symm_apply

end

section

variable {S : Type w} [CommSemiring S] [Linear S C]

/-- Composition as a bilinear map. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant408fe655292caf72e43d0171e01bfbfa29b5568e4d6240cf171e6bca4b851fa9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant408fe655292caf72e43d0171e01bfbfa29b5568e4d6240cf171e6bca4b851fa9.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91d49e51106a9eb55795b5813e783bb4d7ef7ce0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
