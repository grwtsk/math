# mangoldt_inner_eq_quotient_truncated_column_increments

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff9f38be-dbb7-9a26-8f09-14d6686dff93",
  "kind": "theorem",
  "lexical_name": "mangoldt_inner_eq_quotient_truncated_column_increments",
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
  "slug": "mangoldt-inner-eq-quotient-truncated-column-increments--fff1d9108bbfbd8d78d7fd0b",
  "source": {
    "blob": "c9a43eff4db160a1c8118c908419c49d8ba62786",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 50,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/06SourceMangoldtColumnQuotient/Variante262d5b1bb5144ae8176c3d34a6567c89e7af43b303ada3acf487bbd0e221297.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fff1d9108bbfbd8d78d7fd0b4e10c9bfbfca3fb9283f60e7ec2fc5a9f298290a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/06SourceMangoldtColumnQuotient/Variante262d5b1bb5144ae8176c3d34a6567c89e7af43b303ada3acf487bbd0e221297.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff9f38be-dbb7-9a26-8f09-14d6686dff93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mangoldt_inner_eq_quotient_truncated_column_increments (A : ℝ) (hA : 1 ≤ A) :
    ⟪mangoldtL2 A hA, centeredMobiusReflectedL2 A hA⟫_ℝ =
      let U := vaughanCutoff A
      let N := sourceKernelCutoff A
      let K := N / (U + 1)
      let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
      let R : ℕ → ℝ := fun k =>
        ∑ m ∈ longInventory A, vonMangoldt m * sourcePlainWeight A ((m * k : ℕ) : ℝ)
      ∑ k ∈ Finset.Ioc U K, B k * (R k - R (k + 1)) := by
  classical
  let U := vaughanCutoff A
  let N := sourceKernelCutoff A
  let K := N / (U + 1)
  let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
  let R : ℕ → ℝ := fun k =>
    ∑ m ∈ longInventory A, vonMangoldt m * sourcePlainWeight A ((m * k : ℕ) : ℝ)
  have hU : 1 ≤ U := vaughanCutoff_pos A hA
  have hUN : U ≤ N := vaughanCutoff_le_sourceKernelCutoff A hA
  have hN : 0 < N := by omega
  have hK : K < N := Nat.div_lt_self hN (by omega : 1 < U + 1)
  have hsub : Finset.Ioc U K ⊆ Finset.Ico (U + 1) N := by
    intro k hk
    rcases Finset.mem_Ioc.mp hk with ⟨hu, hk⟩
    exact Finset.mem_Ico.mpr ⟨by omega, hk.trans_lt hK⟩
  rw [mangoldt_inner_eq_centered_prefix_column_increments A hA]
  change (∑ k ∈ Finset.Ico (U + 1) N, B k * (R k - R (k + 1))) =
    ∑ k ∈ Finset.Ioc U K, B k * (R k - R (k + 1))
  symm
  apply Finset.sum_subset hsub
  intro k hk hnot
  have hu : U < k := by have := (Finset.mem_Ico.mp hk).1; omega
  have htail : K < k := by
    by_contra hn
    exact hnot (Finset.mem_Ioc.mpr ⟨hu, by omega⟩)
  have hzero : R k = 0 := actual_mangoldt_column_eq_zero_of_quotient_lt A hA k htail
  have hsucc : R (k + 1) = 0 :=
    actual_mangoldt_column_eq_zero_of_quotient_lt A hA (k + 1) (by
      change K < k + 1
      omega)
  rw [hzero, hsucc, sub_self, mul_zero]

/-- The literal covariance remainder retains the complete original compensation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/06SourceMangoldtColumnQuotient/Variante262d5b1bb5144ae8176c3d34a6567c89e7af43b303ada3acf487bbd0e221297.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/06SourceMangoldtColumnQuotient/Variante262d5b1bb5144ae8176c3d34a6567c89e7af43b303ada3acf487bbd0e221297.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9a43eff4db160a1c8118c908419c49d8ba62786` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
