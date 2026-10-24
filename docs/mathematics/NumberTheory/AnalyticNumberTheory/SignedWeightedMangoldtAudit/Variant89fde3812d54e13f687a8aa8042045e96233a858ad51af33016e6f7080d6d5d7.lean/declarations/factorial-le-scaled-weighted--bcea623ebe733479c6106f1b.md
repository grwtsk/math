# factorial_le_scaled_weighted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "34cf4ae09d2a0f36ec920c12d8b7841d2d4607ac",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/89fde3812d54e13f687a8aa8042045e96233a858ad51af33016e6f7080d6d5d7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:818f2f7d-3d28-060e-6627-56c6a91b0957",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7d2e5706-e11e-1497-f813-c5087c23ff3b",
  "kind": "theorem",
  "lexical_name": "factorial_le_scaled_weighted",
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
  "slug": "factorial-le-scaled-weighted--bcea623ebe733479c6106f1b",
  "source": {
    "blob": "34cf4ae09d2a0f36ec920c12d8b7841d2d4607ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 58,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant89fde3812d54e13f687a8aa8042045e96233a858ad51af33016e6f7080d6d5d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bcea623ebe733479c6106f1bbf0e1cc61e5b67feefc94b95606d82658b99db48",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant89fde3812d54e13f687a8aa8042045e96233a858ad51af33016e6f7080d6d5d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d2e5706-e11e-1497-f813-c5087c23ff3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factorial_le_scaled_weighted (N : ℕ) :
    Real.log (N.factorial : ℝ) ≤ (N : ℝ) * weightedMangoldt N := by
  rw [factorial_identity, weightedMangoldt, Finset.mul_sum]
  apply Finset.sum_le_sum
  intro n hn
  have hd : ((N / n : ℕ) : ℝ) ≤ (N : ℝ) / n := Nat.cast_div_le
  calc
    vonMangoldt n * ((N / n : ℕ) : ℝ) ≤
        vonMangoldt n * ((N : ℝ) / n) :=
      mul_le_mul_of_nonneg_left hd (vonMangoldt_nonneg (n := n))
    _ = (N : ℝ) * (vonMangoldt n / (n : ℝ)) := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant89fde3812d54e13f687a8aa8042045e96233a858ad51af33016e6f7080d6d5d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant89fde3812d54e13f687a8aa8042045e96233a858ad51af33016e6f7080d6d5d7.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34cf4ae09d2a0f36ec920c12d8b7841d2d4607ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
