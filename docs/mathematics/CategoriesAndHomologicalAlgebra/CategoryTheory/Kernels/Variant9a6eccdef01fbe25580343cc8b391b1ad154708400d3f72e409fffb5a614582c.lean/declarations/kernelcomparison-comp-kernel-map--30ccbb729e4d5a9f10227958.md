# kernelComparison_comp_kernel_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "14ea1bb8498680e5427f46c65769d0a28b62af6a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1208,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9a6eccdef01fbe25580343cc8b391b1ad154708400d3f72e409fffb5a614582c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aab8f536-968b-936f-f120-adcbb3317570",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fda71d54-f084-5921-deb6-23913ef1e849",
  "kind": "theorem",
  "lexical_name": "kernelComparison_comp_kernel_map",
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
  "slug": "kernelcomparison-comp-kernel-map--30ccbb729e4d5a9f10227958",
  "source": {
    "blob": "14ea1bb8498680e5427f46c65769d0a28b62af6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1218,
    "line": 1208,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a6eccdef01fbe25580343cc8b391b1ad154708400d3f72e409fffb5a614582c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30ccbb729e4d5a9f102279586536e65f5a62a6e1ada2c9f2c7e23bb26c903265",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a6eccdef01fbe25580343cc8b391b1ad154708400d3f72e409fffb5a614582c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fda71d54-f084-5921-deb6-23913ef1e849`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1208–1218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kernelComparison_comp_kernel_map {X' Y' : C} [HasKernel f] [HasKernel (G.map f)]
    (g : X' ⟶ Y') [HasKernel g] [HasKernel (G.map g)] (p : X ⟶ X') (q : Y ⟶ Y')
    (hpq : f ≫ q = p ≫ g) :
    kernelComparison f G ≫
        kernel.map (G.map f) (G.map g) (G.map p) (G.map q) (by rw [← G.map_comp, hpq, G.map_comp]) =
      G.map (kernel.map f g p q hpq) ≫ kernelComparison g G :=
  kernel.lift_map _ _ (by rw [← G.map_comp, kernel.condition, G.map_zero]) _ _
    (by rw [← G.map_comp, kernel.condition, G.map_zero]) _ _ _
    (by simp only [← G.map_comp]; exact G.congr_map (kernel.lift_ι _ _ _).symm) _

/-- The comparison morphism for the cokernel of `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a6eccdef01fbe25580343cc8b391b1ad154708400d3f72e409fffb5a614582c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a6eccdef01fbe25580343cc8b391b1ad154708400d3f72e409fffb5a614582c.lean#L1208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14ea1bb8498680e5427f46c65769d0a28b62af6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
