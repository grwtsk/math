# isSheaf_iff_of_isGeneratedByOneHypercovers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9ea697a4-3895-d58b-0442-5fdc3e5299c0",
  "kind": "lemma",
  "lexical_name": "isSheaf_iff_of_isGeneratedByOneHypercovers",
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
  "slug": "issheaf-iff-of-isgeneratedbyonehypercovers--88d05dda5297e494ca857fcb",
  "source": {
    "blob": "e1b37ef0bd3f976d7017ab090a0594e1e988b8e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 168,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafOneHypercover/Variantf0413b0b07d7c21c5f776b469e89e02841d82044f24efb44cc05b1e1504b25f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88d05dda5297e494ca857fcb207c192b3dbbcdabf515954327e91545a4fd0880",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafOneHypercover/Variantf0413b0b07d7c21c5f776b469e89e02841d82044f24efb44cc05b1e1504b25f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ea697a4-3895-d58b-0442-5fdc3e5299c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isSheaf_iff_of_isGeneratedByOneHypercovers
    [GrothendieckTopology.IsGeneratedByOneHypercovers.{w} J] (P : Cᵒᵖ ⥤ A) :
    IsSheaf J P ↔ ∀ ⦃X : C⦄ (E : GrothendieckTopology.OneHypercover.{w} J X),
        Nonempty (IsLimit (E.multifork P)) := by
  simpa using GrothendieckTopology.OneHypercoverFamily.isSheaf_iff.{w} ⊤ P

end Presheaf

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafOneHypercover/Variantf0413b0b07d7c21c5f776b469e89e02841d82044f24efb44cc05b1e1504b25f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafOneHypercover/Variantf0413b0b07d7c21c5f776b469e89e02841d82044f24efb44cc05b1e1504b25f7.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1b37ef0bd3f976d7017ab090a0594e1e988b8e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
