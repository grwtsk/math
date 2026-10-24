# original_reflected_kernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c203588-3dce-9476-6e7e-99f2dd44652a",
  "kind": "theorem",
  "lexical_name": "original_reflected_kernel",
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
  "slug": "original-reflected-kernel--b25ee526098ddefb63370751",
  "source": {
    "blob": "88dc7c5cfd7d236ee7cec7d1e87795159a882b12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 245,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceReflectionArithmetic/Variant147cf739c52224974aa694d5231c2286761557fd6f4ba89ec8898b1e6db4c7aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b25ee526098ddefb63370751d891697060d2b9f1b8cbb4a6d9fdf3877ea5fdb1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceReflectionArithmetic/Variant147cf739c52224974aa694d5231c2286761557fd6f4ba89ec8898b1e6db4c7aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c203588-3dce-9476-6e7e-99f2dd44652a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem original_reflected_kernel (A : ℝ) (hA : 0 < A) (u v : ℝ) :
    ⟪translation u (sourceL2 A hA), reflection (translation v (sourceL2 A hA))⟫_ℂ =
      (sourceCorrelation explicitSecondDerivative A (u+v) : ℂ) := by
  rw [L2.inner_def]
  calc
    _ = ∫ x : ℝ, ((normalizedTest explicitSecondDerivative A (x-u) *
        normalizedTest explicitSecondDerivative A (x+v) : ℝ) : ℂ) := by
      apply integral_congr_ae
      filter_upwards [translatedSource_coe_ae A hA u,
        reflection_coe_ae (translation v (sourceL2 A hA)),
        (Measure.measurePreserving_neg (volume : Measure ℝ)).quasiMeasurePreserving.ae
          (translatedSource_coe_ae A hA v)] with x hu hR hv
      rw [hu, hR, hv]
      rw [show -x-v = -(x+v) by ring, normalized_source_even hA,
        RCLike.inner_apply']
      simp
    _ = _ := by
      have ho : (∫ x : ℝ, ((normalizedTest explicitSecondDerivative A (x-u) *
          normalizedTest explicitSecondDerivative A (x+v) : ℝ) : ℂ)) =
          ((∫ x : ℝ, normalizedTest explicitSecondDerivative A (x-u) *
            normalizedTest explicitSecondDerivative A (x+v) : ℝ) : ℂ) := integral_ofReal
      rw [ho]
      congr 1
      have h := translated_reflected_pairing A (m:=Real.exp u) (n:=Real.exp v)
        (Real.exp_pos u) (Real.exp_pos v)
      simpa only [Real.log_exp, Real.log_mul (Real.exp_pos u).ne' (Real.exp_pos v).ne'] using h

/-- Stationary Hermitian correlation is distinguished from reflected sum-log interaction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceReflectionArithmetic/Variant147cf739c52224974aa694d5231c2286761557fd6f4ba89ec8898b1e6db4c7aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceReflectionArithmetic/Variant147cf739c52224974aa694d5231c2286761557fd6f4ba89ec8898b1e6db4c7aa.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88dc7c5cfd7d236ee7cec7d1e87795159a882b12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
