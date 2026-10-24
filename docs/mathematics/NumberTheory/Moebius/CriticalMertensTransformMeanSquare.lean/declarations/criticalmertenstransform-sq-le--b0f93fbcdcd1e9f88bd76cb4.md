# criticalMertensTransform_sq_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cfd8ff36-69c1-93c9-3e21-5e2c8412f93b",
  "kind": "theorem",
  "lexical_name": "criticalMertensTransform_sq_le",
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
  "slug": "criticalmertenstransform-sq-le--b0f93fbcdcd1e9f88bd76cb4",
  "source": {
    "blob": "e0bdccbc91f91f3869f0b7f01958149fdc30e2e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 35,
    "path": "GRWTSK/NumberTheory/Moebius/CriticalMertensTransformMeanSquare.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0f93fbcdcd1e9f88bd76cb460acf0bb8cbde1bd9833744faa277e7556d297fd",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CriticalMertensTransformMeanSquare.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cfd8ff36-69c1-93c9-3e21-5e2c8412f93b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalMertensTransform_sq_le (ε : ℝ) (n : ℕ) :
    criticalMertensTransform n ^ 2 ≤
      criticalMertensIncrementSquare ε n *
        ∑ j ∈ Finset.range n,
          ((j + 1 : ℕ) : ℝ) ^ (ε - 1) := by
  let x : ℕ → ℝ := fun j =>
    (pickupMertensPrefix j * criticalEndpointGap j) *
      ((j + 1 : ℕ) : ℝ) ^ ((1 - ε) / 2)
  let y : ℕ → ℝ := fun j =>
    ((j + 1 : ℕ) : ℝ) ^ ((ε - 1) / 2)
  have hxy (j : ℕ) : x j * y j =
      pickupMertensPrefix j * criticalEndpointGap j := by
    have hj : (0 : ℝ) < ((j + 1 : ℕ) : ℝ) := by positivity
    dsimp [x, y]
    calc
      pickupMertensPrefix j * criticalEndpointGap j *
          ((j + 1 : ℕ) : ℝ) ^ ((1 - ε) / 2) *
          ((j + 1 : ℕ) : ℝ) ^ ((ε - 1) / 2) =
          (pickupMertensPrefix j * criticalEndpointGap j) *
            (((j + 1 : ℕ) : ℝ) ^ ((1 - ε) / 2) *
              ((j + 1 : ℕ) : ℝ) ^ ((ε - 1) / 2)) := by ring
      _ = (pickupMertensPrefix j * criticalEndpointGap j) *
          ((j + 1 : ℕ) : ℝ) ^
            (((1 - ε) / 2) + ((ε - 1) / 2)) := by
        rw [Real.rpow_add hj]
      _ = pickupMertensPrefix j * criticalEndpointGap j := by
        rw [show ((1 - ε) / 2) + ((ε - 1) / 2) = 0 by ring,
          Real.rpow_zero, mul_one]
  have hx (j : ℕ) : x j ^ 2 =
      (pickupMertensPrefix j * criticalEndpointGap j) ^ 2 *
        ((j + 1 : ℕ) : ℝ) ^ (1 - ε) := by
    have hj : (0 : ℝ) < ((j + 1 : ℕ) : ℝ) := by positivity
    dsimp [x]
    rw [mul_pow]
    congr 1
    calc
      (((j + 1 : ℕ) : ℝ) ^ ((1 - ε) / 2)) ^ 2 =
          (((j + 1 : ℕ) : ℝ) ^ ((1 - ε) / 2)) ^ (2 : ℝ) := by
        exact (Real.rpow_natCast _ 2).symm
      _ = ((j + 1 : ℕ) : ℝ) ^ (((1 - ε) / 2) * 2) := by
        rw [Real.rpow_mul hj.le]
      _ = ((j + 1 : ℕ) : ℝ) ^ (1 - ε) := by ring_nf
  have hy (j : ℕ) : y j ^ 2 =
      ((j + 1 : ℕ) : ℝ) ^ (ε - 1) := by
    have hj : (0 : ℝ) < ((j + 1 : ℕ) : ℝ) := by positivity
    dsimp [y]
    calc
      (((j + 1 : ℕ) : ℝ) ^ ((ε - 1) / 2)) ^ 2 =
          (((j + 1 : ℕ) : ℝ) ^ ((ε - 1) / 2)) ^ (2 : ℝ) := by
        exact (Real.rpow_natCast _ 2).symm
      _ = ((j + 1 : ℕ) : ℝ) ^ (((ε - 1) / 2) * 2) := by
        rw [Real.rpow_mul hj.le]
      _ = ((j + 1 : ℕ) : ℝ) ^ (ε - 1) := by ring_nf
  have hcs := Finset.sum_mul_sq_le_sq_mul_sq (R := ℝ) (Finset.range n) x y
  unfold criticalMertensTransform criticalMertensIncrementSquare
  simpa only [hxy, hx, hy] using hcs

/-- The complementary Cauchy weight has the sharp elementary allowance
`n^ε / ε` for `0 < ε ≤ 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CriticalMertensTransformMeanSquare.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CriticalMertensTransformMeanSquare.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0bdccbc91f91f3869f0b7f01958149fdc30e2e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
