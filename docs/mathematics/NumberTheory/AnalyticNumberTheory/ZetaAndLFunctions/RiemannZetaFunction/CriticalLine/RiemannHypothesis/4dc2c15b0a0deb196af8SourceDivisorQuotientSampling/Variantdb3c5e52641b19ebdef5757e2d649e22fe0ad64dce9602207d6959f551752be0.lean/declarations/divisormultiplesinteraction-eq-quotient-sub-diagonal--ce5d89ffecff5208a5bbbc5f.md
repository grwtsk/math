# divisorMultiplesInteraction_eq_quotient_sub_diagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b4bcb52-30b0-9c81-967f-a05cd2aa248b",
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
  "slug": "divisormultiplesinteraction-eq-quotient-sub-diagonal--ce5d89ffecff5208a5bbbc5f",
  "source": {
    "blob": "dea9826e01e8b9d69853dc9311ed25d4a10e44fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 36,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/4dc2c15b0a0deb196af8SourceDivisorQuotientSampling/Variantdb3c5e52641b19ebdef5757e2d649e22fe0ad64dce9602207d6959f551752be0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce5d89ffecff5208a5bbbc5f840bf5f18adde1580cc6d4e8b86c2f369e339cec",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/4dc2c15b0a0deb196af8SourceDivisorQuotientSampling/Variantdb3c5e52641b19ebdef5757e2d649e22fe0ad64dce9602207d6959f551752be0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b4bcb52-30b0-9c81-967f-a05cd2aa248b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–75.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/4dc2c15b0a0deb196af8SourceDivisorQuotientSampling/Variantdb3c5e52641b19ebdef5757e2d649e22fe0ad64dce9602207d6959f551752be0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/4dc2c15b0a0deb196af8SourceDivisorQuotientSampling/Variantdb3c5e52641b19ebdef5757e2d649e22fe0ad64dce9602207d6959f551752be0.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dea9826e01e8b9d69853dc9311ed25d4a10e44fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
