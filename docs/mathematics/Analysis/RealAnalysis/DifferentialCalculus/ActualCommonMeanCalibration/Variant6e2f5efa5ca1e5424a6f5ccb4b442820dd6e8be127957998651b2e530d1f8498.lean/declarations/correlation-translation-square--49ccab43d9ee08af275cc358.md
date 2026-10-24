# correlation_translation_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2b4b30a-b392-6190-1087-2f6e87b1fdd9",
  "kind": "theorem",
  "lexical_name": "correlation_translation_square",
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
  "slug": "correlation-translation-square--49ccab43d9ee08af275cc358",
  "source": {
    "blob": "e46e204bdb20abfb4870ac6686de23a48adb1e49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 36,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCommonMeanCalibration/Variant6e2f5efa5ca1e5424a6f5ccb4b442820dd6e8be127957998651b2e530d1f8498.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49ccab43d9ee08af275cc358dfaf76b15f65d85c8e26f523b41a893e5363cbac",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualCommonMeanCalibration/Variant6e2f5efa5ca1e5424a6f5ccb4b442820dd6e8be127957998651b2e530d1f8498.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2b4b30a-b392-6190-1087-2f6e87b1fdd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correlation_translation_square {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    1 - sourceCorrelation explicitSecondDerivative A t =
      (∫ x : ℝ, (normalizedTest explicitSecondDerivative A x -
        normalizedTest explicitSecondDerivative A (x-t)) ^ 2) / 2 := by
  let q := normalizedTest explicitSecondDerivative A
  have hq : Integrable (fun x : ℝ => (q x)^2) := normalized_square_integrable A hA
  have ht := hq.comp_sub_right t
  have hmul : Integrable (fun x : ℝ => q x * q (x-t)) :=
    correlation_product_integrable A t (by linarith)
  have he : (fun x : ℝ => (q x-q (x-t))^2) =
      fun x => (q x)^2 - 2*(q x*q (x-t)) + (q (x-t))^2 := by
    funext x
    ring
  change 1 - (∫ x : ℝ, q x*q (x-t)) = (∫ x : ℝ, (q x-q (x-t))^2)/2
  rw [he, integral_add
    (f := fun x : ℝ => (q x)^2-2*(q x*q (x-t)))
    (g := fun x : ℝ => (q (x-t))^2) (hq.sub (hmul.const_mul 2)) ht,
    integral_sub (f := fun x : ℝ => (q x)^2)
      (g := fun x : ℝ => 2*(q x*q (x-t))) hq (hmul.const_mul 2), integral_const_mul,
    integral_sub_right_eq_self (fun x : ℝ => (q x)^2) t]
  have hn : (∫ x : ℝ, (q x)^2) = 1 := normalized_square_integral A hA
  rw [hn]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualCommonMeanCalibration/Variant6e2f5efa5ca1e5424a6f5ccb4b442820dd6e8be127957998651b2e530d1f8498.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCommonMeanCalibration/Variant6e2f5efa5ca1e5424a6f5ccb4b442820dd6e8be127957998651b2e530d1f8498.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e46e204bdb20abfb4870ac6686de23a48adb1e49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
