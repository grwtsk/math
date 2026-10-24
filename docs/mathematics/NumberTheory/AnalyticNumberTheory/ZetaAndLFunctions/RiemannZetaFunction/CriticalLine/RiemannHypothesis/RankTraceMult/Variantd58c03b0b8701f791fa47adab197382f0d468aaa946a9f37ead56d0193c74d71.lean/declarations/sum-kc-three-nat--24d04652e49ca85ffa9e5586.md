# sum_kc_three_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "56727106c5990a07e3f7e29eae3122be737a1cbc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 419,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d58c03b0b8701f791fa47adab197382f0d468aaa946a9f37ead56d0193c74d71.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f3ca7128-2e2b-2d4b-1d4a-7ccd2519a3fe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:95b9f1ca-feb6-fc0f-a466-4ab44bee4473",
  "kind": "theorem",
  "lexical_name": "sum_kc_three_nat",
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
  "slug": "sum-kc-three-nat--24d04652e49ca85ffa9e5586",
  "source": {
    "blob": "56727106c5990a07e3f7e29eae3122be737a1cbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 442,
    "line": 419,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTraceMult/Variantd58c03b0b8701f791fa47adab197382f0d468aaa946a9f37ead56d0193c74d71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24d04652e49ca85ffa9e5586a1f7c2c58d7c42a5ab46ca45a5a0e11fc44daf92",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTraceMult/Variantd58c03b0b8701f791fa47adab197382f0d468aaa946a9f37ead56d0193c74d71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95b9f1ca-feb6-fc0f-a466-4ab44bee4473`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 419–442.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_kc_three_nat [DecidableEq ι] (m : ι → ℕ) (hm : ∀ j, 1 ≤ m j) :
    ∑ j, kc 3 (m j : ℝ) = 5 * ((Finset.univ.filter (fun j => m j = 1)).card : ℝ)
      + 8 * ((Finset.univ.filter (fun j => m j = 2)).card : ℝ)
      + 9 * ((Finset.univ.filter (fun j => 3 ≤ m j)).card : ℝ) := by
  classical
  have hsplit : ∀ j, kc 3 (m j : ℝ)
      = (if m j = 1 then 5 else 0) + (if m j = 2 then 8 else 0) + (if 3 ≤ m j then 9 else 0) := by
    intro j
    rcases Nat.lt_or_ge (m j) 3 with h | h
    · rcases Nat.lt_or_ge (m j) 2 with h2 | h2
      · have : m j = 1 := by have := hm j; omega
        simp [this, kc_three_one]
      · have : m j = 2 := by omega
        simp [this, kc_three_two]
    · have h1 : m j ≠ 1 := by omega
      have h2 : m j ≠ 2 := by omega
      rw [if_neg h1, if_neg h2, if_pos h, kc_three_of_three_le (by exact_mod_cast h)]; ring
  simp_rw [hsplit]
  rw [Finset.sum_add_distrib, Finset.sum_add_distrib, Finset.sum_ite, Finset.sum_ite, Finset.sum_ite]
  simp [Finset.sum_const, mul_comm]

end Counting

end Zeta23.ZeroSide.RankTraceMult
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTraceMult/Variantd58c03b0b8701f791fa47adab197382f0d468aaa946a9f37ead56d0193c74d71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTraceMult/Variantd58c03b0b8701f791fa47adab197382f0d468aaa946a9f37ead56d0193c74d71.lean#L419).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56727106c5990a07e3f7e29eae3122be737a1cbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
