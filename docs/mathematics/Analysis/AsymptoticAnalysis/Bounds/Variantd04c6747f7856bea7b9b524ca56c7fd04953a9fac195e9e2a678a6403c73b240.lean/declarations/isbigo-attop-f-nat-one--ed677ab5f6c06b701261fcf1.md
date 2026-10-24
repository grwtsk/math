# isBigO_atTop_F_nat_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f4ae7d1-5b45-da45-0642-02472d9b5209",
  "kind": "lemma",
  "lexical_name": "isBigO_atTop_F_nat_one",
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
  "slug": "isbigo-attop-f-nat-one--ed677ab5f6c06b701261fcf1",
  "source": {
    "blob": "b1523984d5597f985d75b22249db7e5509d54bef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 187,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Bounds/Variantd04c6747f7856bea7b9b524ca56c7fd04953a9fac195e9e2a678a6403c73b240.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed677ab5f6c06b701261fcf1423ec2f4cdeb28c2c9efc62bf4b5bcb2ddeb5d4b",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Bounds/Variantd04c6747f7856bea7b9b524ca56c7fd04953a9fac195e9e2a678a6403c73b240.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f4ae7d1-5b45-da45-0642-02472d9b5209`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isBigO_atTop_F_nat_one {a : ℝ} (ha : 0 ≤ a) : ∃ p, 0 < p ∧
    F_nat 1 a =O[atTop] fun t ↦ exp (-p * t) := by
  suffices ∃ p, 0 < p ∧ (fun t ↦ rexp (-π * (a ^ 2 + 1) * t) / (1 - rexp (-π * t)) ^ 2
      + a * rexp (-π * a ^ 2 * t) / (1 - rexp (-π * t))) =O[atTop] fun t ↦ exp (-p * t) by
    let ⟨p, hp, hp'⟩ := this
    refine ⟨p, hp, (Eventually.isBigO ?_).trans hp'⟩
    filter_upwards [eventually_gt_atTop 0] with t ht
    exact F_nat_one_le ha ht
  have aux' : IsBigO atTop (fun t : ℝ ↦ ((1 - rexp (-π * t)) ^ 2)⁻¹) (fun _ ↦ (1 : ℝ)) := by
    simpa only [inv_pow, one_pow] using! isBigO_one_aux.pow 2
  rcases eq_or_lt_of_le ha with rfl | ha'
  · exact ⟨_, pi_pos, by simpa only [zero_pow two_ne_zero, zero_add, mul_one, zero_mul, zero_div,
      add_zero] using! (isBigO_refl _ _).mul aux'⟩
  · refine ⟨π * a ^ 2, mul_pos pi_pos <| pow_pos ha' _, IsBigO.add ?_ ?_⟩
    · conv_rhs => enter [t]; rw [← mul_one (rexp _)]
      refine (Eventually.isBigO ?_).mul aux'
      filter_upwards [eventually_gt_atTop 0] with t ht
      rw [norm_of_nonneg (exp_pos _).le, exp_le_exp]
      nlinarith [pi_pos]
    · simp_rw [mul_div_assoc, ← neg_mul]
      apply IsBigO.const_mul_left
      simpa only [mul_one] using! (isBigO_refl _ _).mul isBigO_one_aux

end k_eq_one

end nat

section int

/-- Summand in the sum to be bounded (`ℤ` version). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Bounds/Variantd04c6747f7856bea7b9b524ca56c7fd04953a9fac195e9e2a678a6403c73b240.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Bounds/Variantd04c6747f7856bea7b9b524ca56c7fd04953a9fac195e9e2a678a6403c73b240.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1523984d5597f985d75b22249db7e5509d54bef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
