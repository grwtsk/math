# weightedMertensDyadicBlock_eq_pairQuadratic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb7f77cf-c9a6-125a-ae12-b40d44a2060b",
  "kind": "theorem",
  "lexical_name": "weightedMertensDyadicBlock_eq_pairQuadratic",
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
  "slug": "weightedmertensdyadicblock-eq-pairquadratic--83d4570d1d1a41b4d7669429",
  "source": {
    "blob": "d5a566b331cac8a1b8d193f0ad39cde081191605",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 239,
    "path": "GRWTSK/NumberTheory/Moebius/DyadicMertensPairKernel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83d4570d1d1a41b4d7669429193103803a552c49da90181987a3ee70b1f2021f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/DyadicMertensPairKernel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb7f77cf-c9a6-125a-ae12-b40d44a2060b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedMertensDyadicBlock_eq_pairQuadratic (j : ℕ) :
    weightedMertensDyadicBlock j =
      weightedMertensDyadicPairQuadratic j := by
  unfold weightedMertensDyadicBlock weightedMertensDyadicPairQuadratic
  calc
    (∑ n ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)),
        weightedMertensBaseTerm n) =
      ∑ n ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)),
        ∑ a ∈ Finset.Icc 1 (2 ^ (j + 1)),
          ∑ b ∈ Finset.Icc 1 (2 ^ (j + 1)),
            (if a ≤ n ∧ b ≤ n then
              moebiusReal a * moebiusReal b
            else 0) * weightedMertensDyadicWeight n := by
      apply Finset.sum_congr rfl
      intro n hn
      rw [weightedMertensBaseTerm_eq_weight,
        pickupMertensPrefix_sq_fixed_inventory
          (Nat.le_of_lt (Finset.mem_Ico.mp hn).2),
        Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro a ha
      rw [Finset.sum_mul]
    _ = ∑ a ∈ Finset.Icc 1 (2 ^ (j + 1)),
        ∑ b ∈ Finset.Icc 1 (2 ^ (j + 1)),
          moebiusReal a * moebiusReal b *
            weightedMertensPairKernel j a b := by
      rw [Finset.sum_comm]
      apply Finset.sum_congr rfl
      intro a ha
      rw [Finset.sum_comm]
      apply Finset.sum_congr rfl
      intro b hb
      unfold weightedMertensPairKernel
      rw [← Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro n hn
      by_cases hab : a ≤ n ∧ b ≤ n
      · simp [hab]
        ring
      · simp [hab]

/-- Diagonal part of the pair quadratic form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/DyadicMertensPairKernel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/DyadicMertensPairKernel.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5a566b331cac8a1b8d193f0ad39cde081191605` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
