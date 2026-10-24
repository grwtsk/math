# exists_d_comp_eq_d

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7f3a31b-5d17-cecd-34fb-d849b5fcda21",
  "kind": "theorem",
  "lexical_name": "exists_d_comp_eq_d",
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
  "slug": "exists-d-comp-eq-d--bccc2632d33e083d8e39602f",
  "source": {
    "blob": "7f806eccd20842c40f76ef72f89ec769b8b92dc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 107,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Variantd6077698d001ad7d7d13a38f54061ac1eacab70d4e67fdddf854cf1ac1dd6512.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bccc2632d33e083d8e39602f702e9a194edf0d79ad8a936b1b273e3c2cccf080",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Variantd6077698d001ad7d7d13a38f54061ac1eacab70d4e67fdddf854cf1ac1dd6512.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7f3a31b-5d17-cecd-34fb-d849b5fcda21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_d_comp_eq_d {G : C} (hG : IsSeparator G) {A} (B : C) [Injective B]
    {M : ModuleCat (End G)ᵐᵒᵖ} (g : M ⟶ ModuleCat.of (End G)ᵐᵒᵖ (G ⟶ A)) (hg : Mono g)
    (f : M ⟶ ModuleCat.of (End G)ᵐᵒᵖ (G ⟶ B)) : ∃ (l : A ⟶ B), d g ≫ l = d f := by
  let l₁ : image (d g) ⟶ B := epiDesc (factorThruImage (d g)) (d f) (by
    rw [← kernelFactorThruImage_hom_comp_ι, Category.assoc, kernel_ι_d_comp_d hG _ hg, comp_zero])
  let l₂ : A ⟶ B := Injective.factorThru l₁ (Limits.image.ι (d g))
  refine ⟨l₂, ?_⟩
  simp only [l₂, l₁]
  conv_lhs => congr; rw [← Limits.image.fac (d g)]
  simp [-Limits.image.fac]

end GabrielPopescuAux

open GabrielPopescuAux

set_option backward.isDefEq.respectTransparency false in
/-- Faithfulness follows because `G` is a separator, see
`isSeparator_iff_faithful_preadditiveCoyonedaObj`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Variantd6077698d001ad7d7d13a38f54061ac1eacab70d4e67fdddf854cf1ac1dd6512.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Variantd6077698d001ad7d7d13a38f54061ac1eacab70d4e67fdddf854cf1ac1dd6512.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f806eccd20842c40f76ef72f89ec769b8b92dc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
