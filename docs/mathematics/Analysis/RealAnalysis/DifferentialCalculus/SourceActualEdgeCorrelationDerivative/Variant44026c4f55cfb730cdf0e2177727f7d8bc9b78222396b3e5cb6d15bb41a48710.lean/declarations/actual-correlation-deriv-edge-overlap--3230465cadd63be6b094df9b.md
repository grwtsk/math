# actual_correlation_deriv_edge_overlap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9fa2e028-7285-9703-29b8-e7531e25e027",
  "kind": "theorem",
  "lexical_name": "actual_correlation_deriv_edge_overlap",
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
  "slug": "actual-correlation-deriv-edge-overlap--3230465cadd63be6b094df9b",
  "source": {
    "blob": "273cc00b800a08e88608dd3a54493e209b5208ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 141,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEdgeCorrelationDerivative/Variant44026c4f55cfb730cdf0e2177727f7d8bc9b78222396b3e5cb6d15bb41a48710.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3230465cadd63be6b094df9b97751929ee24adc811d9638a9e2899ca44ea3cad",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEdgeCorrelationDerivative/Variant44026c4f55cfb730cdf0e2177727f7d8bc9b78222396b3e5cb6d15bb41a48710.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9fa2e028-7285-9703-29b8-e7531e25e027`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_correlation_deriv_edge_overlap (A z : ℝ) (hA : 1 ≤ A)
    (hz : 0 ≤ z) :
    deriv (sourceCorrelation explicitSecondDerivative A) (2 * A - z) =
      ∫ x in A - z..A, deriv (normalizedTest explicitSecondDerivative A) x *
        normalizedTest explicitSecondDerivative A (x - (2 * A - z)) := by
  have hA0 : 0 < A := by linarith
  have heq : (fun x ↦ deriv (normalizedTest explicitSecondDerivative A) x *
      normalizedTest explicitSecondDerivative A (x - (2 * A - z))) =
      (Icc (A - z) A).indicator (fun x ↦
        deriv (normalizedTest explicitSecondDerivative A) x *
        normalizedTest explicitSecondDerivative A (x - (2 * A - z))) := by
    funext x
    by_cases hm : x ∈ Icc (A - z) A
    · simp [hm]
    · have hf : deriv (normalizedTest explicitSecondDerivative A) x *
          normalizedTest explicitSecondDerivative A (x - (2 * A - z)) = 0 := by
        simp only [mem_Icc, not_and_or, not_le] at hm
        rcases hm with hl | hr
        · rw [normalizedTest_zero_of_le_abs A (x - (2 * A - z)) hA0
            (by rw [abs_of_nonpos (by linarith)]; linarith), mul_zero]
        · rw [actual_deriv_eq_indicator A hA0,
            indicator_of_notMem (show x ∉ Icc (-A) A from
              fun hx ↦ (not_le_of_gt hr) hx.2), zero_mul]
      simp [hm, hf]
  rw [sourceCorrelation_deriv_eq_integral hA0]
  calc
    _ = ∫ x, (Icc (A - z) A).indicator (fun x ↦
        deriv (normalizedTest explicitSecondDerivative A) x *
        normalizedTest explicitSecondDerivative A (x - (2 * A - z))) x :=
      congrArg (fun f : ℝ → ℝ ↦ ∫ x, f x) heq
    _ = _ := zeroExtension_integral _ (A - z) A (by linarith)

/-- The literal finite derivative-product integral is genuinely integrable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEdgeCorrelationDerivative/Variant44026c4f55cfb730cdf0e2177727f7d8bc9b78222396b3e5cb6d15bb41a48710.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEdgeCorrelationDerivative/Variant44026c4f55cfb730cdf0e2177727f7d8bc9b78222396b3e5cb6d15bb41a48710.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `273cc00b800a08e88608dd3a54493e209b5208ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
