# tsum_rpow_neg_seven_quarters_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cce92b65-89e9-7aee-210e-97b71683f3d3",
  "kind": "lemma",
  "lexical_name": "tsum_rpow_neg_seven_quarters_le",
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
  "slug": "tsum-rpow-neg-seven-quarters-le--1ec3b866994d2ee5c5a25119",
  "source": {
    "blob": "8d0d154c5fb6a7cec2352a0772b4b1a09c38ce3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 939,
    "line": 923,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ec3b866994d2ee5c5a25119961fbb29435a8e102b365ac1672710b8bcc68593",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cce92b65-89e9-7aee-210e-97b71683f3d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 923–939.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tsum_rpow_neg_seven_quarters_le :
    ∑' m : ℕ, ((m : ℝ) ^ ((7 : ℝ) / 4))⁻¹ ≤ 3 := by
  refine tsum_le_of_sum_range_le (fun n => by positivity) fun N => ?_
  rcases Nat.eq_zero_or_pos N with h0 | hpos
  · subst h0
    simp
  · obtain ⟨M, rfl⟩ : ∃ M, N = M + 1 := ⟨N - 1, by omega⟩
    rcases Nat.eq_zero_or_pos M with h0 | hM
    · subst h0
      norm_num [Finset.sum_range_succ]
    · refine le_trans (sum_range_rpow_inv_le hM) ?_
      have : 0 < Real.sqrt M := Real.sqrt_pos.mpr (by exact_mod_cast hM)
      have h2 : 0 < 2 / Real.sqrt M := by positivity
      linarith

/-- The defect sum bounded by the explicit numeral 1537 = 512·3 + 1 (effective version;
uses the √-telescoping bound ζ-style Σ' m^{−7/4} ≤ 3 above). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean#L923).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d0d154c5fb6a7cec2352a0772b4b1a09c38ce3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
