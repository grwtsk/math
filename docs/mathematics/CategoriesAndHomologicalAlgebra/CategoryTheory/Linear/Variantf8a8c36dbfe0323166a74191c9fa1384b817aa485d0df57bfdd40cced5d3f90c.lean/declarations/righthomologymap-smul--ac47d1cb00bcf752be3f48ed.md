# rightHomologyMap'_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bffb598da2adc49466d696c633cd230561b96a55",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f8a8c36dbfe0323166a74191c9fa1384b817aa485d0df57bfdd40cced5d3f90c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:26496983-824e-1118-b83e-a5f7b90b472c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eb0255ea-e5d4-fbc9-2622-831ef04c9494",
  "kind": "lemma",
  "lexical_name": "rightHomologyMap'_smul",
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
  "slug": "righthomologymap-smul--ac47d1cb00bcf752be3f48ed",
  "source": {
    "blob": "bffb598da2adc49466d696c633cd230561b96a55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 125,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantf8a8c36dbfe0323166a74191c9fa1384b817aa485d0df57bfdd40cced5d3f90c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac47d1cb00bcf752be3f48ed0f31d4065cfde4c609982e1663f39c84c9884c43",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantf8a8c36dbfe0323166a74191c9fa1384b817aa485d0df57bfdd40cced5d3f90c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb0255ea-e5d4-fbc9-2622-831ef04c9494`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rightHomologyMap'_smul :
    rightHomologyMap' (a • φ) h₁ h₂ = a • rightHomologyMap' φ h₁ h₂ := by
  have γ : RightHomologyMapData φ h₁ h₂ := default
  simp only [(γ.smul a).rightHomologyMap'_eq, RightHomologyMapData.smul_φH, γ.rightHomologyMap'_eq]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantf8a8c36dbfe0323166a74191c9fa1384b817aa485d0df57bfdd40cced5d3f90c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantf8a8c36dbfe0323166a74191c9fa1384b817aa485d0df57bfdd40cced5d3f90c.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bffb598da2adc49466d696c633cd230561b96a55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
