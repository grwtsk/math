# weightedMertensDyadicSignedAbelDispersionMajorant_sq_le_globalQuadratic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c53e760d-3171-8be0-a243-bde9d525c1da",
  "kind": "theorem",
  "lexical_name": "weightedMertensDyadicSignedAbelDispersionMajorant_sq_le_globalQuadratic",
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
  "slug": "weightedmertensdyadicsignedabeldispersionmajorant-sq-le-globalquadratic--116e508b35b8ee406f7868d8",
  "source": {
    "blob": "229cd628b8834cf55b43117b934fe7b1186cc1dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 188,
    "path": "GRWTSK/NumberTheory/Moebius/SignedAbelMassQuadraticEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:116e508b35b8ee406f7868d861f43760dc2dcfcf1eff2aa58e316b9a579523d5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/SignedAbelMassQuadraticEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c53e760d-3171-8be0-a243-bde9d525c1da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedMertensDyadicSignedAbelDispersionMajorant_sq_le_globalQuadratic
    (j : ℕ) :
    weightedMertensDyadicSignedAbelDispersionMajorant j ^ 2 ≤
      weightedMertensSignedAbelGlobalQuadraticEnergy j := by
  let Y : ℕ := 2 ^ (j + 1)
  have hYpos : 0 < Y := by
    dsimp [Y]
    positivity
  have hcauchy :
      weightedMertensDyadicSignedAbelDispersionMajorant j ^ 2 ≤
        (Y : ℝ) *
          ∑ t ∈ Finset.range Y,
            weightedMertensSignedAbelDepthDispersionRadius j t ^ 2 := by
    unfold weightedMertensDyadicSignedAbelDispersionMajorant
    rw [show 2 ^ (j + 1) = Y by rfl]
    simpa using
      (sq_sum_le_card_mul_sum_sq
        (s := Finset.range Y)
        (f := fun t => weightedMertensSignedAbelDepthDispersionRadius j t))
  have hsum :
      (∑ t ∈ Finset.range Y,
          weightedMertensSignedAbelDepthDispersionRadius j t ^ 2) ≤
        weightedMertensSignedAbelGlobalQuadraticEnergy j *
          (Y : ℝ)⁻¹ := by
    calc
      (∑ t ∈ Finset.range Y,
          weightedMertensSignedAbelDepthDispersionRadius j t ^ 2) ≤
        ∑ t ∈ Finset.range Y,
          weightedMertensSignedAbelDepthQuadraticEnergy j t *
            (Y : ℝ)⁻¹ := by
          apply Finset.sum_le_sum
          intro t _ht
          simpa [Y] using
            weightedMertensSignedAbelDepthDispersionRadius_sq_le j t
      _ = weightedMertensSignedAbelGlobalQuadraticEnergy j *
          (Y : ℝ)⁻¹ := by
          simp [weightedMertensSignedAbelGlobalQuadraticEnergy, Y,
            Finset.sum_mul]
  calc
    weightedMertensDyadicSignedAbelDispersionMajorant j ^ 2 ≤
        (Y : ℝ) *
          ∑ t ∈ Finset.range Y,
            weightedMertensSignedAbelDepthDispersionRadius j t ^ 2 := hcauchy
    _ ≤ (Y : ℝ) *
        (weightedMertensSignedAbelGlobalQuadraticEnergy j *
          (Y : ℝ)⁻¹) := by
      exact mul_le_mul_of_nonneg_left hsum (Nat.cast_nonneg Y)
    _ = weightedMertensSignedAbelGlobalQuadraticEnergy j := by
      have hYne : (Y : ℝ) ≠ 0 := by positivity
      field_simp

/-- Equivalent square-root presentation of the previous finite comparison. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/SignedAbelMassQuadraticEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/SignedAbelMassQuadraticEnergy.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `229cd628b8834cf55b43117b934fe7b1186cc1dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
