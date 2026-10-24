# g_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6c8c7ddac15d7311b95099aabacb77cb8d9c8795",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ff5e58e02345de1d31eea694b0ceebbdd080fc47cf90c43375ccf85460ac7e9d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:431d1cf0-c595-e4eb-842b-3c387790d567",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a842a90f-3c79-e20b-b08e-d84886bf4a3b",
  "kind": "theorem",
  "lexical_name": "g_pos",
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
  "slug": "g-pos--6d32abe90ad02ba7a0d0bd2b",
  "source": {
    "blob": "6c8c7ddac15d7311b95099aabacb77cb8d9c8795",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 80,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Li2Bounds/Variantff5e58e02345de1d31eea694b0ceebbdd080fc47cf90c43375ccf85460ac7e9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d32abe90ad02ba7a0d0bd2b828cd122b8c540ed4a868af9101d10151bd3bb9e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Li2Bounds/Variantff5e58e02345de1d31eea694b0ceebbdd080fc47cf90c43375ccf85460ac7e9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a842a90f-3c79-e20b-b08e-d84886bf4a3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem g_pos (t : ℝ) (ht_pos : 0 < t) (ht_lt : t < 1) : 0 < g t := by
  have h1mt2_pos : 0 < 1 - t^2 := by nlinarith [sq_nonneg t]
  have h1mt2_lt1 : 1 - t^2 < 1 := by nlinarith [sq_nonneg t, ht_lt]
  have hlog1mt2_neg : Real.log (1 - t^2) < 0 := Real.log_neg h1mt2_pos h1mt2_lt1
  have h1pt_gt1 : 1 < 1 + t := by linarith
  have h1mt_pos : 0 < 1 - t := by linarith
  have h1mt_lt1 : 1 - t < 1 := by linarith
  have hlog1p_pos : 0 < Real.log (1 + t) := Real.log_pos h1pt_gt1
  have hlog1m_neg : Real.log (1 - t) < 0 := Real.log_neg h1mt_pos h1mt_lt1
  have hdenom_neg : Real.log (1 + t) * Real.log (1 - t) < 0 :=
    mul_neg_of_pos_of_neg hlog1p_pos hlog1m_neg
  have hpos :
      0 < Real.log (1 - t^2) / (Real.log (1 + t) * Real.log (1 - t)) :=
    div_pos_of_neg_of_neg hlog1mt2_neg hdenom_neg
  simpa [g_alt t ht_pos ht_lt] using hpos

/-- g(t) ≤ 2 for t ∈ (0, 1). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Li2Bounds/Variantff5e58e02345de1d31eea694b0ceebbdd080fc47cf90c43375ccf85460ac7e9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Li2Bounds/Variantff5e58e02345de1d31eea694b0ceebbdd080fc47cf90c43375ccf85460ac7e9d.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c8c7ddac15d7311b95099aabacb77cb8d9c8795` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
