# π'_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d75b716963237edb952d3ce9629e60ec47e2079f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 204,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5d96d6fd1cc7330321e10759a8914cf43827e40f3b086848814f3d913e360a72.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6530f92b-1702-3eee-4353-3779e8325509",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c809f9d9-a6c5-d415-af0a-208cf31121f1",
  "kind": "theorem",
  "lexical_name": "π'_map",
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
  "slug": "map--61c8a8e6ce2d972cc6b7bedb",
  "source": {
    "blob": "d75b716963237edb952d3ce9629e60ec47e2079f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 204,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant5d96d6fd1cc7330321e10759a8914cf43827e40f3b086848814f3d913e360a72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61c8a8e6ce2d972cc6b7bedbae5f7fd3a2073fbf6f7bdff00880bb5e2eb7bf0d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant5d96d6fd1cc7330321e10759a8914cf43827e40f3b086848814f3d913e360a72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c809f9d9-a6c5-d415-af0a-208cf31121f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem π'_map (α β h) : π' _ _ _ ≫ map w w' α β h =
    kernel.map _ _ α.right β.right (by simp [h, β.w.symm]) ≫ π' _ _ _ := by
  apply_fun fun e => (kernelSubobjectIso _).hom ≫ e
  swap
  · intro i j hh
    apply_fun fun e => (kernelSubobjectIso _).inv ≫ e at hh
    simpa using hh
  dsimp [map]
  simp only [π'_eq_π_assoc]
  dsimp [π]
  simp only [cokernel.π_desc]
  rw [← Iso.inv_comp_eq, ← Category.assoc]
  have :
    (kernelSubobjectIso g).inv ≫ kernelSubobjectMap β =
      kernel.map _ _ β.left β.right β.w.symm ≫ (kernelSubobjectIso _).inv := by
    rw [Iso.inv_comp_eq, ← Category.assoc, Iso.eq_comp_inv]
    ext
    dsimp
    simp
  rw [this]
  simp only [Category.assoc]
  dsimp [π', homologyIsoCokernelLift]
  simp only [cokernelIsoOfEq_inv_comp_desc, cokernel.π_desc_assoc]
  congr 1
  · congr
    exact h.symm
  · rw [Iso.inv_comp_eq, ← Category.assoc, Iso.eq_comp_inv]
    dsimp [homologyIsoCokernelImageToKernel']
    simp
#align homology.π'_map homology.π'_map

-- Porting note: need to fill in f,g,f',g' in the next few results or time out
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant5d96d6fd1cc7330321e10759a8914cf43827e40f3b086848814f3d913e360a72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant5d96d6fd1cc7330321e10759a8914cf43827e40f3b086848814f3d913e360a72.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d75b716963237edb952d3ce9629e60ec47e2079f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
