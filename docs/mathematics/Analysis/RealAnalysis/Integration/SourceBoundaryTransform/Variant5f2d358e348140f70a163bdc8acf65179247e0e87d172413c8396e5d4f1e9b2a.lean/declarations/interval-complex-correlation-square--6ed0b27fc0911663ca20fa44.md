# interval_complex_correlation_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:69951bf5-bfaa-b96a-1142-87772c35e71c",
  "kind": "theorem",
  "lexical_name": "interval_complex_correlation_square",
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
  "slug": "interval-complex-correlation-square--6ed0b27fc0911663ca20fa44",
  "source": {
    "blob": "229bad1834236abb1ac2d9baf54f17aa468f95c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 84,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceBoundaryTransform/Variant5f2d358e348140f70a163bdc8acf65179247e0e87d172413c8396e5d4f1e9b2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ed0b27fc0911663ca20fa4400095681e6de24272b569dd034b98fe5448efb7f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceBoundaryTransform/Variant5f2d358e348140f70a163bdc8acf65179247e0e87d172413c8396e5d4f1e9b2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69951bf5-bfaa-b96a-1142-87772c35e71c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem interval_complex_correlation_square {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    (∫ t in -(2*A)..2*A, (sourceCorrelation explicitSecondDerivative A t : ℂ)*
      Complex.exp (z*(t : ℂ))) = normalizedTransform A z ^ 2 := by
  have he : (fun t : ℝ => (sourceCorrelation explicitSecondDerivative A t : ℂ)*
      Complex.exp (z*(t : ℂ))) = (Icc (-(2*A)) (2*A)).indicator
      (fun t : ℝ => (sourceCorrelation explicitSecondDerivative A t : ℂ)*
        Complex.exp (z*(t : ℂ))) := by
    funext t
    by_cases ht : t ∈ Icc (-(2*A)) (2*A)
    · rw [indicator_of_mem ht]
    · rw [indicator_of_notMem ht]
      have hb : 2*A ≤ |t| := by
        by_contra hn
        exact ht (abs_le.mp (le_of_lt (lt_of_not_ge hn)))
      rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A t (by linarith) hb]
      simp
  have h := full_complex_correlation_square hA z
  rw [he,integral_indicator measurableSet_Icc,integral_Icc_eq_integral_Ioc,
    ← intervalIntegral.integral_of_le (by linarith : -(2*A) ≤ 2*A)] at h
  exact h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceBoundaryTransform/Variant5f2d358e348140f70a163bdc8acf65179247e0e87d172413c8396e5d4f1e9b2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceBoundaryTransform/Variant5f2d358e348140f70a163bdc8acf65179247e0e87d172413c8396e5d4f1e9b2a.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `229bad1834236abb1ac2d9baf54f17aa468f95c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
