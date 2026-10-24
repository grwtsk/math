# abs_coreGrowingShiftFirstDifferenceTail_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2e9e007-2195-ea83-d7fb-6f17252e4f5d",
  "kind": "theorem",
  "lexical_name": "abs_coreGrowingShiftFirstDifferenceTail_le",
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
  "slug": "abs-coregrowingshiftfirstdifferencetail-le--80a190341c45c1467a6d8b9f",
  "source": {
    "blob": "594f9b1aa2f5aaeed3d38d5dd386832eb8d4c70b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 191,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftUniformTwoPoint.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80a190341c45c1467a6d8b9fc3c2ddee646dc7e37fa014d9ec9d083c136a28ba",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftUniformTwoPoint.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2e9e007-2195-ea83-d7fb-6f17252e4f5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_coreGrowingShiftFirstDifferenceTail_le
    {j t : ℕ} {U : ℝ}
    (henv : CoreGrowingShiftPrefixEnvelope j U)
    (hcore : t ∈ coreLongDeepDepths j) :
    |coreGrowingShiftFirstDifferenceTail j t| ≤
      ((harmonicShiftCount j t - logarithmicShiftThreshold j : ℕ) : ℝ) *
        U * ((((2 ^ j : ℕ) : ℝ))⁻¹) ^ 2 := by
  unfold coreGrowingShiftFirstDifferenceTail
  calc
    |∑ k ∈ Finset.Ico (logarithmicShiftThreshold j)
        (harmonicShiftCount j t),
      mertensTwoPointPrefix
          (harmonicShiftLower j t + k) (t + 1) *
        harmonicShiftFirstDifference j t k| ≤
      ∑ k ∈ Finset.Ico (logarithmicShiftThreshold j)
          (harmonicShiftCount j t),
        |mertensTwoPointPrefix
            (harmonicShiftLower j t + k) (t + 1) *
          harmonicShiftFirstDifference j t k| :=
      Finset.abs_sum_le_sum_abs _ _
    _ = ∑ k ∈ Finset.Ico (logarithmicShiftThreshold j)
          (harmonicShiftCount j t),
        |mertensTwoPointPrefix
            (harmonicShiftLower j t + k) (t + 1)| *
          harmonicShiftFirstDifference j t k := by
      apply Finset.sum_congr rfl
      intro k _hk
      rw [abs_mul,
        abs_of_nonneg (harmonicShiftFirstDifference_nonneg_all j t k)]
    _ ≤ ∑ _k ∈ Finset.Ico (logarithmicShiftThreshold j)
          (harmonicShiftCount j t),
        U * ((((2 ^ j : ℕ) : ℝ))⁻¹) ^ 2 := by
      apply Finset.sum_le_sum
      intro k hk
      have hkI := Finset.mem_Ico.mp hk
      exact mul_le_mul
        (henv.2 t hcore k hkI.2)
        (harmonicShiftFirstDifference_le_leftScale_inv_sq j t k)
        (harmonicShiftFirstDifference_nonneg_all j t k)
        henv.1
    _ = ((harmonicShiftCount j t -
          logarithmicShiftThreshold j : ℕ) : ℝ) *
        U * ((((2 ^ j : ℕ) : ℝ))⁻¹) ^ 2 := by
      simp [Finset.card_Ico, mul_assoc]

/-- At one core depth, the anchor and tail together use exactly `N` copies of
a reciprocal-square coefficient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftUniformTwoPoint.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftUniformTwoPoint.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `594f9b1aa2f5aaeed3d38d5dd386832eb8d4c70b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
