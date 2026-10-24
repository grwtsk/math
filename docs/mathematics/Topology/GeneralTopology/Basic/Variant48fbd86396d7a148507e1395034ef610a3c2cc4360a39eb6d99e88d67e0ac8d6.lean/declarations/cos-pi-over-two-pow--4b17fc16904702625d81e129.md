# cos_pi_over_two_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53e1b145-12fa-42ae-5057-6dfdaa464ed4",
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
  "slug": "cos-pi-over-two-pow--4b17fc16904702625d81e129",
  "source": {
    "blob": "6b0c657d564cbf9f89de7d5d718d54ad0ef0b75d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 766,
    "line": 743,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant48fbd86396d7a148507e1395034ef610a3c2cc4360a39eb6d99e88d67e0ac8d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b17fc16904702625d81e129b6b3b1a64459b1ff8627c0be9623b275f69bb8f8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant48fbd86396d7a148507e1395034ef610a3c2cc4360a39eb6d99e88d67e0ac8d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53e1b145-12fa-42ae-5057-6dfdaa464ed4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 743–766.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant48fbd86396d7a148507e1395034ef610a3c2cc4360a39eb6d99e88d67e0ac8d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant48fbd86396d7a148507e1395034ef610a3c2cc4360a39eb6d99e88d67e0ac8d6.lean#L743).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b0c657d564cbf9f89de7d5d718d54ad0ef0b75d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
