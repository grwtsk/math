# coequalizerComparison_map_desc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4d936506d9f9eace0673f0cc79aa8ee4d6e85278",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1151,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/3180327028bdcb7562964afd55229b4b86e5639b8d679b1381d4ea5d4709baa2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:87446c2e-3023-18fd-4c8e-60991144de3a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ec29f4c4-e3e8-851d-55e5-dbd8639a7b90",
  "kind": "theorem",
  "lexical_name": "coequalizerComparison_map_desc",
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
  "slug": "coequalizercomparison-map-desc--aae17e8c5d7648dba3bd2e7e",
  "source": {
    "blob": "4d936506d9f9eace0673f0cc79aa8ee4d6e85278",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1163,
    "line": 1151,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant3180327028bdcb7562964afd55229b4b86e5639b8d679b1381d4ea5d4709baa2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aae17e8c5d7648dba3bd2e7e8c1253a72fc39e5eb0049561dbf7da4926a10dd7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant3180327028bdcb7562964afd55229b4b86e5639b8d679b1381d4ea5d4709baa2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec29f4c4-e3e8-851d-55e5-dbd8639a7b90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1151–1163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coequalizerComparison_map_desc [HasCoequalizer f g] [HasCoequalizer (G.map f) (G.map g)]
    {Z : C} {h : Y ⟶ Z} (w : f ≫ h = g ≫ h) :
    coequalizerComparison f g G ≫ G.map (coequalizer.desc h w) =
      coequalizer.desc (G.map h) (by simp only [← G.map_comp, w]) := by
  apply coequalizer.hom_ext
  simp [← G.map_comp]
#align category_theory.limits.coequalizer_comparison_map_desc CategoryTheory.Limits.coequalizerComparison_map_desc

end Comparison

variable (C)

/-- `HasEqualizers` represents a choice of equalizer for every pair of morphisms -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant3180327028bdcb7562964afd55229b4b86e5639b8d679b1381d4ea5d4709baa2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant3180327028bdcb7562964afd55229b4b86e5639b8d679b1381d4ea5d4709baa2.lean#L1151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d936506d9f9eace0673f0cc79aa8ee4d6e85278` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
