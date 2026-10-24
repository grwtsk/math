# cos_pi_over_two_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "98a46cc6e67df98619eca63a7c546f3701e94aca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 735,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d33e61e4080ce7c759042fd65aff5ff00d72159ae37bab6266a5865d2d727359.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:96761b97-4c01-5a62-d9dd-62128b79db9a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:11f4ca86-4f20-e45e-d0e1-a25f4ea3c3cf",
  "kind": "theorem",
  "lexical_name": "cos_pi_over_two_pow",
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
  "slug": "cos-pi-over-two-pow--2bbe0e03391967aa65678d79",
  "source": {
    "blob": "98a46cc6e67df98619eca63a7c546f3701e94aca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 758,
    "line": 735,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantd33e61e4080ce7c759042fd65aff5ff00d72159ae37bab6266a5865d2d727359.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2bbe0e03391967aa65678d793286d91a687365d938c7cece50a6be9c9eeef535",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantd33e61e4080ce7c759042fd65aff5ff00d72159ae37bab6266a5865d2d727359.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11f4ca86-4f20-e45e-d0e1-a25f4ea3c3cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 735–758.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cos_pi_over_two_pow : ∀ n : ℕ, cos (π / 2 ^ (n + 1)) = sqrtTwoAddSeries 0 n / 2
  | 0 => by simp
  | n + 1 => by
    have : (2 : ℝ) ≠ 0 := two_ne_zero
    symm; rw [div_eq_iff_mul_eq this]; symm
    rw [sqrtTwoAddSeries, sqrt_eq_iff_sq_eq, mul_pow, cos_sq, ← mul_div_assoc, Nat.add_succ,
      pow_succ, mul_div_mul_left _ _ this, cos_pi_over_two_pow _, add_mul]
    congr; · norm_num
    rw [mul_comm, sq, mul_assoc, ← mul_div_assoc, mul_div_cancel_left, ← mul_div_assoc,
        mul_div_cancel_left] <;>
      try exact this
    apply add_nonneg; norm_num; apply sqrtTwoAddSeries_zero_nonneg; norm_num
    apply le_of_lt; apply cos_pos_of_mem_Ioo ⟨_, _⟩
    · trans (0 : ℝ)
      rw [neg_lt_zero]
      apply pi_div_two_pos
      apply div_pos pi_pos
      apply pow_pos
      norm_num
    apply div_lt_div' (le_refl π) _ pi_pos _
    refine' lt_of_le_of_lt (le_of_eq (pow_one _).symm) _
    apply pow_lt_pow; norm_num; apply Nat.succ_lt_succ; apply Nat.succ_pos; all_goals norm_num
#align real.cos_pi_over_two_pow Real.cos_pi_over_two_pow

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantd33e61e4080ce7c759042fd65aff5ff00d72159ae37bab6266a5865d2d727359.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantd33e61e4080ce7c759042fd65aff5ff00d72159ae37bab6266a5865d2d727359.lean#L735).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98a46cc6e67df98619eca63a7c546f3701e94aca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
