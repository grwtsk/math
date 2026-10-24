# HasExactLimitsOfShape.domain_of_functor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c7571fc9bf8e5b629698c7ef419cf64612c16520",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 104,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:821d0288-c48e-1d81-db5f-8efc43c92e7d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:69d54865-7e9c-7f6b-9206-e800da3dcc15",
  "kind": "lemma",
  "lexical_name": "HasExactLimitsOfShape.domain_of_functor",
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
  "slug": "hasexactlimitsofshape-domain-of-functor--835fc1626fe24186a7dd9b27",
  "source": {
    "blob": "c7571fc9bf8e5b629698c7ef419cf64612c16520",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 104,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:835fc1626fe24186a7dd9b27a78b8fc3312199352dc8dc6b1a58569743c3fcce",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69d54865-7e9c-7f6b-9206-e800da3dcc15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma HasExactLimitsOfShape.domain_of_functor {D : Type*} (J : Type*) [Category D] [Category J]
    [HasLimitsOfShape J C] [HasLimitsOfShape J D] [HasExactLimitsOfShape J D]
    (F : C ⥤ D) [PreservesFiniteColimits F] [ReflectsFiniteColimits F] [HasFiniteColimits C]
    [PreservesLimitsOfShape J F] : HasExactLimitsOfShape J C where
  preservesFiniteColimits := { preservesFiniteColimits I := { preservesColimit {G} := {
    preserves {c} hc := by
      constructor
      apply isColimitOfReflects F
      refine (IsColimit.equivOfNatIsoOfIso (isoWhiskerLeft G (preservesLimitNatIso F).symm)
        ((_ ⋙ lim).mapCocone c) _ ?_) (isColimitOfPreserves _ hc)
      refine Cocones.ext ((preservesLimitNatIso F).symm.app _) fun i ↦ ?_
      simp only [Functor.comp_obj, lim_obj, Functor.mapCocone_pt, isoWhiskerLeft_inv, Iso.symm_inv,
        Cocones.precompose_obj_pt, whiskeringRight_obj_obj, Functor.const_obj_obj,
        Cocones.precompose_obj_ι, NatTrans.comp_app, whiskerLeft_app, preservesLimitNatIso_hom_app,
        Functor.mapCocone_ι_app, Functor.comp_map, whiskeringRight_obj_map, lim_map, Iso.app_hom,
        Iso.symm_hom, preservesLimitNatIso_inv_app, Category.assoc]
      rw [← Iso.eq_inv_comp]
      exact (preservesLimitNatIso F).inv.naturality _ } } }

/--
Transport a `HasExactColimitsOfShape` along an equivalence of the shape.

Note: When `C` has finite limits, this lemma holds with the equivalence replaced by a final
functor, see `hasExactColimitsOfShape_of_final` below.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7571fc9bf8e5b629698c7ef419cf64612c16520` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
