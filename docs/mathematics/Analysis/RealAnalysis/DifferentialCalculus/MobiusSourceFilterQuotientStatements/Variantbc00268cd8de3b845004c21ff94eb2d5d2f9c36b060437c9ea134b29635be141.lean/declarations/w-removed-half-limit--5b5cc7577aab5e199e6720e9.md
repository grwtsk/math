# W_removed_half_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "63739e1be8d0b0eecd650f73328a2b1d31a5243e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bc00268cd8de3b845004c21ff94eb2d5d2f9c36b060437c9ea134b29635be141.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1d731e74-65cc-c710-23f6-02999a49874a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:417dbbf4-60a7-57ad-c357-7a9ae92e9376",
  "kind": "theorem",
  "lexical_name": "W_removed_half_limit",
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
  "slug": "w-removed-half-limit--5b5cc7577aab5e199e6720e9",
  "source": {
    "blob": "63739e1be8d0b0eecd650f73328a2b1d31a5243e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 46,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusSourceFilterQuotientStatements/Variantbc00268cd8de3b845004c21ff94eb2d5d2f9c36b060437c9ea134b29635be141.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b5cc7577aab5e199e6720e9085d5bc8b3daa4f25d07e7fa601153085a0943ad",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MobiusSourceFilterQuotientStatements/Variantbc00268cd8de3b845004c21ff94eb2d5d2f9c36b060437c9ea134b29635be141.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:417dbbf4-60a7-57ad-c357-7a9ae92e9376`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem W_removed_half_limit :
    Tendsto (fun z : ℂ => W z / (z - 1 / 2)) (𝓝[≠] (1 / 2))
      (𝓝 (deriv W (1 / 2))) := by
  have h := W_hasDerivAt_half.tendsto_slope
  rw [← W_hasDerivAt_half.deriv] at h
  have hs : slope W (1 / 2) = (fun z : ℂ => W z / (z - 1 / 2)) := by
    funext z
    rw [slope_def_field, W_half_zero, sub_zero]
  rw [hs] at h
  exact h

/-- Canceling both source zeros gives the actual finite signed normalization divided by the slope. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MobiusSourceFilterQuotientStatements/Variantbc00268cd8de3b845004c21ff94eb2d5d2f9c36b060437c9ea134b29635be141.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusSourceFilterQuotientStatements/Variantbc00268cd8de3b845004c21ff94eb2d5d2f9c36b060437c9ea134b29635be141.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63739e1be8d0b0eecd650f73328a2b1d31a5243e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
