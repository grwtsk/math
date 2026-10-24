# epi_iff_exact_zero_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1f56be7810bc13a8b9f04cc90d1d90c0c3163f39",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 333,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0b/0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:adebdc3a-5183-004d-2cc2-dbb6395b9ae3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0298a325-7a0b-29b9-9f45-3bc37013337c",
  "kind": "theorem",
  "lexical_name": "epi_iff_exact_zero_right",
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
  "slug": "epi-iff-exact-zero-right--f8887630f83678fd8bdac129",
  "source": {
    "blob": "1f56be7810bc13a8b9f04cc90d1d90c0c3163f39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 333,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8887630f83678fd8bdac12907084e42b354a018a318e54eb4452ad44b7cccd3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0298a325-7a0b-29b9-9f45-3bc37013337c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem epi_iff_exact_zero_right [HasEqualizers V] {A B : V} (f : A ⟶ B) :
    Epi f ↔ Exact f (0 : B ⟶ 0) :=
  ⟨fun h => exact_epi_zero _, fun h => by
    have e₁ := h.epi
    rw [imageToKernel_zero_right] at e₁
    have e₂ : Epi (((imageSubobject f).arrow ≫ inv (kernelSubobject 0).arrow) ≫
          (kernelSubobject 0).arrow) := @epi_comp _ _ _ _ _ _ e₁ _ _
    rw [Category.assoc, IsIso.inv_hom_id, Category.comp_id] at e₂
    rw [← imageSubobject_arrow] at e₂
    haveI : Epi (image.ι f) := epi_of_epi (imageSubobjectIso f).hom (image.ι f)
    apply epi_of_epi_image⟩
#align category_theory.epi_iff_exact_zero_right CategoryTheory.epi_iff_exact_zero_right

end

end

namespace Functor

variable [HasZeroMorphisms V] [HasKernels V] {W : Type u₂} [Category.{v₂} W]

variable [HasImages W] [HasZeroMorphisms W] [HasKernels W]

/-- A functor reflects exact sequences if any composable pair of morphisms that is mapped to an
    exact pair is itself exact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant0b7773dc22191b9a6492d16dc65b56e33dbca5215ce9ec679a9c83dafecd8c06.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f56be7810bc13a8b9f04cc90d1d90c0c3163f39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
