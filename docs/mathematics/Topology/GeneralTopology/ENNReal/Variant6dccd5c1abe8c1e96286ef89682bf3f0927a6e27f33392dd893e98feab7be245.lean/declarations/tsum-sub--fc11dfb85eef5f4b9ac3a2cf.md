# tsum_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2178a4bd5c2665c9cb5596199ee5c4ef842991c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 975,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6dccd5c1abe8c1e96286ef89682bf3f0927a6e27f33392dd893e98feab7be245.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d8203b67-d58b-28e1-ef7e-c33b022112dc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:22e269ca-3cf2-b540-1123-2fc67fe79af4",
  "kind": "theorem",
  "lexical_name": "tsum_sub",
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
  "slug": "tsum-sub--fc11dfb85eef5f4b9ac3a2cf",
  "source": {
    "blob": "2178a4bd5c2665c9cb5596199ee5c4ef842991c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 980,
    "line": 975,
    "path": "GRWTSK/Topology/GeneralTopology/ENNReal/Variant6dccd5c1abe8c1e96286ef89682bf3f0927a6e27f33392dd893e98feab7be245.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc11dfb85eef5f4b9ac3a2cfe3bc32dce235d1f84f3bc84d7f0417ad158ddc48",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ENNReal/Variant6dccd5c1abe8c1e96286ef89682bf3f0927a6e27f33392dd893e98feab7be245.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22e269ca-3cf2-b540-1123-2fc67fe79af4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 975–980.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tsum_sub {f : ℕ → ℝ≥0∞} {g : ℕ → ℝ≥0∞} (h₁ : ∑' i, g i ≠ ∞) (h₂ : g ≤ f) :
    ∑' i, (f i - g i) = ∑' i, f i - ∑' i, g i :=
  have : ∀ i, f i - g i + g i = f i := fun i => tsub_add_cancel_of_le (h₂ i)
  ENNReal.eq_sub_of_add_eq h₁ <| by simp only [← ENNReal.tsum_add, this]
#align ennreal.tsum_sub ENNReal.tsum_sub

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ENNReal/Variant6dccd5c1abe8c1e96286ef89682bf3f0927a6e27f33392dd893e98feab7be245.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ENNReal/Variant6dccd5c1abe8c1e96286ef89682bf3f0927a6e27f33392dd893e98feab7be245.lean#L975).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2178a4bd5c2665c9cb5596199ee5c4ef842991c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
