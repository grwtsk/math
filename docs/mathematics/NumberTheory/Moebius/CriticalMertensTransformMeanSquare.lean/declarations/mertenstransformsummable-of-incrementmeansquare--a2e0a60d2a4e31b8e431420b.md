# mertensTransformSummable_of_incrementMeanSquare

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:84b932fe-94e8-9733-ae70-3d728341d699",
  "kind": "theorem",
  "lexical_name": "mertensTransformSummable_of_incrementMeanSquare",
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
  "slug": "mertenstransformsummable-of-incrementmeansquare--a2e0a60d2a4e31b8e431420b",
  "source": {
    "blob": "e0bdccbc91f91f3869f0b7f01958149fdc30e2e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 145,
    "path": "GRWTSK/NumberTheory/Moebius/CriticalMertensTransformMeanSquare.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2e0a60d2a4e31b8e431420b7f50f3d414931accd6aa26725dc534fa4f9a2eab",
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

Occurrence: `result:84b932fe-94e8-9733-ae70-3d728341d699`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensTransformSummable_of_incrementMeanSquare {ε : ℝ}
    (hε0 : 0 < ε) (hε1 : ε < 1)
    (hs : CriticalMertensIncrementMeanSquare ε) :
    CriticalMertensTransformSummable := by
  let S : ℝ := ∑' j : ℕ,
    (pickupMertensPrefix j * criticalEndpointGap j) ^ 2 *
      ((j + 1 : ℕ) : ℝ) ^ (1 - ε)
  have hS : 0 ≤ S := by
    dsimp [S]
    exact tsum_nonneg (fun _ => by positivity)
  have hmajor : Summable (fun n : ℕ =>
      (S / ε) * (n : ℝ) ^ (ε - 2)) :=
    (Real.summable_nat_rpow.mpr (by linarith)).mul_left (S / ε)
  unfold CriticalMertensTransformSummable
  apply hmajor.of_nonneg_of_le
  · intro n
    exact mul_nonneg (sq_nonneg _)
      (exponentialLogDrop_nonneg (by norm_num) n)
  · intro n
    cases n with
    | zero =>
        have hright : 0 ≤ (S / ε) * (0 : ℝ) ^ (ε - 2) :=
          mul_nonneg (div_nonneg hS hε0.le) (Real.rpow_nonneg (by norm_num) _)
        simpa [criticalMertensTransform, exponentialLogDrop] using hright
    | succ n =>
        have hn : 1 ≤ n + 1 := by omega
        have hnpos : (0 : ℝ) < ((n + 1 : ℕ) : ℝ) := by positivity
        have hA : criticalMertensIncrementSquare ε (n + 1) ≤ S := by
          dsimp [S]
          exact criticalMertensIncrementSquare_le_tsum hs (n + 1)
        have hq0 := criticalMertensTransform_sq_le_meanSquare
          hε0 hε1.le (n + 1)
        have hfactor : 0 ≤ (((n + 1 : ℕ) : ℝ) ^ ε / ε) := by positivity
        have hq : criticalMertensTransform (n + 1) ^ 2 ≤
            S * (((n + 1 : ℕ) : ℝ) ^ ε / ε) :=
          hq0.trans (mul_le_mul_of_nonneg_right hA hfactor)
        have hdrop := exponentialLogDrop_one_le_inv_sq hn
        calc
          criticalMertensTransform (n + 1) ^ 2 *
              exponentialLogDrop 1 (n + 1) ≤
              (S * (((n + 1 : ℕ) : ℝ) ^ ε / ε)) *
                (1 / ((n + 1 : ℕ) : ℝ) ^ 2) := by
            exact mul_le_mul hq hdrop
              (exponentialLogDrop_nonneg (by norm_num) (n + 1))
              (by positivity)
          _ = (S / ε) * ((n + 1 : ℕ) : ℝ) ^ (ε - 2) := by
            rw [show (1 / ((n + 1 : ℕ) : ℝ) ^ 2) =
                ((n + 1 : ℕ) : ℝ) ^ (-(2 : ℝ)) by
              rw [Real.rpow_neg hnpos.le]
              norm_num [Real.rpow_natCast, div_eq_mul_inv]]
            calc
              S * (((n + 1 : ℕ) : ℝ) ^ ε / ε) *
                  ((n + 1 : ℕ) : ℝ) ^ (-(2 : ℝ)) =
                  (S / ε) * (((n + 1 : ℕ) : ℝ) ^ ε *
                    ((n + 1 : ℕ) : ℝ) ^ (-(2 : ℝ))) := by
                field_simp [hε0.ne']
              _ = (S / ε) * ((n + 1 : ℕ) : ℝ) ^
                  (ε + (-(2 : ℝ))) := by
                rw [Real.rpow_add hnpos]
              _ = (S / ε) * ((n + 1 : ℕ) : ℝ) ^ (ε - 2) := by ring_nf

/-- The mean-square increment route reaches the completed critical boundary. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CriticalMertensTransformMeanSquare.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CriticalMertensTransformMeanSquare.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0bdccbc91f91f3869f0b7f01958149fdc30e2e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
