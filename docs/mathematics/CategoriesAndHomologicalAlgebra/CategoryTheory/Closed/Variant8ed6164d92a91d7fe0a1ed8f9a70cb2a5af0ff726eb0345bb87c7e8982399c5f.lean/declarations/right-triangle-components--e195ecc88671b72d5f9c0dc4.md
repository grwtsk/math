# right_triangle_components

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e53d5f616b9fea9b05cd15695d5346cdf3e4d928",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 280,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8e/8ed6164d92a91d7fe0a1ed8f9a70cb2a5af0ff726eb0345bb87c7e8982399c5f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b1ed2583-aec9-b1ac-9d98-e5489b0557af",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:67425dbd-1bc0-53c0-f311-4b8b8a8c04ce",
  "kind": "theorem",
  "lexical_name": "right_triangle_components",
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
  "slug": "right-triangle-components--e195ecc88671b72d5f9c0dc4",
  "source": {
    "blob": "e53d5f616b9fea9b05cd15695d5346cdf3e4d928",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 280,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Closed/Variant8ed6164d92a91d7fe0a1ed8f9a70cb2a5af0ff726eb0345bb87c7e8982399c5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e195ecc88671b72d5f9c0dc41e6b500e875541896c4b4ad8d33983efecaf0230",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Closed/Variant8ed6164d92a91d7fe0a1ed8f9a70cb2a5af0ff726eb0345bb87c7e8982399c5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67425dbd-1bc0-53c0-f311-4b8b8a8c04ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem right_triangle_components (G : C ⥤ V) [DayConvolution F H]
    (ℌ : DayConvolutionInternalHom F G H) {H' : C ⥤ V}
    (ℌ' : DayConvolutionInternalHom F (F ⊛ H) H') :
    ℌ'.coev_app ≫ ℌ'.map ℌ.ev_app ℌ = 𝟙 H := by
  ext c
  apply Wedge.IsLimit.hom_ext <| ℌ.isLimitWedge c
  intro j
  apply MonoidalClosed.uncurry_injective
  simp [MonoidalClosed.uncurry_natural_right]

end DayConvolutionInternalHom

end

end CategoryTheory.MonoidalCategory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Closed/Variant8ed6164d92a91d7fe0a1ed8f9a70cb2a5af0ff726eb0345bb87c7e8982399c5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Closed/Variant8ed6164d92a91d7fe0a1ed8f9a70cb2a5af0ff726eb0345bb87c7e8982399c5f.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e53d5f616b9fea9b05cd15695d5346cdf3e4d928` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
