# permutationWeightMass_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a42fe9a-fb0d-a5b3-b38b-2c00c0dc7508",
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
  "slug": "permutationweightmass-sum--3bd17bb939f9ca8598c119dd",
  "source": {
    "blob": "c839a015cb6d2e047ab5061b171d39f78d52370c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 874,
    "line": 849,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Avalanche/Variantc6cc028f62d333ffe4f9c75a7718cc2f6a3e469d992a84506b6fec9708d163f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3bd17bb939f9ca8598c119dd2a76cc4d04b1712f49ee35d91aa392705ec3db96",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Avalanche/Variantc6cc028f62d333ffe4f9c75a7718cc2f6a3e469d992a84506b6fec9708d163f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a42fe9a-fb0d-a5b3-b38b-2c00c0dc7508`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 849–874.

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

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Avalanche/Variantc6cc028f62d333ffe4f9c75a7718cc2f6a3e469d992a84506b6fec9708d163f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Avalanche/Variantc6cc028f62d333ffe4f9c75a7718cc2f6a3e469d992a84506b6fec9708d163f7.lean#L849).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c839a015cb6d2e047ab5061b171d39f78d52370c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
