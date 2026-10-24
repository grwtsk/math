# scaledSampling_variation_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f96c2d6-7548-12b4-8ffc-6a8707117c55",
  "kind": "theorem",
  "lexical_name": "scaledSampling_variation_le",
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
  "slug": "scaledsampling-variation-le--672df21aa93b7b99edc4f322",
  "source": {
    "blob": "d53a2c43c1827ea04aad4b3940771d1767928b39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 60,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaVariation/Variantb4bb57b998a7100ab4657be24a60cee99378514ed927a2b1235ddb89ec63372b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:672df21aa93b7b99edc4f322134b62109ed44f68cb229fc94adf39d124ef1045",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaVariation/Variantb4bb57b998a7100ab4657be24a60cee99378514ed927a2b1235ddb89ec63372b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f96c2d6-7548-12b4-8ffc-6a8707117c55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaledSampling_variation_le (A q : ℝ) (N : ℕ)
    (hA : 1 ≤ A) (hq : 0 < q) (hN : 1 ≤ N) :
    (∫ t in (1 : ℝ)..(N : ℝ),
      |deriv (fun t : ℝ ↦ sourceSamplingKernel A (q * t)) t|) ≤
      2 * (4 + 10 * Real.sqrt (65 / 3) / A + 4 * (65 / (3 * A ^ 2))) / Real.sqrt q := by
  let C : ℝ := 4 + 10 * Real.sqrt (65 / 3) / A + 4 * (65 / (3 * A ^ 2))
  have hA0 : 0 < A := by linarith
  have hC : 0 ≤ C := by dsimp [C]; positivity
  have hNr : (1 : ℝ) ≤ N := by exact_mod_cast hN
  have hd := (intervalIntegrable_iff_integrableOn_Icc_of_le hNr).mpr
    (scaledSampling_derivative_integrableOn A q N hA hq)
  have hm := (intervalIntegrable_iff_integrableOn_Icc_of_le hNr).mpr
    (majorant_integrableOn q C N hq)
  calc
    _ ≤ ∫ t in (1 : ℝ)..(N : ℝ), q * (C / (q * t * Real.sqrt (q * t))) := by
      apply intervalIntegral.integral_mono_on hNr hd.abs hm
      intro t ht
      have ht0 : 0 < t := lt_of_lt_of_le zero_lt_one ht.1
      rw [(scaledSampling_hasDerivAt A q t hA hq ht0).deriv, abs_mul, abs_of_pos hq]
      exact mul_le_mul_of_nonneg_left
        (sourceSamplingKernel_derivative_abs_le A (q * t) hA (mul_pos hq ht0)) hq.le
    _ ≤ _ := majorant_integral_le q C N hq hC hN

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaVariation/Variantb4bb57b998a7100ab4657be24a60cee99378514ed927a2b1235ddb89ec63372b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaVariation/Variantb4bb57b998a7100ab4657be24a60cee99378514ed927a2b1235ddb89ec63372b.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d53a2c43c1827ea04aad4b3940771d1767928b39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
