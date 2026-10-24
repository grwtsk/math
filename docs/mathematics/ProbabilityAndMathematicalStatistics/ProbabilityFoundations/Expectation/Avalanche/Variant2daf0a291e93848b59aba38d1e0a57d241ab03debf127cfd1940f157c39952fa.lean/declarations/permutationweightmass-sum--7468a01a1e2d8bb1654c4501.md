# permutationWeightMass_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc6b7862-e109-81c2-40fa-6b30f89b3dd6",
  "kind": "theorem",
  "lexical_name": "permutationWeightMass_sum",
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
  "slug": "permutationweightmass-sum--7468a01a1e2d8bb1654c4501",
  "source": {
    "blob": "2d00ee9c03cd9f493f70e5c4d08c5ded99110181",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 874,
    "line": 849,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Avalanche/Variant2daf0a291e93848b59aba38d1e0a57d241ab03debf127cfd1940f157c39952fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7468a01a1e2d8bb1654c450175b355e4edb342e918eb1f66eb69dc3b8f0fe085",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Avalanche/Variant2daf0a291e93848b59aba38d1e0a57d241ab03debf127cfd1940f157c39952fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc6b7862-e109-81c2-40fa-6b30f89b3dd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 849–874.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem permutationWeightMass_sum {n : Nat} (hn : 0 < n) :
    ∑ k ∈ Finset.range (n + 1), permutationWeightMass n k = 1 := by
  have hn0 : n ≠ 0 := Nat.ne_of_gt hn
  have hmem : 0 ∈ Finset.range (n + 1) := by simp
  have hsumNat :
      ∑ k ∈ (Finset.range (n + 1)).erase 0, Nat.choose n k =
        2 ^ n - 1 := by
    have htotal := Nat.sum_range_choose n
    have herase :=
      Finset.sum_erase_add (Finset.range (n + 1)) (Nat.choose n) hmem
    simp only [Nat.choose_zero_right] at herase
    omega
  simp only [permutationWeightMass, if_neg hn0]
  rw [Finset.sum_ite]
  simp only [Finset.sum_const_zero, zero_add]
  rw [Finset.filter_ne']
  simp only [← Finset.sum_div, ← Nat.cast_sum, hsumNat]
  have hden : (0 : ℚ) < 2 ^ n - 1 := by
    exact sub_pos.mpr (by exact_mod_cast Nat.one_lt_two_pow hn0)
  have hleNat : 1 ≤ 2 ^ n :=
    Nat.one_le_iff_ne_zero.mpr (pow_ne_zero n (by decide : (2 : Nat) ≠ 0))
  rw [Nat.cast_sub hleNat, Nat.cast_one]
  norm_num
  exact hden.ne'

/-- The permutation law is the function law conditioned on positive weight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Avalanche/Variant2daf0a291e93848b59aba38d1e0a57d241ab03debf127cfd1940f157c39952fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Avalanche/Variant2daf0a291e93848b59aba38d1e0a57d241ab03debf127cfd1940f157c39952fa.lean#L849).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d00ee9c03cd9f493f70e5c4d08c5ded99110181` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
