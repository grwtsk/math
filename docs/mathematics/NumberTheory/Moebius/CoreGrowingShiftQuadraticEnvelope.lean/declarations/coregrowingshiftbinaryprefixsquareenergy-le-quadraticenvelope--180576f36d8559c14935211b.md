# coreGrowingShiftBinaryPrefixSquareEnergy_le_quadraticEnvelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a376e53-254c-966d-2d46-db0df1bf5881",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftBinaryPrefixSquareEnergy_le_quadraticEnvelope",
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
  "slug": "coregrowingshiftbinaryprefixsquareenergy-le-quadraticenvelope--180576f36d8559c14935211b",
  "source": {
    "blob": "46930434177d17555a32065d0e7b15762b019a90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 105,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuadraticEnvelope.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:180576f36d8559c14935211b914092e6048a5050e1396a23d18b765188d6f01c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftQuadraticEnvelope.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a376e53-254c-966d-2d46-db0df1bf5881`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftBinaryPrefixSquareEnergy_le_quadraticEnvelope
    {j : ℕ} {B : ℝ}
    (henv : DyadicMertensTwoPointQuadraticEnvelope j B) :
    coreGrowingShiftBinaryPrefixSquareEnergy j ≤
      (B * (((2 ^ (j + 1) : ℕ) : ℝ))) ^ 2 := by
  obtain ⟨hB, U, hshift, hquad⟩ := henv
  let Y : ℕ := 2 ^ (j + 1)
  let S : ℝ := ∑ h ∈ Finset.Ico 1 Y, U h ^ 2
  have hS : 0 ≤ S := by
    dsimp [S]
    positivity
  have hcard :
      ((coreLongDeepDepths j).card : ℝ) ≤ (Y : ℝ) := by
    exact_mod_cast coreLongDeepDepths_card_le_rightScale j
  have hquadY : S ≤ B ^ 2 * (Y : ℝ) := by
    simpa [S, Y] using hquad
  unfold coreGrowingShiftBinaryPrefixSquareEnergy
  calc
    (∑ t ∈ coreLongDeepDepths j,
      coreGrowingShiftBinaryPrefixSquareDepth j t) ≤
      ∑ _t ∈ coreLongDeepDepths j, S := by
      apply Finset.sum_le_sum
      intro t _ht
      simpa [S, Y] using
        coreGrowingShiftBinaryPrefixSquareDepth_le_shiftSquareSum
          (j := j) (t := t) U hshift
    _ = ((coreLongDeepDepths j).card : ℝ) * S := by simp
    _ ≤ (Y : ℝ) * S := by
      exact mul_le_mul_of_nonneg_right hcard hS
    _ ≤ (Y : ℝ) * (B ^ 2 * (Y : ℝ)) := by
      exact mul_le_mul_of_nonneg_left hquadY (Nat.cast_nonneg Y)
    _ = (B * (Y : ℝ)) ^ 2 := by ring
    _ = (B * (((2 ^ (j + 1) : ℕ) : ℝ))) ^ 2 := by rfl

/-- The repository's existing all-scale quadratic two-point prefix source
supplies the active growing-shift prefix square energy with constant loss two. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftQuadraticEnvelope.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuadraticEnvelope.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46930434177d17555a32065d0e7b15762b019a90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
