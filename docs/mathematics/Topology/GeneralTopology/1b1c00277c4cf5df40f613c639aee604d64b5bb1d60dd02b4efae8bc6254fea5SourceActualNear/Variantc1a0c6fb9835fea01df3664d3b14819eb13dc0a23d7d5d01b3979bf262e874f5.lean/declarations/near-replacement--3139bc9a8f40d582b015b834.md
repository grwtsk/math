# near_replacement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b05e9e7-5005-7e4d-f179-696efde49237",
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
  "slug": "near-replacement--3139bc9a8f40d582b015b834",
  "source": {
    "blob": "b61c8ef27ab6d85467f28f967822735d25dc0402",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 98,
    "path": "GRWTSK/Topology/GeneralTopology/1b1c00277c4cf5df40f613c639aee604d64b5bb1d60dd02b4efae8bc6254fea5SourceActualNear/Variantc1a0c6fb9835fea01df3664d3b14819eb13dc0a23d7d5d01b3979bf262e874f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3139bc9a8f40d582b015b83497a458dc5117bb1bc4c8355ce876ac73b686d752",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/1b1c00277c4cf5df40f613c639aee604d64b5bb1d60dd02b4efae8bc6254fea5SourceActualNear/Variantc1a0c6fb9835fea01df3664d3b14819eb13dc0a23d7d5d01b3979bf262e874f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b05e9e7-5005-7e4d-f179-696efde49237`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–141.

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
    calc
      _ ≤ Real.exp (t / 2) * ((Real.log 4 + 3) *
          (((5 / 4 : ℝ) * t ^ 2 + 5 * t) / A ^ 2)) := by
        simpa only [mul_assoc] using hm
      _ = _ := by ring)) hg
  rw [Real.norm_eq_abs, intervalIntegral.integral_const_mul, weight_moment] at hb
  exact hb.trans_eq (by ring)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/1b1c00277c4cf5df40f613c639aee604d64b5bb1d60dd02b4efae8bc6254fea5SourceActualNear/Variantc1a0c6fb9835fea01df3664d3b14819eb13dc0a23d7d5d01b3979bf262e874f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/1b1c00277c4cf5df40f613c639aee604d64b5bb1d60dd02b4efae8bc6254fea5SourceActualNear/Variantc1a0c6fb9835fea01df3664d3b14819eb13dc0a23d7d5d01b3979bf262e874f5.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b61c8ef27ab6d85467f28f967822735d25dc0402` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
