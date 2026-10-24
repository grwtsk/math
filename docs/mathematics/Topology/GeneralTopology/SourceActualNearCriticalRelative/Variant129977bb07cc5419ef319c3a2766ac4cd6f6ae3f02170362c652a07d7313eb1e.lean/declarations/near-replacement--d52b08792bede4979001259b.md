# near_replacement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2fbb5562-f0f3-a0c8-1c3f-81178c2ada4a",
  "kind": "theorem",
  "lexical_name": "near_replacement",
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
  "slug": "near-replacement--d52b08792bede4979001259b",
  "source": {
    "blob": "2723146e491395a37d6ec6982163f55eb412e8bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 98,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualNearCriticalRelative/Variant129977bb07cc5419ef319c3a2766ac4cd6f6ae3f02170362c652a07d7313eb1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d52b08792bede4979001259b9849c7522b2344c1ae19da0e23290549e398475c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualNearCriticalRelative/Variant129977bb07cc5419ef319c3a2766ac4cd6f6ae3f02170362c652a07d7313eb1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fbb5562-f0f3-a0c8-1c3f-81178c2ada4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem near_replacement {A T : ℝ} (hA : 91 ≤ A) (hT : 0 ≤ T) :
    |(∫ t in 0..T, criticalKernel A t) -
      (1 / 2 : ℝ) * ∫ t in 0..T, Real.exp (t / 2) * relativePsiError t| ≤
      (5 / 2 : ℝ) * (Real.log 4 + 3) * Real.exp (T / 2) * T ^ 2 / A ^ 2 := by
  have hp : 0 < A := by linarith
  have hi := (relative_intervalIntegrable hT).mul_continuousOn
    (by fun_prop : ContinuousOn (fun t : ℝ => Real.exp (t / 2)) (uIcc 0 T))
  have hi' : IntervalIntegrable (fun t => Real.exp (t / 2) * relativePsiError t)
      volume 0 T := by simpa only [mul_comm] using hi
  have hK : IntervalIntegrable (criticalKernel A) volume 0 T := by
    exact hi'.mul_continuousOn
      (criticalWeight_continuous (by linarith : 1 ≤ A)).continuousOn
  have he : (fun t => criticalKernel A t - (1 / 2 : ℝ) *
      (Real.exp (t / 2) * relativePsiError t)) =
      fun t => Real.exp (t / 2) * relativePsiError t * (criticalWeight A t - 1 / 2) := by
    funext t
    unfold criticalKernel
    ring
  rw [← intervalIntegral.integral_const_mul, ← intervalIntegral.integral_sub hK
    (hi'.const_mul (1 / 2 : ℝ)), he]
  have hg : IntervalIntegrable (fun t : ℝ =>
      (Real.log 4 + 3) / A ^ 2 *
        (Real.exp (t / 2) * ((5 / 4 : ℝ) * t ^ 2 + 5 * t))) volume 0 T := by
    apply Continuous.intervalIntegrable
    fun_prop
  have hb := intervalIntegral.norm_integral_le_of_norm_le
    (f := fun t => Real.exp (t / 2) * relativePsiError t * (criticalWeight A t - 1 / 2))
    (g := fun t => (Real.log 4 + 3) / A ^ 2 *
      (Real.exp (t / 2) * ((5 / 4 : ℝ) * t ^ 2 + 5 * t))) hT
    (ae_of_all _ (fun t ht => by
    have ht0 : 0 ≤ t := ht.1.le
    rw [Real.norm_eq_abs, abs_mul, abs_mul, Real.abs_exp]
    have hm := mul_le_mul_of_nonneg_left
      (mul_le_mul (relative_abs_le t) (actualCriticalWeight_sub_half_abs_le hA ht0)
        (abs_nonneg _) (by positivity : 0 ≤ Real.log 4 + 3))
      (Real.exp_pos (t / 2)).le
    exact (by simpa only [mul_assoc] using hm).trans_eq (by ring))) hg
  rw [Real.norm_eq_abs, intervalIntegral.integral_const_mul, weight_moment] at hb
  exact hb.trans_eq (by ring)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualNearCriticalRelative/Variant129977bb07cc5419ef319c3a2766ac4cd6f6ae3f02170362c652a07d7313eb1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualNearCriticalRelative/Variant129977bb07cc5419ef319c3a2766ac4cd6f6ae3f02170362c652a07d7313eb1e.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2723146e491395a37d6ec6982163f55eb412e8bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
