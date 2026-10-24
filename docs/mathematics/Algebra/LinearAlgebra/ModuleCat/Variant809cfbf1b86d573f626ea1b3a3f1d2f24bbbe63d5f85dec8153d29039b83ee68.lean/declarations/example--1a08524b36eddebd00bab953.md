# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3809076646bef235faf0f7683f97021ec9b8bc743d0f69ab210d8d40f69c1a25",
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
  "slug": "example--1a08524b36eddebd00bab953",
  "source": {
    "blob": "c79340f55c336fc38919aaa378f7869fa6cbdaa0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 109,
    "path": "GRWTSK/Algebra/LinearAlgebra/ModuleCat/Variant809cfbf1b86d573f626ea1b3a3f1d2f24bbbe63d5f85dec8153d29039b83ee68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1a08524b36eddebd00bab953d53146dc781adccc6e9192340f8f684e5061ce99",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ModuleCat/Variant809cfbf1b86d573f626ea1b3a3f1d2f24bbbe63d5f85dec8153d29039b83ee68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3809076646bef235faf0f7683f97021ec9b8bc743d0f69ab210d8d40f69c1a25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–130.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ModuleCat/Variant809cfbf1b86d573f626ea1b3a3f1d2f24bbbe63d5f85dec8153d29039b83ee68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ModuleCat/Variant809cfbf1b86d573f626ea1b3a3f1d2f24bbbe63d5f85dec8153d29039b83ee68.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c79340f55c336fc38919aaa378f7869fa6cbdaa0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
