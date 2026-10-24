# kernel_map_comp_preserves_kernel_iso_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9eedd236-f182-2dbe-8b0d-44a0ab74d56d",
  "kind": "theorem",
  "lexical_name": "kernel_map_comp_preserves_kernel_iso_inv",
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
  "slug": "kernel-map-comp-preserves-kernel-iso-inv--d2f714e3ec672600bd446a58",
  "source": {
    "blob": "91f7a690b69da524326df96630e8f28c2bd96257",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 155,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant88ad562fc2c546a5e761561a8c5f70e63292fee67aac85c7c5c21432f400017a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2f714e3ec672600bd446a582e472d6f44a432e170df701208506ded6d088283",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant88ad562fc2c546a5e761561a8c5f70e63292fee67aac85c7c5c21432f400017a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9eedd236-f182-2dbe-8b0d-44a0ab74d56d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kernel_map_comp_preserves_kernel_iso_inv {X' Y' : C} (g : X' ⟶ Y') [HasKernel g]
    [HasKernel (G.map g)] [PreservesLimit (parallelPair g 0) G] (p : X ⟶ X') (q : Y ⟶ Y')
    (hpq : f ≫ q = p ≫ g) :
    kernel.map (G.map f) (G.map g) (G.map p) (G.map q) (by rw [← G.map_comp, hpq, G.map_comp]) ≫
        (PreservesKernel.iso G _).inv =
      (PreservesKernel.iso G _).inv ≫ G.map (kernel.map f g p q hpq) := by
  rw [Iso.comp_inv_eq, Category.assoc, PreservesKernel.iso_hom, Iso.eq_inv_comp,
    PreservesKernel.iso_hom, kernelComparison_comp_kernel_map]

end Kernels

namespace CokernelCofork

variable {X Y : C} {f : X ⟶ Y} (c : CokernelCofork f)
  (G : C ⥤ D) [Functor.PreservesZeroMorphisms G]

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant88ad562fc2c546a5e761561a8c5f70e63292fee67aac85c7c5c21432f400017a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant88ad562fc2c546a5e761561a8c5f70e63292fee67aac85c7c5c21432f400017a.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91f7a690b69da524326df96630e8f28c2bd96257` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
