# thetaPhiTerm_positive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "03b51fccf85e936847b812e20dfbcb80f3c3b224",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 30,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bb683bc5665780c284a82488c65c5cb2ab20af2cf5477b22b2a0e33d7f46a7b2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1019ebf1-026d-61f2-9260-9dc0fc40893e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ee7b683b-2f83-36a2-e3aa-abb3c07739b0",
  "kind": "theorem",
  "lexical_name": "thetaPhiTerm_positive",
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
  "slug": "thetaphiterm-positive--1a60827e713909ef3b6f01ff",
  "source": {
    "blob": "03b51fccf85e936847b812e20dfbcb80f3c3b224",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 30,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantbb683bc5665780c284a82488c65c5cb2ab20af2cf5477b22b2a0e33d7f46a7b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a60827e713909ef3b6f01ff89d27c7544233b57c6e0f6b1cd6241d96f30a5be",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantbb683bc5665780c284a82488c65c5cb2ab20af2cf5477b22b2a0e33d7f46a7b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee7b683b-2f83-36a2-e3aa-abb3c07739b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiTerm_positive (m : ℕ) {t : ℝ} (ht : 0 ≤ t) : 0 < thetaPhiTerm m t := by
  have hn : (1 : ℝ) ≤ (m + 1 : ℕ) := by exact_mod_cast Nat.succ_le_succ (Nat.zero_le m)
  have he : 1 ≤ Real.exp (4 * t) := Real.one_le_exp (by positivity)
  have hn2 : 1 ≤ ((m + 1 : ℕ) : ℝ) ^ 2 := one_le_pow₀ hn
  have hne : 1 ≤ ((m + 1 : ℕ) : ℝ) ^ 2 * Real.exp (4 * t) := by
    nlinarith [mul_nonneg (sub_nonneg.mpr hn2) (sub_nonneg.mpr he)]
  have hp : 3 < 2 * Real.pi * ((m + 1 : ℕ) : ℝ) ^ 2 * Real.exp (4 * t) := by
    nlinarith [Real.pi_gt_three, mul_le_mul_of_nonneg_left hne (le_of_lt Real.pi_pos)]
  unfold thetaPhiTerm
  exact mul_pos (mul_pos (mul_pos (mul_pos Real.pi_pos (by positivity))
    (Real.exp_pos _)) (sub_pos.mpr hp)) (Real.exp_pos _)

/-- Every nonnegative coordinate has a strictly positive convergent theta sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantbb683bc5665780c284a82488c65c5cb2ab20af2cf5477b22b2a0e33d7f46a7b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variantbb683bc5665780c284a82488c65c5cb2ab20af2cf5477b22b2a0e33d7f46a7b2.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03b51fccf85e936847b812e20dfbcb80f3c3b224` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
