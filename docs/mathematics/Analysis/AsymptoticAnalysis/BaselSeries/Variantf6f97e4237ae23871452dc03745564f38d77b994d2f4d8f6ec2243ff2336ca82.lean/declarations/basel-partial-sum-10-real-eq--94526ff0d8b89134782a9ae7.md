# basel_partial_sum_10_real_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ed464a68823f193bc87326fd43692fd521f0173c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 87,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6f97e4237ae23871452dc03745564f38d77b994d2f4d8f6ec2243ff2336ca82.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c65c0c16-455a-0753-c719-c1e6ea55c270",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:66b7a734-e177-7f8a-94c4-be7cb0951731",
  "kind": "theorem",
  "lexical_name": "basel_partial_sum_10_real_eq",
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
  "slug": "basel-partial-sum-10-real-eq--94526ff0d8b89134782a9ae7",
  "source": {
    "blob": "ed464a68823f193bc87326fd43692fd521f0173c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 87,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/BaselSeries/Variantf6f97e4237ae23871452dc03745564f38d77b994d2f4d8f6ec2243ff2336ca82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94526ff0d8b89134782a9ae7d49cfdb8166de8325bb6cb92e49fd91515195117",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/BaselSeries/Variantf6f97e4237ae23871452dc03745564f38d77b994d2f4d8f6ec2243ff2336ca82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66b7a734-e177-7f8a-94c4-be7cb0951731`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem basel_partial_sum_10_real_eq :
    (∑ n ∈ Finset.range 10, baselTerm n) = (1968329 : ℝ) / 1270080 := by
  rw [← basel_partial_sum_real_eq, basel_partial_sum_10_eq]
  norm_num

/-- Splitting the Basel series at 10: head plus tail equals `π² / 6`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/BaselSeries/Variantf6f97e4237ae23871452dc03745564f38d77b994d2f4d8f6ec2243ff2336ca82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/BaselSeries/Variantf6f97e4237ae23871452dc03745564f38d77b994d2f4d8f6ec2243ff2336ca82.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed464a68823f193bc87326fd43692fd521f0173c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
