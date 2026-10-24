# exponential_integral_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f2cb5d2-8e73-619b-19b2-fa59ffc73260",
  "kind": "theorem",
  "lexical_name": "exponential_integral_le",
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
  "slug": "exponential-integral-le--1e7df12243618d56a7c34b33",
  "source": {
    "blob": "ad60a5a9834db0333db0572a2085845103b9d80a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 409,
    "line": 382,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e7df12243618d56a7c34b3368f06302599218e107f5f3d17c2cc838f0aa6605",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f2cb5d2-8e73-619b-19b2-fa59ffc73260`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–409.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exponential_integral_le (s : ℝ) (hs : s < 4) {t : ℝ} (ht : 0 ≤ t) :
    (∫ x, Real.exp (s * x) ∂momentMeasure t) ≤
      thetaPhiDecayConstant * Real.exp (-4 * t) / (4 - s) := by
  rw [integral_momentMeasure_eq_source ht (fun x : ℝ => Real.exp (s * x))
    (Real.continuous_exp.comp (continuous_const.mul continuous_id))]
  have hint := (integrable_momentMeasure_iff ht (fun x : ℝ => Real.exp (s * x)) (Real.continuous_exp.comp
    (continuous_const.mul continuous_id))).mp (exponential_integrable s hs ht)
  calc
    _ ≤ ∫ u in Ici t, (thetaPhiDecayConstant * Real.exp (-s * t)) * Real.exp ((s - 4) * u) :=
      setIntegral_mono_on hint (exponential_majorant_integrable s hs t) measurableSet_Ici
        (fun u hu => source_exp_le_majorant s ht hu)
    _ = (thetaPhiDecayConstant * Real.exp (-s * t)) *
        (-Real.exp ((s - 4) * t) / (s - 4)) := by
      rw [integral_const_mul, integral_Ici_eq_integral_Ioi,
        integral_exp_mul_Ioi (by linarith : s - 4 < 0)]
    _ = thetaPhiDecayConstant * (Real.exp (-s * t) * Real.exp ((s - 4) * t)) /
        (4 - s) := by
      have hd1 : s - 4 ≠ 0 := by linarith
      have hd2 : 4 - s ≠ 0 := by linarith
      field_simp
      ring
    _ = _ := by
      rw [← Real.exp_add]
      congr 3
      ring


/-- Markov's lower estimate retains the actual positive tail mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad60a5a9834db0333db0572a2085845103b9d80a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
