# coe_continuousAlternatingMapCongr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "66acc2bc41e4175777a75bc965c24ba9b1722ec1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 387,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/08ea978cd710ef37a6aa6e01b85c8f15f3fd5011bd3539623a4fbeb0cd4d5d87.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:47ac6cb8-4cca-b753-2d9d-aecc60b240c4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:325ba86b-30ab-fa1c-cf92-4d2335d22a61",
  "kind": "lemma",
  "lexical_name": "coe_continuousAlternatingMapCongr",
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
  "slug": "coe-continuousalternatingmapcongr--1b3fb6349d84651f33126f99",
  "source": {
    "blob": "66acc2bc41e4175777a75bc965c24ba9b1722ec1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 387,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variant08ea978cd710ef37a6aa6e01b85c8f15f3fd5011bd3539623a4fbeb0cd4d5d87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b3fb6349d84651f33126f9912447970edfd028ddc7d5f1d1177846de79788ba",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variant08ea978cd710ef37a6aa6e01b85c8f15f3fd5011bd3539623a4fbeb0cd4d5d87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:325ba86b-30ab-fa1c-cf92-4d2335d22a61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 387–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coe_continuousAlternatingMapCongr (e : E ≃L[𝕜] E') (e' : F ≃L[𝕜] G) :
    (e.continuousAlternatingMapCongr e' (ι := ι) : (E [⋀^ι]→L[𝕜] F) →L[𝕜] (E' [⋀^ι]→L[𝕜] G)) =
      ContinuousLinearMap.compContinuousAlternatingMapCLM 𝕜 E' F G ι (e' : F →L[𝕜] G) ∘L
        ContinuousAlternatingMap.compContinuousLinearMapCLM e.symm :=
  rfl

end ContinuousLinearEquiv
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variant08ea978cd710ef37a6aa6e01b85c8f15f3fd5011bd3539623a4fbeb0cd4d5d87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variant08ea978cd710ef37a6aa6e01b85c8f15f3fd5011bd3539623a4fbeb0cd4d5d87.lean#L387).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66acc2bc41e4175777a75bc965c24ba9b1722ec1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
