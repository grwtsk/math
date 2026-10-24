# circleAverage_log_norm_sub_const₁_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bf5b260515787adb57c1b012687a2ddbc02c2599",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9b1498f882e4819fb0863f068728d3a075f27ea2c80cea3d8f3a6b24fe6590be.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:96f2f290-32db-70f2-d843-69201b3a5b0d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1704578d-9adb-4042-8e3f-dfd50ef52760",
  "kind": "lemma",
  "lexical_name": "circleAverage_log_norm_sub_const₁_integral",
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
  "slug": "circleaverage-log-norm-sub-const-integral--14b2e86d4f8c9fe08e14fa35",
  "source": {
    "blob": "bf5b260515787adb57c1b012687a2ddbc02c2599",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 79,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PosLogEqCircleAverage/Variant9b1498f882e4819fb0863f068728d3a075f27ea2c80cea3d8f3a6b24fe6590be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14b2e86d4f8c9fe08e14fa35e05df42ba29bec34e51925a50adba3a083bee969",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PosLogEqCircleAverage/Variant9b1498f882e4819fb0863f068728d3a075f27ea2c80cea3d8f3a6b24fe6590be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1704578d-9adb-4042-8e3f-dfd50ef52760`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma circleAverage_log_norm_sub_const₁_integral :
    ∫ x in 0..(2 * π), log (4 * sin (x / 2) ^ 2) / 2 = 0 := by
  calc ∫ x in 0..(2 * π), log (4 * sin (x / 2) ^ 2) / 2
  _ = ∫ (x : ℝ) in 0..π, log (4 * sin x ^ 2) := by
    have {x : ℝ} : x / 2 = 2⁻¹ * x := by ring
    rw [intervalIntegral.integral_div, this, inv_mul_integral_comp_div
      (f := fun x ↦ log (4 * sin x ^ 2))]
    simp
  _ = ∫ (x : ℝ) in 0..π, log 4 + 2 * log (sin x) := by
    apply integral_congr_codiscreteWithin
    apply codiscreteWithin_mono (by tauto : Ι 0 π ⊆ Set.univ)
    have : AnalyticOnNhd ℝ (4 * sin · ^ 2) Set.univ := fun _ _ ↦ by fun_prop
    have := this.preimage_zero_mem_codiscrete (x := π / 2)
    simp only [sin_pi_div_two, one_pow, mul_one, ne_eq, OfNat.ofNat_ne_zero, not_false_eq_true,
      Set.preimage_compl, forall_const] at this
    filter_upwards [this] with a ha
    simp only [Set.mem_compl_iff, Set.mem_preimage, Set.mem_singleton_iff, mul_eq_zero,
      OfNat.ofNat_ne_zero, ne_eq, not_false_eq_true, pow_eq_zero_iff, false_or] at ha
    rw [log_mul (by simp) (by simp_all), log_pow, Nat.cast_ofNat]
  _ = (∫ (x : ℝ) in 0..π, log 4) + 2 * ∫ (x : ℝ) in 0..π, log (sin x) := by
    rw [integral_add _root_.intervalIntegrable_const
      (by apply intervalIntegrable_log_sin.const_mul 2), intervalIntegral.integral_const_mul]
  _ = 0 := by
    simp only [intervalIntegral.integral_const, sub_zero, smul_eq_mul, integral_log_sin_zero_pi,
      (by norm_num : (4 : ℝ) = 2 * 2), log_mul two_ne_zero two_ne_zero]
    ring

/--
If `a : ℂ` has norm one, then the circle average `circleAverage (log ‖· - a‖) 0 1` vanishes.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PosLogEqCircleAverage/Variant9b1498f882e4819fb0863f068728d3a075f27ea2c80cea3d8f3a6b24fe6590be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PosLogEqCircleAverage/Variant9b1498f882e4819fb0863f068728d3a075f27ea2c80cea3d8f3a6b24fe6590be.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf5b260515787adb57c1b012687a2ddbc02c2599` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
