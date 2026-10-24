# estimate_of_actual_covariance_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6629a3f1-18bc-9ff8-4f29-2c916cd78b61",
  "kind": "theorem",
  "lexical_name": "estimate_of_actual_covariance_lower",
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
  "slug": "estimate-of-actual-covariance-lower--a492a479cedd8ecac0862ec1",
  "source": {
    "blob": "63edd7b7eb5bfe279df098e4cda5acbcc98c7e80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 191,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalCovarianceResidual/Variant675e5680d2d61e51c94e30d5941c30c3956de82e251d68d8fe62989855b1ac7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a492a479cedd8ecac0862ec17094020c8ed678945a1afa74817f6df4f27df29e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalCovarianceResidual/Variant675e5680d2d61e51c94e30d5941c30c3956de82e251d68d8fe62989855b1ac7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6629a3f1-18bc-9ff8-4f29-2c916cd78b61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem estimate_of_actual_covariance_lower {L R : ℝ} (hR : 91 ≤ R)
    (hL : ∀ A : ℝ, R ≤ A → L ≤ actualCriticalErrorCovariance A) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_mertens_residual_tail
  obtain ⟨U, hU⟩ := (actual_covariance_lower_iff_residual_upper_at_radius R hR).mp ⟨L, hL⟩
  refine ⟨max 0 U, le_max_left 0 U, R, by linarith, ?_⟩
  intro A hRA
  exact (hU A hRA).trans (le_max_right 0 U)

/-- The genuine delta return carries the exact fixed-seven tail payment into the all-real gate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalCovarianceResidual/Variant675e5680d2d61e51c94e30d5941c30c3956de82e251d68d8fe62989855b1ac7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalCovarianceResidual/Variant675e5680d2d61e51c94e30d5941c30c3956de82e251d68d8fe62989855b1ac7c.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63edd7b7eb5bfe279df098e4cda5acbcc98c7e80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
