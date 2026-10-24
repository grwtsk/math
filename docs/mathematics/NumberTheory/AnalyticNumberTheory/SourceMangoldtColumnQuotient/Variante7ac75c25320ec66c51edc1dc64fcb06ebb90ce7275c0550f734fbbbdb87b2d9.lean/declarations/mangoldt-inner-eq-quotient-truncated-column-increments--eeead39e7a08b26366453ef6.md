# mangoldt_inner_eq_quotient_truncated_column_increments

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7eb97ef9ce62af6b36df71d86c99dd09aa9b9299",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 42,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e7ac75c25320ec66c51edc1dc64fcb06ebb90ce7275c0550f734fbbbdb87b2d9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:67d5dd38-f7e0-7e97-e76d-c0472a1236a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:137fdc4d-f573-1a3e-cb49-de3ac35a60d9",
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
  "slug": "mangoldt-inner-eq-quotient-truncated-column-increments--eeead39e7a08b26366453ef6",
  "source": {
    "blob": "7eb97ef9ce62af6b36df71d86c99dd09aa9b9299",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 42,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtColumnQuotient/Variante7ac75c25320ec66c51edc1dc64fcb06ebb90ce7275c0550f734fbbbdb87b2d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eeead39e7a08b26366453ef6c1cc6f7c1241964c008799ba6e8e538aa1fd8232",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceMangoldtColumnQuotient/Variante7ac75c25320ec66c51edc1dc64fcb06ebb90ce7275c0550f734fbbbdb87b2d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:137fdc4d-f573-1a3e-cb49-de3ac35a60d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–81.

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
    actual_mangoldt_column_eq_zero_of_quotient_lt A hA (k + 1) (by omega)
  rw [hzero, hsucc, sub_self, mul_zero]

/-- The literal covariance remainder retains the complete original compensation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceMangoldtColumnQuotient/Variante7ac75c25320ec66c51edc1dc64fcb06ebb90ce7275c0550f734fbbbdb87b2d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtColumnQuotient/Variante7ac75c25320ec66c51edc1dc64fcb06ebb90ce7275c0550f734fbbbdb87b2d9.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7eb97ef9ce62af6b36df71d86c99dd09aa9b9299` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
