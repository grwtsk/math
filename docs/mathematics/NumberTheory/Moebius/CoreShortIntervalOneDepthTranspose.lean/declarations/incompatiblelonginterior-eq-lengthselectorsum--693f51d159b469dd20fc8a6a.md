# incompatibleLongInterior_eq_lengthSelectorSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c1c9dce-bc45-311b-4fb5-366ab0bce526",
  "kind": "theorem",
  "lexical_name": "incompatibleLongInterior_eq_lengthSelectorSum",
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
  "slug": "incompatiblelonginterior-eq-lengthselectorsum--693f51d159b469dd20fc8a6a",
  "source": {
    "blob": "1e3c92b3f18c2b5f7c293fd6e85945b675c2dcbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 82,
    "path": "GRWTSK/NumberTheory/Moebius/CoreShortIntervalOneDepthTranspose.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:693f51d159b469dd20fc8a6ac3d48625a0f5f47269145fe7c9ac4b43d738b9ae",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreShortIntervalOneDepthTranspose.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c1c9dce-bc45-311b-4fb5-366ab0bce526`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem incompatibleLongInterior_eq_lengthSelectorSum
    {j t : ℕ}
    (hcore : t ∈ coreLongDeepDepths j) :
    incompatibleDyadicBlockLongInteriorL1Majorant j t =
      ∑ n ∈ Finset.Ico (logarithmicShiftThreshold j)
          (2 ^ (j + 1) + 1),
        incompatibleDyadicStartBlockL1 j n *
          coreInteriorLengthCoefficient j t n := by
  let H : ℕ := logarithmicShiftThreshold j
  let N : ℕ := harmonicShiftCount j t
  have hHN : H ≤ N := by
    simpa [H, N, coreLongDeepDepths] using
      (Finset.mem_filter.mp hcore).2
  have hNY : N < 2 ^ (j + 1) + 1 := by
    dsimp [N]
    unfold harmonicShiftCount harmonicShiftUpper harmonicShiftLower
    omega
  unfold incompatibleDyadicBlockLongInteriorL1Majorant
  rw [sum_succ_range_filter_eq_Ico
    (F := fun n =>
      incompatibleDyadicStartBlockL1 j n *
        harmonicShiftSecondDifference j t (n - 1))
    hHN]
  calc
    (∑ n ∈ Finset.Ico H N,
      incompatibleDyadicStartBlockL1 j n *
        harmonicShiftSecondDifference j t (n - 1)) =
      ∑ n ∈ Finset.Ico H N,
        incompatibleDyadicStartBlockL1 j n *
          coreInteriorLengthCoefficient j t n := by
      apply Finset.sum_congr rfl
      intro n hn
      have hnI := Finset.mem_Ico.mp hn
      unfold coreInteriorLengthCoefficient
      simp [H, N, hnI.1, hnI.2]
    _ = ∑ n ∈ Finset.Ico H (2 ^ (j + 1) + 1),
        incompatibleDyadicStartBlockL1 j n *
          coreInteriorLengthCoefficient j t n := by
      rw [sum_Ico_eq_sum_Ico_indicator_of_le
        (f := fun n =>
          incompatibleDyadicStartBlockL1 j n *
            coreInteriorLengthCoefficient j t n)
        (h := Nat.le_of_lt hNY)]
      apply Finset.sum_congr rfl
      intro n hn
      by_cases hnN : n < N
      · simp [hnN]
      · have hnot : ¬ (H ≤ n ∧ n < N) := by
          intro h
          exact hnN h.2
        simp [coreInteriorLengthCoefficient, hnot]
  where
    sum_Ico_eq_sum_Ico_indicator_of_le
        (f : ℕ → ℝ) {a b c : ℕ} (h : b ≤ c) :
        (∑ n ∈ Finset.Ico a b, f n) =
          ∑ n ∈ Finset.Ico a c, if n < b then f n else 0 := by
      rw [← Finset.sum_filter]
      congr 1
      ext n
      simp only [Finset.mem_filter, Finset.mem_Ico]
      constructor
      · intro hn
        exact ⟨⟨hn.1, lt_of_lt_of_le hn.2 h⟩, hn.2⟩
      · intro hn
        exact ⟨hn.1.1, hn.2⟩

/-- One-depth incompatible contribution is exactly its lengthwise selector
sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreShortIntervalOneDepthTranspose.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreShortIntervalOneDepthTranspose.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e3c92b3f18c2b5f7c293fd6e85945b675c2dcbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
