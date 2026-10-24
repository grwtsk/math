# actual_source_second_moment_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0b07e08-a645-3f00-3e80-e9ec83a8674e",
  "kind": "theorem",
  "lexical_name": "actual_source_second_moment_integrable",
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
  "slug": "actual-source-second-moment-integrable--d3e5a84035cc66a24e0fd3e6",
  "source": {
    "blob": "c4f3db79ccd8cb6576def49f277055229888090f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 146,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualSecondFourierMoment/Variant38c691dedc4f966f6aa06abd24ff978ad3e76f6c13ea71dde38cffce4bb59b42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3e5a84035cc66a24e0fd3e66079bf29598ad432c9305ac787e2389bc91ca701",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualSecondFourierMoment/Variant38c691dedc4f966f6aa06abd24ff978ad3e76f6c13ea71dde38cffce4bb59b42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0b07e08-a645-3f00-3e80-e9ec83a8674e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_source_second_moment_integrable {A : ℝ} (hA : 1 ≤ A) :
    Integrable (fun ξ : ℝ => ξ^2 * Complex.normSq
      (sourceFourier (normalizedTest explicitSecondDerivative A) ξ)) := by
  have hs := actual_standard_second_moment_integrable hA
  simp_rw [standardFourier_eq_sourceFourier] at hs
  have hscaled := hs.const_mul ((-(2 * Real.pi))^2)
  have heq : (fun ξ : ℝ => (-(2 * Real.pi))^2 * (ξ^2 * Complex.normSq
      (sourceFourier (normalizedTest explicitSecondDerivative A) (-(2 * Real.pi) * ξ)))) =
      (fun ξ : ℝ => (-(2 * Real.pi) * ξ)^2 * Complex.normSq
        (sourceFourier (normalizedTest explicitSecondDerivative A) (-(2 * Real.pi) * ξ))) := by
    funext ξ
    ring
  rw [heq] at hscaled
  exact (integrable_comp_mul_left_iff _
    (neg_ne_zero.mpr (mul_ne_zero two_ne_zero Real.pi_ne_zero))).mp hscaled

/-- The original positive-exponential convention contributes exactly the factor 2π. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualSecondFourierMoment/Variant38c691dedc4f966f6aa06abd24ff978ad3e76f6c13ea71dde38cffce4bb59b42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualSecondFourierMoment/Variant38c691dedc4f966f6aa06abd24ff978ad3e76f6c13ea71dde38cffce4bb59b42.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4f3db79ccd8cb6576def49f277055229888090f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
