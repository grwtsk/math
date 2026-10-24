# actualAbsMoebius_lower_square_sieve

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ef22d47-6533-1e59-3285-e4df1b1bce89",
  "kind": "theorem",
  "lexical_name": "actualAbsMoebius_lower_square_sieve",
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
  "slug": "actualabsmoebius-lower-square-sieve--19810302697a8608e8d81d20",
  "source": {
    "blob": "ffd660f409c12c41d81901be21ae1d43225bbf05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 34,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ActualMoebiusSqrtLower/Variant4a2c260ccc85e52bbbfba7fc19f103b6f8ff666379af2b117da7973adf570ced.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19810302697a8608e8d81d2017fdf6626d15477bafd1aae7b034937141de3343",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ActualMoebiusSqrtLower/Variant4a2c260ccc85e52bbbfba7fc19f103b6f8ff666379af2b117da7973adf570ced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ef22d47-6533-1e59-3285-e4df1b1bce89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualAbsMoebius_lower_square_sieve {U n : ℕ} (hn : 1 ≤ n) (hnU : n ≤ U) :
    1 - |realMoebius n| ≤
      ∑ k ∈ Finset.Icc 2 U, if k * k ∣ n then (1 : ℝ) else 0 := by
  classical
  rw [actualAbsMoebius_eq_squarefreeIndicator]
  by_cases hs : Squarefree n
  · rw [if_pos hs, sub_self]
    exact Finset.sum_nonneg (by intro k _; split_ifs <;> norm_num)
  · rw [if_neg hs, sub_zero]
    have hnot : ¬∀ p, Nat.Prime p → ¬p * p ∣ n := by
      intro he
      exact hs (Nat.squarefree_iff_prime_squarefree.mpr he)
    push Not at hnot
    obtain ⟨p, hp, hdiv⟩ := hnot
    have hp2 : 2 ≤ p := hp.two_le
    have hpSq : p * p ≤ n := Nat.le_of_dvd (by omega) hdiv
    have hpU : p ≤ U := (show p ≤ p * p by nlinarith).trans (hpSq.trans hnU)
    have hmem : p ∈ Finset.Icc 2 U := Finset.mem_Icc.mpr ⟨hp2, hpU⟩
    have he := Finset.single_le_sum
      (f := fun k => if k * k ∣ n then (1 : ℝ) else 0)
      (by intro k _; split_ifs <;> norm_num) hmem
    simpa only [if_pos hdiv] using he

/-- Each square-divisor block retains the exact original integer cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ActualMoebiusSqrtLower/Variant4a2c260ccc85e52bbbfba7fc19f103b6f8ff666379af2b117da7973adf570ced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ActualMoebiusSqrtLower/Variant4a2c260ccc85e52bbbfba7fc19f103b6f8ff666379af2b117da7973adf570ced.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffd660f409c12c41d81901be21ae1d43225bbf05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
