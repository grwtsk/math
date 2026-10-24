# borelCaratheodory'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d1f220d-3394-fdf0-da8b-ac4e032d154c",
  "kind": "theorem",
  "lexical_name": "borelCaratheodory'",
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
  "slug": "borelcaratheodory--f09fe399518b5d5a1132c8cb",
  "source": {
    "blob": "61d2b21c5e2eb2ba1b8f51b31fde3207433917e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 59,
    "path": "GRWTSK/Analysis/ComplexAnalysis/StrongPNTPrefix/Varianta82a130572f01bc35054a80ceec703788368ba1bdfbe27bd274cb29a0b073fa8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f09fe399518b5d5a1132c8cb8cb3f86800c6e2e03def0b4bf5c47fe72c711d0a",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/StrongPNTPrefix/Varianta82a130572f01bc35054a80ceec703788368ba1bdfbe27bd274cb29a0b073fa8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d1f220d-3394-fdf0-da8b-ac4e032d154c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem borelCaratheodory' {M r R : ℝ} {f : ℂ → ℂ} {z : ℂ}
    (Mpos : 0 < M) (Rpos : 0 < R) (hyp_r : r < R)
    (analytic : AnalyticOn ℂ f (Metric.ball 0 R))
    (zeroAtZero : f 0 = 0)
    (realPartBounded : ∀ z ∈ Metric.ball 0 R, (f z).re ≤ M)
    (hyp_z : z ∈ Metric.closedBall 0 r) :
    ‖f z‖ ≤ (2 * M * r) / (R - r) := by
  have h_borelCaratheodory : ∀ ε > 0, ‖f z‖ ≤ (2 * (M + ε) * ‖z‖) / (R - ‖z‖) := by
    intro ε εpos;
    apply Complex.borelCaratheodory_zero;
    exacts [by linarith, analytic.differentiableOn, fun z hz => by rw [Set.mem_setOf_eq]; linarith [realPartBounded z hz], Rpos, by exact Metric.mem_ball.mpr ( lt_of_le_of_lt ( Metric.mem_closedBall.mp hyp_z ) hyp_r ), zeroAtZero]
  have h_limit : ‖f z‖ ≤ (2 * M * ‖z‖) / (R - ‖z‖) := by
    have h_limit : Filter.Tendsto (fun ε => (2 * (M + ε) * ‖z‖) / (R - ‖z‖)) (nhdsWithin 0 (Set.Ioi 0)) (nhds ((2 * M * ‖z‖) / (R - ‖z‖))) := by
      refine tendsto_nhdsWithin_of_tendsto_nhds (Continuous.tendsto' ?_ _ _ (by ring_nf))
      exact ((continuous_const.mul (continuous_const.add continuous_id)).mul continuous_const).div_const _
    exact le_of_tendsto_of_tendsto tendsto_const_nhds h_limit ( Filter.eventually_of_mem self_mem_nhdsWithin fun ε hε => h_borelCaratheodory ε hε );
  rw [mem_closedBall_iff_norm, sub_zero] at hyp_z
  refine le_trans h_limit ?_;
  gcongr
  · exact mul_nonneg (mul_nonneg (zero_le_two) (le_of_lt Mpos)) (le_trans (norm_nonneg z) hyp_z)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/StrongPNTPrefix/Varianta82a130572f01bc35054a80ceec703788368ba1bdfbe27bd274cb29a0b073fa8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/StrongPNTPrefix/Varianta82a130572f01bc35054a80ceec703788368ba1bdfbe27bd274cb29a0b073fa8.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61d2b21c5e2eb2ba1b8f51b31fde3207433917e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
