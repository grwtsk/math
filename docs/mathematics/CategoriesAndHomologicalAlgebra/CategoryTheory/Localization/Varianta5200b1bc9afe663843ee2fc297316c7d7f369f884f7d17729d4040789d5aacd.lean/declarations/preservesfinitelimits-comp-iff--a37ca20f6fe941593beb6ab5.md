# preservesFiniteLimits_comp_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "85e94ad0bc3ac78a8786f5199047bb0146874193",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 454,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a5200b1bc9afe663843ee2fc297316c7d7f369f884f7d17729d4040789d5aacd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1a1e2cd8-637b-8cff-02c8-7f77085695d7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1fd97454-da4b-3120-0eac-3d55c123227e",
  "kind": "lemma",
  "lexical_name": "preservesFiniteLimits_comp_iff",
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
  "slug": "preservesfinitelimits-comp-iff--a37ca20f6fe941593beb6ab5",
  "source": {
    "blob": "85e94ad0bc3ac78a8786f5199047bb0146874193",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 475,
    "line": 454,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Varianta5200b1bc9afe663843ee2fc297316c7d7f369f884f7d17729d4040789d5aacd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a37ca20f6fe941593beb6ab5f97759c0229c34233b44351365979e32f57ee728",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Varianta5200b1bc9afe663843ee2fc297316c7d7f369f884f7d17729d4040789d5aacd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fd97454-da4b-3120-0eac-3d55c123227e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 454–475.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preservesFiniteLimits_comp_iff :
    PreservesFiniteLimits (L ⋙ G) ↔ PreservesFiniteLimits G := by
  let := abelian L P
  have := preservesFiniteLimits L P
  refine ⟨fun _ ↦ ?_, fun _ ↦ comp_preservesFiniteLimits _ _⟩
  have := (Localization.functor_additive_iff L P.isoModSerre G).mpr
    (L ⋙ G).additive_of_preserves_binary_products
  refine ((Functor.preservesFiniteLimits_tfae G).out 3 4).mp (fun _ _ f ↦ ?_)
  obtain ⟨f', ⟨iso⟩⟩ :=
    (Localization.essSurj_mapArrow L P.isoModSerre).mem_essImage (Arrow.mk f)
  have : PreservesLimit (parallelPair (L.map f'.hom) 0) G :=
    preservesLimit_of_preserves_limit_cone
      (KernelFork.isLimitMapConeEquiv _ _
        (isLimitOfPreserves L (kernelIsKernel f'.hom)))
          ((KernelFork.isLimitMapConeEquiv _ G).symm
            (KernelFork.isLimitMapConeEquiv _ (L ⋙ G)
              (isLimitOfPreserves (L ⋙ G) (kernelIsKernel f'.hom))))
  exact preservesLimit_of_iso_diagram G
    (show parallelPair (L.map f'.hom) 0 ≅ parallelPair f 0 from
      parallelPair.ext (Arrow.leftFunc.mapIso iso) (Arrow.rightFunc.mapIso iso))

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Varianta5200b1bc9afe663843ee2fc297316c7d7f369f884f7d17729d4040789d5aacd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Varianta5200b1bc9afe663843ee2fc297316c7d7f369f884f7d17729d4040789d5aacd.lean#L454).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85e94ad0bc3ac78a8786f5199047bb0146874193` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
