# shiftFunctorAdd_inv_app_obj_of_induced

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec2c09fd-c4f1-0a94-dde8-786c6f46f3de",
  "kind": "lemma",
  "lexical_name": "shiftFunctorAdd_inv_app_obj_of_induced",
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
  "slug": "shiftfunctoradd-inv-app-obj-of-induced--693c62a5bdcc977d69b52c03",
  "source": {
    "blob": "5f2ba1a91580fe738f211a36d57160ad7edc127f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 211,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Variantd879cccd4f7a450fd294c0cf8f612344e102938f81bb9249ba3cf83cfb95d5d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:693c62a5bdcc977d69b52c0368bdc2a6d38ebe64d43ca0e899ebf1ae3d9053fc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Variantd879cccd4f7a450fd294c0cf8f612344e102938f81bb9249ba3cf83cfb95d5d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec2c09fd-c4f1-0a94-dde8-786c6f46f3de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma shiftFunctorAdd_inv_app_obj_of_induced (a b : A) (X : C) :
    letI := HasShift.induced F A s i
    (shiftFunctorAdd D a b).inv.app (F.obj X) =
      (s b).map ((i a).hom.app X) ≫
      (i b).hom.app ((shiftFunctor C a).obj X) ≫
      F.map ((shiftFunctorAdd C a b).inv.app X) ≫
      (i (a + b)).inv.app X := by
  simp only [ShiftMkCore.shiftFunctorAdd_eq, HasShift.Induced.add_inv_app_obj]

variable (A)

set_option backward.defeqAttrib.useBackward true in
/-- When the target category of a functor `F : C ⥤ D` is equipped with
the induced shift, this is the compatibility of `F` with the shifts on
the categories `C` and `D`. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Variantd879cccd4f7a450fd294c0cf8f612344e102938f81bb9249ba3cf83cfb95d5d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Variantd879cccd4f7a450fd294c0cf8f612344e102938f81bb9249ba3cf83cfb95d5d3.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f2ba1a91580fe738f211a36d57160ad7edc127f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
