# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:63e33df2efc033eb671e44e82ef13dd5d3bcfee23d7942dda0cb2f2e327508e7",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--e99f2c5aa783bd2e79ea3ad8",
  "source": {
    "blob": "ff4c6c50f53b542bc1ffe0c4c82615ba208a743c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 101,
    "path": "GRWTSK/Algebra/LinearAlgebra/ModuleCat/Variant8bea8702a0e85ae3a9e1e8bd65d9c681d2ba1a7271d9c92b3ba99bd9900c82be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e99f2c5aa783bd2e79ea3ad81dff95392ba63399c747d750d2dc75be9f217b2e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ModuleCat/Variant8bea8702a0e85ae3a9e1e8bd65d9c681d2ba1a7271d9c92b3ba99bd9900c82be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:63e33df2efc033eb671e44e82ef13dd5d3bcfee23d7942dda0cb2f2e327508e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (f g : C ⟶ D) (h : Homotopy f g) (i : ι) :
    (homologyFunctor (ModuleCat.{u} R) c i).map f =
      (homologyFunctor (ModuleCat.{u} R) c i).map g := by
  -- To check that two morphisms out of a homology group agree, it suffices to check on cycles:
  apply homology_ext
  intro x
  simp only [homologyFunctor_map]
  erw [homology.π_map_apply, homology.π_map_apply]
  -- To check that two elements are equal mod boundaries, it suffices to exhibit a boundary:
  refine' cokernel_π_imageSubobject_ext _ _ ((toPrev i h.hom) x.1) _
  -- Moreover, to check that two cycles are equal, it suffices to check their underlying elements:
  ext
  erw [map_add, CategoryTheory.Limits.kernelSubobjectMap_arrow_apply,
    CategoryTheory.Limits.kernelSubobjectMap_arrow_apply,
    ModuleCat.toKernelSubobject_arrow, imageToKernel_arrow_apply, imageSubobject_arrow_comp_apply]
  rw [Hom.sqFrom_left, Hom.sqFrom_left, h.comm i, LinearMap.add_apply,
    LinearMap.add_apply, prevD_eq_toPrev_dTo, dNext_eq_dFrom_fromNext, comp_apply, comp_apply,
    x.2, map_zero]
  dsimp
  abel

end ModuleCat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ModuleCat/Variant8bea8702a0e85ae3a9e1e8bd65d9c681d2ba1a7271d9c92b3ba99bd9900c82be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ModuleCat/Variant8bea8702a0e85ae3a9e1e8bd65d9c681d2ba1a7271d9c92b3ba99bd9900c82be.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff4c6c50f53b542bc1ffe0c4c82615ba208a743c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
