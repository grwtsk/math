# scaled_kernel_exponential_moment_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a50aee4-b8c5-a5fd-ee93-a8e2d9da117b",
  "kind": "theorem",
  "lexical_name": "scaled_kernel_exponential_moment_integrable",
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
  "slug": "scaled-kernel-exponential-moment-integrable--1571dffff5fdcf89b4e200f0",
  "source": {
    "blob": "44a0060013dbf7344a8c4a0198a44acbeae31d29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 291,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1571dffff5fdcf89b4e200f0daa90eb31d991482ff16ff7d7a329e44e76a83ee",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a50aee4-b8c5-a5fd-ee93-a8e2d9da117b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaled_kernel_exponential_moment_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun s ↦ Real.exp (A * s / 2) * scaledKernel A s) := by
  have hpos : 0 < A := by linarith
  have hi := CorrelationMoment.weighted_correlation_integrable
    (normalizedTest explicitSecondDerivative A) (1 / 2)
    (CorrelationMoment.weighted_normalizedTest_integrable A (1 / 2) hA)
    (CorrelationMoment.weighted_normalizedTest_integrable A (-(1 / 2)) hA)
  change Integrable (fun t ↦ Real.exp ((1 / 2 : ℝ) * t) *
    sourceCorrelation explicitSecondDerivative A t) at hi
  apply (hi.comp_mul_left' (ne_of_gt hpos)).congr
  filter_upwards [] with s
  rw [scaled_kernel_eq_source_correlation A s hA]
  congr 2
  ring

/-- Pole cancellation scales to an exponential kernel moment; it does not kill its constant mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44a0060013dbf7344a8c4a0198a44acbeae31d29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
