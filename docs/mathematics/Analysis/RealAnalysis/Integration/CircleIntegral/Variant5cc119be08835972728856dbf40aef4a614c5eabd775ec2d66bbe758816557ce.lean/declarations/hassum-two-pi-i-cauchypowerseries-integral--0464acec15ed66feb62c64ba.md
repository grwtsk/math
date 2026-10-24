# hasSum_two_pi_I_cauchyPowerSeries_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "449a45484d6858b06efd95f1ef62ece22fee65e3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 681,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5cc119be08835972728856dbf40aef4a614c5eabd775ec2d66bbe758816557ce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:980e45e3-9578-c176-b502-d143285bccee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:19ef85f1-d10b-d666-3c08-f677d124ff92",
  "kind": "theorem",
  "lexical_name": "hasSum_two_pi_I_cauchyPowerSeries_integral",
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
  "slug": "hassum-two-pi-i-cauchypowerseries-integral--0464acec15ed66feb62c64ba",
  "source": {
    "blob": "449a45484d6858b06efd95f1ef62ece22fee65e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 708,
    "line": 681,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CircleIntegral/Variant5cc119be08835972728856dbf40aef4a614c5eabd775ec2d66bbe758816557ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0464acec15ed66feb62c64bab36cdfd78864cf5c70e6a4146690e0d929731efc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CircleIntegral/Variant5cc119be08835972728856dbf40aef4a614c5eabd775ec2d66bbe758816557ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19ef85f1-d10b-d666-3c08-f677d124ff92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 681–708.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSum_two_pi_I_cauchyPowerSeries_integral {f : ℂ → E} {c : ℂ} {R : ℝ} {w : ℂ}
    (hf : CircleIntegrable f c R) (hw : ‖w‖ < R) :
    HasSum (fun n : ℕ => ∮ z in C(c, R), (w / (z - c)) ^ n • (z - c)⁻¹ • f z)
      (∮ z in C(c, R), (z - (c + w))⁻¹ • f z) := by
  have hR : 0 < R := (norm_nonneg w).trans_lt hw
  have hwR : ‖w‖ / R ∈ Ico (0 : ℝ) 1 :=
    ⟨div_nonneg (norm_nonneg w) hR.le, (div_lt_one hR).2 hw⟩
  refine intervalIntegral.hasSum_integral_of_dominated_convergence
      (fun n θ => ‖f (circleMap c R θ)‖ * (‖w‖ / R) ^ n) (fun n => ?_) (fun n => ?_) ?_ ?_ ?_
  · simp only [deriv_circleMap]
    apply_rules [AEStronglyMeasurable.smul, hf.def'.1] <;> apply Measurable.aestronglyMeasurable
    · fun_prop
    · fun_prop
    · fun_prop
  · simp [norm_smul, abs_of_pos hR, mul_left_comm R, inv_mul_cancel_left₀ hR.ne', mul_comm ‖_‖]
  · exact Eventually.of_forall fun _ _ => (summable_geometric_of_lt_one hwR.1 hwR.2).mul_left _
  · simpa only [tsum_mul_left, tsum_geometric_of_lt_one hwR.1 hwR.2] using
      hf.norm.mul_continuousOn continuousOn_const
  · refine Eventually.of_forall fun θ _ => HasSum.const_smul _ ?_
    simp only [smul_smul]
    refine HasSum.smul_const ?_ _
    have : ‖w / (circleMap c R θ - c)‖ < 1 := by simpa [abs_of_pos hR] using hwR.2
    convert! (hasSum_geometric_of_norm_lt_one this).mul_right _ using 1
    simp [← sub_sub, ← mul_inv, sub_mul, div_mul_cancel₀ _ (circleMap_ne_center hR.ne')]

/-- For any circle integrable function `f`, the power series `cauchyPowerSeries f c R`, `R > 0`,
converges to the Cauchy integral `(2 * π * I : ℂ)⁻¹ • ∮ z in C(c, R), (z - w)⁻¹ • f z` on the open
disc `Metric.ball c R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CircleIntegral/Variant5cc119be08835972728856dbf40aef4a614c5eabd775ec2d66bbe758816557ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CircleIntegral/Variant5cc119be08835972728856dbf40aef4a614c5eabd775ec2d66bbe758816557ce.lean#L681).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `449a45484d6858b06efd95f1ef62ece22fee65e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
