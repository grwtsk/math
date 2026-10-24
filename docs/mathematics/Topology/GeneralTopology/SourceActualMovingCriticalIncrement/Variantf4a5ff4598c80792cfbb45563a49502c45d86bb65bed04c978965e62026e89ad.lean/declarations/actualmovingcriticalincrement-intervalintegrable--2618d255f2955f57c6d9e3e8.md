# actualMovingCriticalIncrement_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83346414-9d82-96ae-ee95-ab6f80477bb8",
  "kind": "theorem",
  "lexical_name": "actualMovingCriticalIncrement_intervalIntegrable",
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
  "slug": "actualmovingcriticalincrement-intervalintegrable--2618d255f2955f57c6d9e3e8",
  "source": {
    "blob": "c218db2ab8027173411f51c506a6f17980c6ee6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 129,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualMovingCriticalIncrement/Variantf4a5ff4598c80792cfbb45563a49502c45d86bb65bed04c978965e62026e89ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2618d255f2955f57c6d9e3e8e4d708c83ff26577f7eaefb3a5c17217ebdef988",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualMovingCriticalIncrement/Variantf4a5ff4598c80792cfbb45563a49502c45d86bb65bed04c978965e62026e89ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83346414-9d82-96ae-ee95-ab6f80477bb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMovingCriticalIncrement_intervalIntegrable {A : ℝ} (hA : 1 ≤ A) :
    IntervalIntegrable (fun t => actualClosedMangoldtIncrement t (2 * A) *
      Real.exp (t / 2) * (sourceCorrelation explicitSecondDerivative A t / 4 +
        deriv (sourceCorrelation explicitSecondDerivative A) t / 2))
      volume (Real.log 7) (2 * A) := by
  have ha : 0 ≤ Real.log (7 : ℝ) := Real.log_nonneg (by norm_num)
  have hab : Real.log (7 : ℝ) ≤ 2 * A := by
    have he := Real.sum_le_exp_of_nonneg (by norm_num : (0 : ℝ) ≤ 2) 5
    norm_num [Finset.sum_range_succ] at he
    have hlog : Real.log (7 : ℝ) ≤ 2 :=
      (Real.log_le_iff_le_exp (by norm_num)).2 (by linarith)
    linarith
  have hi : IntervalIntegrable
      (fun t => actualCenteredMangoldtLogError t - actualCenteredMangoldtLogError (2 * A))
      volume (Real.log 7) (2 * A) :=
    (centered_error_intervalIntegrable ha hab).sub intervalIntegrable_const
  have hp : 0 < A := by linarith
  have hj := hi.mul_continuousOn (kernel_continuous A hp).continuousOn
  apply hj.congr
  rw [uIoc_of_le hab]
  intro t ht
  dsimp only
  rw [actualCenteredError_increment_eq_closed ht.2]
  ring

/-- Exact subtraction of the actual moving value retains the full lower boundary. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualMovingCriticalIncrement/Variantf4a5ff4598c80792cfbb45563a49502c45d86bb65bed04c978965e62026e89ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualMovingCriticalIncrement/Variantf4a5ff4598c80792cfbb45563a49502c45d86bb65bed04c978965e62026e89ad.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c218db2ab8027173411f51c506a6f17980c6ee6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
