# XXIsoOfEq_hom_ιTotal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8597fc08-3c32-7c28-7c50-c04d28426aee",
  "kind": "lemma",
  "lexical_name": "XXIsoOfEq_hom_ιTotal",
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
  "slug": "xxisoofeq-hom-total--c112b36f1c71b017ee934699",
  "source": {
    "blob": "37eb229a1df5373418254b4f24b6bc3ab6d18907",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 271,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c112b36f1c71b017ee9346991b5cbe24d8f8af7bc211586e4770c3c8c2f9804f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8597fc08-3c32-7c28-7c50-c04d28426aee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma XXIsoOfEq_hom_ιTotal {x₁ y₁ : I₁} (h₁ : x₁ = y₁) {x₂ y₂ : I₂} (h₂ : x₂ = y₂)
    (i₁₂ : I₁₂) (h : ComplexShape.π c₁ c₂ c₁₂ (y₁, y₂) = i₁₂) :
    (K.XXIsoOfEq _ _ _ h₁ h₂).hom ≫ K.ιTotal c₁₂ y₁ y₂ i₁₂ h =
      K.ιTotal c₁₂ x₁ x₂ i₁₂ (by rw [h₁, h₂, h]) := by
  subst h₁ h₂
  simp

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37eb229a1df5373418254b4f24b6bc3ab6d18907` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
