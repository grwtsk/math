# every_continuous_complex_product_genuinely_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c11528e-da0a-a428-a4ad-6711792f6c3a",
  "kind": "theorem",
  "lexical_name": "every_continuous_complex_product_genuinely_integrable",
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
  "slug": "every-continuous-complex-product-genuinely-integrable--f1cec1c437678cb973f95b54",
  "source": {
    "blob": "634616b294e25d379c8b88867ae938d5124ed372",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 28,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualContinuousComplexBudget/Variant348e9cf469a340ea763f8912db75b1914034be080df396f22fec18f7e582f352.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1cec1c437678cb973f95b5460413a835bbe0cbd9d07256254f39788680e4185",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualContinuousComplexBudget/Variant348e9cf469a340ea763f8912db75b1914034be080df396f22fec18f7e582f352.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c11528e-da0a-a428-a4ad-6711792f6c3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem every_continuous_complex_product_genuinely_integrable {A Z : ℝ}
    (hA : 1 ≤ A) (hZ : 0 < Z) (J : ℝ → ℂ) (hJ : ContinuousOn J (Ioi 0)) :
    IntervalIntegrable (fun u ↦ ((C A u * Real.exp (3 * u / 16) : ℝ) : ℂ) *
      J (Z * Real.exp u)) volume (-2 * A) (2 * A) := by
  have hmap : Continuous (fun u ↦ J (Z * Real.exp u)) := by
    apply continuous_iff_continuousAt.mpr
    intro u
    have ht : ContinuousAt (fun t : ℝ ↦ Z * Real.exp t) u :=
      (continuous_const.mul Real.continuous_exp).continuousAt
    have hj : ContinuousAt J (Z * Real.exp u) :=
      hJ.continuousAt (Ioi_mem_nhds (mul_pos hZ (Real.exp_pos u)))
    exact ContinuousAt.comp (f := fun t : ℝ ↦ Z * Real.exp t) (g := J) (x := u) hj ht
  have hfactor : Continuous (fun u ↦ ((C A u * Real.exp (3 * u / 16) : ℝ) : ℂ)) :=
    Complex.continuous_ofReal.comp
      ((sourceCorrelation_contDiff A (by linarith)).continuous.mul
        (Real.continuous_exp.comp ((continuous_const.mul continuous_id).div_const 16)))
  exact (hfactor.mul hmap).intervalIntegrable _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualContinuousComplexBudget/Variant348e9cf469a340ea763f8912db75b1914034be080df396f22fec18f7e582f352.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualContinuousComplexBudget/Variant348e9cf469a340ea763f8912db75b1914034be080df396f22fec18f7e582f352.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `634616b294e25d379c8b88867ae938d5124ed372` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
