# colim.exact_mapShortComplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cedfdb4131fd9b773fd5bd46049a97459a83de28",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 121,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/373a5f1afa07fbcc5bb02630f82c34b7d332e58eab80cc8dea7abc9e380a3c17.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6235dfee-ec0d-77fd-204b-f338b7d494e4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4378b074-aa43-b9ef-190e-9ecb07d70cf5",
  "kind": "lemma",
  "lexical_name": "colim.exact_mapShortComplex",
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
  "slug": "colim-exact-mapshortcomplex--0caa6f523c4d3cc5a21c799b",
  "source": {
    "blob": "cedfdb4131fd9b773fd5bd46049a97459a83de28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 121,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variant373a5f1afa07fbcc5bb02630f82c34b7d332e58eab80cc8dea7abc9e380a3c17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0caa6f523c4d3cc5a21c799bdcf30dc78b5f8ebafcf66c8fcedf1d8d6c5f89ea",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variant373a5f1afa07fbcc5bb02630f82c34b7d332e58eab80cc8dea7abc9e380a3c17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4378b074-aa43-b9ef-190e-9ecb07d70cf5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma colim.exact_mapShortComplex :
    (mapShortComplex S hc₁ c₂ c₃ f g hf hg).Exact := by
  refine (ShortComplex.exact_iff_of_iso ?_).2 (hS.map colim)
  refine ShortComplex.isoMk
    (IsColimit.coconePointUniqueUpToIso hc₁ (colimit.isColimit _))
    (IsColimit.coconePointUniqueUpToIso hc₂ (colimit.isColimit _))
    (IsColimit.coconePointUniqueUpToIso hc₃ (colimit.isColimit _))
    (hc₁.hom_ext (fun j ↦ ?_)) (hc₂.hom_ext (fun j ↦ ?_))
  · dsimp
    rw [IsColimit.comp_coconePointUniqueUpToIso_hom_assoc,
      colimit.cocone_ι, ι_colimMap, reassoc_of% (hf j),
      IsColimit.comp_coconePointUniqueUpToIso_hom, colimit.cocone_ι]
  · dsimp
    rw [IsColimit.comp_coconePointUniqueUpToIso_hom_assoc,
      colimit.cocone_ι, ι_colimMap, reassoc_of% (hg j),
      IsColimit.comp_coconePointUniqueUpToIso_hom, colimit.cocone_ι]

end

end Limits

namespace MorphismProperty

open Limits

open MorphismProperty

variable (J C) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variant373a5f1afa07fbcc5bb02630f82c34b7d332e58eab80cc8dea7abc9e380a3c17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variant373a5f1afa07fbcc5bb02630f82c34b7d332e58eab80cc8dea7abc9e380a3c17.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cedfdb4131fd9b773fd5bd46049a97459a83de28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
