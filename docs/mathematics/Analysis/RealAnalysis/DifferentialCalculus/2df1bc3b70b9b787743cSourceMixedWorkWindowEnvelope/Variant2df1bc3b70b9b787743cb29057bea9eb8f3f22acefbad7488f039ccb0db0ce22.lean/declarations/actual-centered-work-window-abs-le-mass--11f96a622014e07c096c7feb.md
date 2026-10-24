# actual_centered_work_window_abs_le_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2678fee565a59464a537ba4de43e8d79d197e383",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 252,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2df1bc3b70b9b787743cb29057bea9eb8f3f22acefbad7488f039ccb0db0ce22.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c8450417-4741-62ad-42be-aa05ea909aa2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2a318a82-c5b2-13b1-9bfc-6afdaaac2d24",
  "kind": "theorem",
  "lexical_name": "actual_centered_work_window_abs_le_mass",
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
  "slug": "actual-centered-work-window-abs-le-mass--11f96a622014e07c096c7feb",
  "source": {
    "blob": "2678fee565a59464a537ba4de43e8d79d197e383",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 252,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/2df1bc3b70b9b787743cSourceMixedWorkWindowEnvelope/Variant2df1bc3b70b9b787743cb29057bea9eb8f3f22acefbad7488f039ccb0db0ce22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11f96a622014e07c096c7febe22c9399d356756c4063a01cc7f5d24160b620da",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/2df1bc3b70b9b787743cSourceMixedWorkWindowEnvelope/Variant2df1bc3b70b9b787743cb29057bea9eb8f3f22acefbad7488f039ccb0db0ce22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a318a82-c5b2-13b1-9bfc-6afdaaac2d24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_centered_work_window_abs_le_mass
    (A offset p q : ℝ) (hA : 1 ≤ A) (hpq : p ≤ q) :
    |∫ t in p..q, (mangoldtLogError t - offset) * deriv (jointMangoldtTestProfile A) t| ≤
      (162826 / (7623 * A ^ 2) + 1 / 4) *
        (∫ t in p..q, |mangoldtLogError t - offset| * Real.exp (t / 2)) *
          columnEnvelopeMass A := by
  let c := 162826 / (7623 * A ^ 2) + (1 / 4 : ℝ)
  have hd := (actual_jointTest_contDiff A (by linarith : 0 < A)).continuous_deriv_one
  have hi : IntervalIntegrable
      (fun t => (mangoldtLogError t - offset) * deriv (jointMangoldtTestProfile A) t)
      volume p q := (error_integrable offset p q hpq).mul_continuousOn hd.continuousOn
  have he := weightedErrorAbs_integrable offset p q hpq
  calc
    _ ≤ ∫ t in p..q,
        |(mangoldtLogError t - offset) * deriv (jointMangoldtTestProfile A) t| :=
      intervalIntegral.abs_integral_le_integral_abs hpq
    _ ≤ ∫ t in p..q,
        c * (|mangoldtLogError t - offset| * Real.exp (t / 2)) * columnEnvelopeMass A := by
      apply intervalIntegral.integral_mono_on hpq hi.abs
        ((he.const_mul c).mul_const (columnEnvelopeMass A))
      intro t _
      rw [abs_mul]
      have h := mul_le_mul_of_nonneg_left
        (actual_jointTest_derivative_abs_le_columnMass A t hA)
        (abs_nonneg (mangoldtLogError t - offset))
      convert h using 1 <;> first | rfl | ring
    _ = _ := by
      rw [intervalIntegral.integral_mul_const, intervalIntegral.integral_const_mul]

end
end FormalResearch.RiemannHypothesis.SourceMixedWorkWindowEnvelope
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/2df1bc3b70b9b787743cSourceMixedWorkWindowEnvelope/Variant2df1bc3b70b9b787743cb29057bea9eb8f3f22acefbad7488f039ccb0db0ce22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/2df1bc3b70b9b787743cSourceMixedWorkWindowEnvelope/Variant2df1bc3b70b9b787743cb29057bea9eb8f3f22acefbad7488f039ccb0db0ce22.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2678fee565a59464a537ba4de43e8d79d197e383` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
