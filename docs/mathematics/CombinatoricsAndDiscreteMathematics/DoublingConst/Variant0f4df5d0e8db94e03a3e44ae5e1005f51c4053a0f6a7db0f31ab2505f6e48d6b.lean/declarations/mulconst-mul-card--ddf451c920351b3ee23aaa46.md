# mulConst_mul_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5c4431c79e03bd9ab033ed9d6bd3519aabadd443",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0f4df5d0e8db94e03a3e44ae5e1005f51c4053a0f6a7db0f31ab2505f6e48d6b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:59f03dc2-6af2-e607-399c-dd93647410e7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:43562ffd-f329-32a5-f7f9-ad54cac8792c",
  "kind": "lemma",
  "lexical_name": "mulConst_mul_card",
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
  "slug": "mulconst-mul-card--ddf451c920351b3ee23aaa46",
  "source": {
    "blob": "5c4431c79e03bd9ab033ed9d6bd3519aabadd443",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 71,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant0f4df5d0e8db94e03a3e44ae5e1005f51c4053a0f6a7db0f31ab2505f6e48d6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddf451c920351b3ee23aaa46608bfa3d69107e8f138f49e5a1c8ece72553e0cd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant0f4df5d0e8db94e03a3e44ae5e1005f51c4053a0f6a7db0f31ab2505f6e48d6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43562ffd-f329-32a5-f7f9-ad54cac8792c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mulConst_mul_card (A B : Finset G) : σₘ[A, B] * #A = #(A * B) := by
  obtain rfl | hA := A.eq_empty_or_nonempty
  · simp
  · exact div_mul_cancel₀ _ (by positivity)

@[to_additive (attr := simp) subConst_mul_card]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant0f4df5d0e8db94e03a3e44ae5e1005f51c4053a0f6a7db0f31ab2505f6e48d6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant0f4df5d0e8db94e03a3e44ae5e1005f51c4053a0f6a7db0f31ab2505f6e48d6b.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c4431c79e03bd9ab033ed9d6bd3519aabadd443` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
