# parityResidueVarianceDiagonalEndpointMajorant_ge_window

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cace4a70-bfa0-f9d8-3827-a72d573e7d47",
  "kind": "theorem",
  "lexical_name": "parityResidueVarianceDiagonalEndpointMajorant_ge_window",
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
  "slug": "parityresiduevariancediagonalendpointmajorant-ge-window--a0d9c2a9ff136c1375e02229",
  "source": {
    "blob": "1d1ec38cf19de026fec5a6303c686037851a750f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 429,
    "line": 381,
    "path": "GRWTSK/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0d9c2a9ff136c1375e02229588e18bec98a6964854ac63ac049743409e10141",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cace4a70-bfa0-f9d8-3827-a72d573e7d47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 381–429.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem parityResidueVarianceDiagonalEndpointMajorant_ge_window
    {m : ℕ} (hm : 20 ≤ m)
    (hMass : QuarterThreeQuarterSquarefreeMass (m * m)) :
    (((largeSquareModulusWindow m).card : ℝ)) *
        (((m * m : ℕ) : ℝ) / 128) ≤
      parityResidueVarianceDiagonalEndpointMajorant (m * m) := by
  classical
  unfold parityResidueVarianceDiagonalEndpointMajorant
  calc
    (((largeSquareModulusWindow m).card : ℝ)) *
        (((m * m : ℕ) : ℝ) / 128) =
      ∑ d ∈ largeSquareModulusWindow m,
        (((m * m : ℕ) : ℝ) / 128) := by
          simp [nsmul_eq_mul]
    _ ≤ ∑ d ∈ largeSquareModulusWindow m,
        if hd : 0 < d then
          let : NeZero d := ⟨ne_of_gt hd⟩
          parityResidueVarianceDiagonalModulusMajorant (m * m) d
        else 0 := by
          apply Finset.sum_le_sum
          intro d hd
          have hdpos : 0 < d := by
            have heff := largeSquareModulusWindow_subset_effective hm hd
            exact (Finset.mem_Ico.mp (Finset.mem_filter.mp heff).1).1
          simp only [dif_pos hdpos]
          let : NeZero d := ⟨ne_of_gt hdpos⟩
          obtain ⟨hhalf, hfour⟩ :=
            largeSquareModulusWindow_scale hm hd
          exact
            parityResidueVarianceDiagonalModulusMajorant_ge_endpoint_div_128
              (m * m) d hhalf hfour hMass
    _ ≤ ∑ d ∈ effectiveEndpointSquareModulusSet (m * m),
        if hd : 0 < d then
          let : NeZero d := ⟨ne_of_gt hd⟩
          parityResidueVarianceDiagonalModulusMajorant (m * m) d
        else 0 := by
          apply Finset.sum_le_sum_of_subset_of_nonneg
          · intro d hd
            exact largeSquareModulusWindow_subset_effective hm hd
          · intro d hd _hnot
            have hdpos : 0 < d :=
              (Finset.mem_Ico.mp (Finset.mem_filter.mp hd).1).1
            simp only [dif_pos hdpos]
            let : NeZero d := ⟨ne_of_gt hdpos⟩
            exact
              parityResidueVarianceDiagonalModulusMajorant_nonneg
                (m * m) d

/-- Cubic finite lower bound for the positive endpoint majorant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean#L381).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d1ec38cf19de026fec5a6303c686037851a750f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
