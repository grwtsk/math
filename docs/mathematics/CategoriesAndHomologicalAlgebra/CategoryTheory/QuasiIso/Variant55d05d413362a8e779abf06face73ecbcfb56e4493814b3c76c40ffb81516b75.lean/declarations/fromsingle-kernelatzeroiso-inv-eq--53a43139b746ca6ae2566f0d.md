# fromSingle₀KernelAtZeroIso_inv_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f9303af-9c3f-65cb-5141-41c3019d14ab",
  "kind": "theorem",
  "lexical_name": "fromSingle₀KernelAtZeroIso_inv_eq",
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
  "slug": "fromsingle-kernelatzeroiso-inv-eq--53a43139b746ca6ae2566f0d",
  "source": {
    "blob": "183336563c2f76d319f6532ded3662e1357a2a21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 169,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant55d05d413362a8e779abf06face73ecbcfb56e4493814b3c76c40ffb81516b75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53a43139b746ca6ae2566f0d4e96eae3ea3d3257c24622dc815b9492efe3ac33",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant55d05d413362a8e779abf06face73ecbcfb56e4493814b3c76c40ffb81516b75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f9303af-9c3f-65cb-5141-41c3019d14ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fromSingle₀KernelAtZeroIso_inv_eq [hf : QuasiIso f] :
    f.fromSingle₀KernelAtZeroIso.inv =
      kernel.lift (X.d 0 1) (f.f 0) (by rw [f.2 0 1 rfl]; exact zero_comp) := by
  ext
  dsimp only [fromSingle₀KernelAtZeroIso, CochainComplex.homologyZeroIso, homologyOfZeroLeft,
    homology.mapIso, CochainComplex.homologyFunctor0Single₀, kernel.map]
  simp only [Iso.trans_inv, Iso.app_inv, Iso.symm_inv, Category.assoc, equalizer_as_kernel,
    kernel.lift_ι]
  dsimp [asIso]
  simp only [Category.assoc, homology.π_map, cokernelZeroIsoTarget_hom,
    cokernelIsoOfEq_hom_comp_desc, kernelSubobject_arrow, homology.π_map_assoc, IsIso.inv_comp_eq]
  simp [homology.π, kernelSubobjectMap_comp, Iso.refl_hom (X.X 0), Category.comp_id]
#align homological_complex.hom.from_single₀_kernel_at_zero_iso_inv_eq HomologicalComplex.Hom.fromSingle₀KernelAtZeroIso_inv_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant55d05d413362a8e779abf06face73ecbcfb56e4493814b3c76c40ffb81516b75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant55d05d413362a8e779abf06face73ecbcfb56e4493814b3c76c40ffb81516b75.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `183336563c2f76d319f6532ded3662e1357a2a21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
