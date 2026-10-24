# actual_f7_head_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58c52895-5c5e-b1fd-9a5a-e9bd1faa4e4f",
  "kind": "theorem",
  "lexical_name": "actual_f7_head_abs_le",
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
  "slug": "actual-f7-head-abs-le--bc09d5ed8cdb9d21113f3fb7",
  "source": {
    "blob": "2d8e9d7f5f6f1ab74e5559c930dd30f53e10a9e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 86,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceGrowingXiHead/Variant1f8379b58f369b9b88ee97fea79f418c9007a2f33d9c39ec51b9df52bb561dc7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc09d5ed8cdb9d21113f3fb70268ebc93ca4caffb67ab9ebf8ec8505fe298c92",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceGrowingXiHead/Variant1f8379b58f369b9b88ee97fea79f418c9007a2f33d9c39ec51b9df52bb561dc7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58c52895-5c5e-b1fd-9a5a-e9bd1faa4e4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_f7_head_abs_le {A H : ℝ} (hA : 91 ≤ A)
    (hH : Real.log 7 ≤ H) (hHA : H ≤ 2 * A) :
    |-(∫ t in Real.log 7..H, actualF7 t * actualXiCurvature A t)| ≤
      10 * actualXiExponentialEnvelopeConstant / A ^ 2 * H * Real.exp (H / 2) := by
  have _hi := source_integrable hA hH hHA
  let D := actualXiExponentialEnvelopeConstant
  let k := 10 * D / A ^ 2
  have hD : 0 ≤ D := coefficient_nonneg
  have hk : 0 ≤ k := by dsimp [k]; positivity
  have hb : IntervalIntegrable (fun t : ℝ =>
      k * (1 + t / 2) * Real.exp (t / 2)) volume (Real.log 7) H :=
    (by fun_prop : Continuous _).intervalIntegrable _ _
  have hp : ∀ t ∈ Ioc (Real.log 7) H,
      ‖actualF7 t * actualXiCurvature A t‖ ≤ k * (1 + t / 2) * Real.exp (t / 2) := by
    intro t ht
    have ht0 : 0 ≤ t := (Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 7)).trans ht.1.le
    have hF : |actualF7 t| ≤ 2 * D * Real.exp (t / 2) := by
      rw [f7_eq_old_primitive]
      exact (actualAnchoredXiTailPrimitive_abs_le ht.1.le).trans
        (by dsimp [D]; nlinarith [coefficient_nonneg, Real.sqrt_nonneg 7])
    have hK := actualXiCurvature_abs_le hA ht0
    rw [Real.norm_eq_abs, abs_mul]
    calc
      _ ≤ (2 * D * Real.exp (t / 2)) * (5 / A ^ 2 * (1 + t / 2)) :=
        mul_le_mul hF hK (abs_nonneg _) (by positivity)
      _ = _ := by dsimp [k]; ring
  have hn := intervalIntegral.norm_integral_le_of_norm_le hH (ae_of_all _ hp) hb
  have hd (t : ℝ) : HasDerivAt (fun t : ℝ => k * t * Real.exp (t / 2))
      (k * (1 + t / 2) * Real.exp (t / 2)) t := by
    convert (((hasDerivAt_id t).const_mul k).mul
      (((hasDerivAt_id t).div_const 2).exp)) using 1 <;> try rfl
    dsimp
    ring
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t) hb,
    Real.norm_eq_abs] at hn
  have hlow : 0 ≤ k * Real.log 7 * Real.exp (Real.log 7 / 2) := by
    exact mul_nonneg (mul_nonneg hk (Real.log_nonneg (by norm_num))) (Real.exp_pos _).le
  rw [abs_neg]
  exact hn.trans (by dsimp [k, D]; linarith)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceGrowingXiHead/Variant1f8379b58f369b9b88ee97fea79f418c9007a2f33d9c39ec51b9df52bb561dc7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceGrowingXiHead/Variant1f8379b58f369b9b88ee97fea79f418c9007a2f33d9c39ec51b9df52bb561dc7.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d8e9d7f5f6f1ab74e5559c930dd30f53e10a9e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
