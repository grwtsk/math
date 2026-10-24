# divisorMultiplesInteraction_eq_quotient_sub_diagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "79c113cf79a81b620045cdb747eb75627a2f122c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 28,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4dc2c15b0a0deb196af84a31c59d43f2add1ee11f556ef45b50494424d2e8726.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:31db4376-8ebd-6a08-b7a6-80b6597c364b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4155440c-3db7-3f78-76ba-eb8aa077aa80",
  "kind": "theorem",
  "lexical_name": "divisorMultiplesInteraction_eq_quotient_sub_diagonal",
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
  "slug": "divisormultiplesinteraction-eq-quotient-sub-diagonal--6b2d3b15916233cad2286824",
  "source": {
    "blob": "79c113cf79a81b620045cdb747eb75627a2f122c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 28,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/4dc2c15b0a0deb196af8SourceDivisorQuotientSampling/Variant4dc2c15b0a0deb196af84a31c59d43f2add1ee11f556ef45b50494424d2e8726.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b2d3b15916233cad228682460168740ba1a0e2c6f1ad51e63ff9015ca73e66e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/4dc2c15b0a0deb196af8SourceDivisorQuotientSampling/Variant4dc2c15b0a0deb196af84a31c59d43f2add1ee11f556ef45b50494424d2e8726.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4155440c-3db7-3f78-76ba-eb8aa077aa80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem divisorMultiplesInteraction_eq_quotient_sub_diagonal
    (A : ℝ) (d : ℕ) (hd : 0 < d) :
    divisorMultiplesInteraction A d =
      (∑ m ∈ longInventory A, vonMangoldt m *
        (∑ j ∈ Finset.Icc (vaughanCutoff A / d + 1) (sourceKernelCutoff A / d),
          sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ))) -
      ∑ m ∈ longInventory A,
        if d ∣ m then vonMangoldt m * sourcePlainWeight A ((m * m : ℕ) : ℝ) else 0 := by
  classical
  unfold divisorMultiplesInteraction
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  let f : ℕ → ℝ := fun n =>
    if d ∣ n then vonMangoldt m * sourcePlainWeight A ((m * n : ℕ) : ℝ) else 0
  have he : (∑ n ∈ (longInventory A).filter (fun n => n ≠ m), f n) =
      (∑ n ∈ longInventory A, f n) - f m := by
    rw [Finset.sum_filter]
    have ht : (∑ n ∈ longInventory A, if n ≠ m then f n else 0) =
        ∑ n ∈ longInventory A, (f n - if n = m then f n else 0) := by
      apply Finset.sum_congr rfl
      intro n _
      by_cases hn : n = m <;> simp [hn]
    rw [ht, Finset.sum_sub_distrib]
    simp only [Finset.sum_ite_eq', hm, if_true]
  rw [he]
  congr 1
  calc
    (∑ n ∈ longInventory A, f n) = vonMangoldt m *
        (∑ n ∈ longInventory A,
          if d ∣ n then sourcePlainWeight A ((m * n : ℕ) : ℝ) else 0) := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro n _
      dsimp only [f]
      split_ifs <;> simp
    _ = _ := by
      rw [longInventory, sum_multiples_eq_quotient_interval _ _ d hd]

/-- The original divisor remainder keeps the entire extracted quotient and divisible diagonal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/4dc2c15b0a0deb196af8SourceDivisorQuotientSampling/Variant4dc2c15b0a0deb196af84a31c59d43f2add1ee11f556ef45b50494424d2e8726.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/4dc2c15b0a0deb196af8SourceDivisorQuotientSampling/Variant4dc2c15b0a0deb196af84a31c59d43f2add1ee11f556ef45b50494424d2e8726.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79c113cf79a81b620045cdb747eb75627a2f122c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
