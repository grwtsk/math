# actualMovingCriticalIncrement_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bdd558e8-748d-0351-5b8a-2c49fba7142b",
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
  "slug": "actualmovingcriticalincrement-intervalintegrable--6c7d42ed88f725ea86817164",
  "source": {
    "blob": "37cfea76d1825af7810c50f4cfb4aaf574793cbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 135,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt04/Variant04745f2807c21343f275aaee1a69a7b193617fddcc474e0c3390e5e3193d5299.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c7d42ed88f725ea86817164929e183ea47b07617d5779edf9a4758b5b21514b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt04/Variant04745f2807c21343f275aaee1a69a7b193617fddcc474e0c3390e5e3193d5299.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bdd558e8-748d-0351-5b8a-2c49fba7142b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–160.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt04/Variant04745f2807c21343f275aaee1a69a7b193617fddcc474e0c3390e5e3193d5299.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt04/Variant04745f2807c21343f275aaee1a69a7b193617fddcc474e0c3390e5e3193d5299.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37cfea76d1825af7810c50f4cfb4aaf574793cbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
