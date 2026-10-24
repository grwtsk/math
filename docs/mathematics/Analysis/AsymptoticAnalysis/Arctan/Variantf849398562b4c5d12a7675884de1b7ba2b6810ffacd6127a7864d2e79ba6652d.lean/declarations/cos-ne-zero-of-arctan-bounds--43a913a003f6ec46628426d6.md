# cos_ne_zero_of_arctan_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad3417fde3fac6fbbedda87219300cdf5f4aa03a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f849398562b4c5d12a7675884de1b7ba2b6810ffacd6127a7864d2e79ba6652d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2f14c422-8c31-93b7-f345-c688e5c0a9f0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:65c3bebc-3109-1f04-2ce5-d7e9daf8bb81",
  "kind": "lemma",
  "lexical_name": "cos_ne_zero_of_arctan_bounds",
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
  "slug": "cos-ne-zero-of-arctan-bounds--43a913a003f6ec46628426d6",
  "source": {
    "blob": "ad3417fde3fac6fbbedda87219300cdf5f4aa03a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 55,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Arctan/Variantf849398562b4c5d12a7675884de1b7ba2b6810ffacd6127a7864d2e79ba6652d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43a913a003f6ec46628426d64338f94d457429f37131874f17c4468a194e8723",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Arctan/Variantf849398562b4c5d12a7675884de1b7ba2b6810ffacd6127a7864d2e79ba6652d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65c3bebc-3109-1f04-2ce5-d7e9daf8bb81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cos_ne_zero_of_arctan_bounds {z : ℂ} (h₀ : z ≠ π / 2) (h₁ : -(π / 2) < z.re)
    (h₂ : z.re ≤ π / 2) : cos z ≠ 0 := by
  refine cos_ne_zero_iff.mpr (fun k ↦ ?_)
  rw [ne_eq, Complex.ext_iff, not_and_or] at h₀ ⊢
  norm_cast at h₀ ⊢
  rcases h₀ with nr | ni
  · left; contrapose nr
    rw [nr, mul_div_assoc, neg_eq_neg_one_mul, mul_lt_mul_iff_of_pos_right (by positivity)] at h₁
    rw [nr, ← one_mul (π / 2), mul_div_assoc, mul_le_mul_iff_of_pos_right (by positivity)] at h₂
    norm_cast at h₁ h₂
    change -1 < _ at h₁
    rwa [show 2 * k + 1 = 1 by lia, Int.cast_one, one_mul] at nr
  · exact Or.inr ni

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Arctan/Variantf849398562b4c5d12a7675884de1b7ba2b6810ffacd6127a7864d2e79ba6652d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Arctan/Variantf849398562b4c5d12a7675884de1b7ba2b6810ffacd6127a7864d2e79ba6652d.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad3417fde3fac6fbbedda87219300cdf5f4aa03a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
