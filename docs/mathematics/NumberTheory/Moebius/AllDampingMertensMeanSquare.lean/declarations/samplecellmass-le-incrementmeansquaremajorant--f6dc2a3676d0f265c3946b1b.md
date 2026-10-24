# sampleCellMass_le_incrementMeanSquareMajorant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d8b9c1d-3a2f-5dbf-120e-2476b1e1fca0",
  "kind": "theorem",
  "lexical_name": "sampleCellMass_le_incrementMeanSquareMajorant",
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
  "slug": "samplecellmass-le-incrementmeansquaremajorant--f6dc2a3676d0f265c3946b1b",
  "source": {
    "blob": "4cbc405fb9a73e89fda0aed98213efe49e8eaa7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 87,
    "path": "GRWTSK/NumberTheory/Moebius/AllDampingMertensMeanSquare.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6dc2a3676d0f265c3946b1b935df478f9264fd08ebcd385a0f40ac85782f07e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/AllDampingMertensMeanSquare.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d8b9c1d-3a2f-5dbf-120e-2476b1e1fca0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sampleCellMass_le_incrementMeanSquareMajorant
    {σ ε : ℝ} (hσ : 0 < σ) (hε0 : 0 < ε)
    (hε1 : ε ≤ 1) (hεσ : ε < σ)
    (hs : CriticalMertensIncrementMeanSquare ε) (k : ℕ) :
    sampleCellMass σ k ≤
      (4 * sampleIncrementMeanSquareTotal ε / ε) *
        (((k + 1 : ℕ) : ℝ) ^ (ε - σ - 1)) := by
  let n : ℕ := k + 1
  have hn : 1 ≤ n := by
    dsimp [n]
    omega
  have hnpos : (0 : ℝ) < (n : ℝ) := by positivity
  have hQ := sampleResidue_sq_le_incrementMeanSquareTotal
    hε0 hε1 hs hn
  have hdrop : exponentialLogDrop σ n ≤
      σ * (n : ℝ) ^ (-σ - 1) :=
    exponentialLogDrop_le_rpow hσ.le hn
  have hscale : 0 ≤ (4 / σ : ℝ) := by positivity
  have hpow : 0 ≤ σ * (n : ℝ) ^ (-σ - 1) := by positivity
  rw [sampleCellMass_eq_exponentialLogDrop]
  change (4 / σ) * sampleResidue n ^ 2 * exponentialLogDrop σ n ≤ _
  calc
    (4 / σ) * sampleResidue n ^ 2 * exponentialLogDrop σ n ≤
        (4 / σ) * sampleResidue n ^ 2 *
          (σ * (n : ℝ) ^ (-σ - 1)) := by
      exact mul_le_mul_of_nonneg_left hdrop
        (mul_nonneg hscale (sq_nonneg _))
    _ ≤ (4 / σ) *
          (sampleIncrementMeanSquareTotal ε * ((n : ℝ) ^ ε / ε)) *
          (σ * (n : ℝ) ^ (-σ - 1)) := by
      exact mul_le_mul_of_nonneg_right
        (mul_le_mul_of_nonneg_left hQ hscale) hpow
    _ = (4 * sampleIncrementMeanSquareTotal ε / ε) *
          ((n : ℝ) ^ ε * (n : ℝ) ^ (-σ - 1)) := by
      field_simp [hσ.ne', hε0.ne']
    _ = (4 * sampleIncrementMeanSquareTotal ε / ε) *
          ((n : ℝ) ^ (ε - σ - 1)) := by
      rw [← Real.rpow_add hnpos]
      congr 2
      ring

/-- The existing increment mean square supplies the actual fixed-rate cell
series whenever `0 < ε < σ` and `ε ≤ 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/AllDampingMertensMeanSquare.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/AllDampingMertensMeanSquare.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cbc405fb9a73e89fda0aed98213efe49e8eaa7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
