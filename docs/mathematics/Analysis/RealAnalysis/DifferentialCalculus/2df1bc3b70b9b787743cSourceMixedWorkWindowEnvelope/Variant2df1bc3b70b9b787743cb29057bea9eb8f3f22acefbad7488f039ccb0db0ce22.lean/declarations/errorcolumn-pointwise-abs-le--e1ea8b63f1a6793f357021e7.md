# errorColumn_pointwise_abs_le

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
      "line": 163,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2df1bc3b70b9b787743cb29057bea9eb8f3f22acefbad7488f039ccb0db0ce22.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:035d3424-4de4-3bfc-f15c-85a19bc963d4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:467da8c2-4f6e-4088-d6e1-c7984ac838b5",
  "kind": "theorem",
  "lexical_name": "errorColumn_pointwise_abs_le",
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
  "slug": "errorcolumn-pointwise-abs-le--e1ea8b63f1a6793f357021e7",
  "source": {
    "blob": "2678fee565a59464a537ba4de43e8d79d197e383",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 163,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/2df1bc3b70b9b787743cSourceMixedWorkWindowEnvelope/Variant2df1bc3b70b9b787743cb29057bea9eb8f3f22acefbad7488f039ccb0db0ce22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1ea8b63f1a6793f357021e7e4370d994be529fdadca9ce3724311686b615ffc",
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

Occurrence: `result:467da8c2-4f6e-4088-d6e1-c7984ac838b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem errorColumn_pointwise_abs_le {A k : ℝ} (hA : 1 ≤ A)
    (hk : 0 < k) (offset t : ℝ) :
    |(mangoldtLogError t - offset) *
      (sourceColumnTimeDeriv A t k - sourceColumnTimeDeriv A t (k + 1))| ≤
      (162826 / (7623 * A ^ 2) + 1 / 4) *
        (|(mangoldtLogError t - offset)| * Real.exp (t / 2)) * cellMass k := by
  let c := 162826 / (7623 * A ^ 2) + (1 / 4 : ℝ)
  have hp : 0 < A := by linarith
  have hab : k ≤ k + 1 := by linarith
  have hi : IntervalIntegrable (mixedDensity A t) volume k (k + 1) :=
    (mixedDensity_continuousOn_cell hp hk t).intervalIntegrable_of_Icc hab
  rw [sourceColumnTimeDeriv_sub_eq_neg_cell hp hk]
  rw [show (mangoldtLogError t - offset) * -(∫ u in k..(k + 1), mixedDensity A t u) =
    -(∫ u in k..(k + 1), (mangoldtLogError t - offset) * mixedDensity A t u) by
      rw [intervalIntegral.integral_const_mul]; ring, abs_neg]
  calc
    _ ≤ ∫ u in k..(k + 1), |(mangoldtLogError t - offset) * mixedDensity A t u| :=
      intervalIntegral.abs_integral_le_integral_abs hab
    _ ≤ ∫ u in k..(k + 1),
        (c * (|(mangoldtLogError t - offset)| * Real.exp (t / 2))) * (1 / (u * Real.sqrt u)) := by
      apply intervalIntegral.integral_mono_on hab (hi.const_mul _).abs
        ((inverse_cell_integrable hk).const_mul _)
      intro u hu
      have hu0 : 0 < u := hk.trans_le hu.1
      have hden : 0 ≤ Real.exp (t / 2) / (u * Real.sqrt u) := by positivity
      dsimp only [mixedDensity]
      rw [abs_mul, abs_mul, abs_of_nonneg hden]
      have h := mul_le_mul_of_nonneg_left (actual_mixed_kernel_abs_le A (t + Real.log u) hA)
        (mul_nonneg (abs_nonneg ((mangoldtLogError t - offset))) hden)
      convert h using 1 <;> first | rfl | ring
    _ = _ := by rw [intervalIntegral.integral_const_mul]; rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/2df1bc3b70b9b787743cSourceMixedWorkWindowEnvelope/Variant2df1bc3b70b9b787743cb29057bea9eb8f3f22acefbad7488f039ccb0db0ce22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/2df1bc3b70b9b787743cSourceMixedWorkWindowEnvelope/Variant2df1bc3b70b9b787743cb29057bea9eb8f3f22acefbad7488f039ccb0db0ce22.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2678fee565a59464a537ba4de43e8d79d197e383` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
