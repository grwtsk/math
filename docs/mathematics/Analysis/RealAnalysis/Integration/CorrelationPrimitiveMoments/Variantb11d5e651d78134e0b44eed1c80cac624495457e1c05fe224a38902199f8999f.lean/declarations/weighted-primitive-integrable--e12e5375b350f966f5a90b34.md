# weighted_primitive_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5aa68d9-0097-64ae-18ec-c15eaf059ad6",
  "kind": "theorem",
  "lexical_name": "weighted_primitive_integrable",
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
  "slug": "weighted-primitive-integrable--e12e5375b350f966f5a90b34",
  "source": {
    "blob": "9955ae03091a261d6426278cc75fb88162ddea16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 30,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CorrelationPrimitiveMoments/Variantb11d5e651d78134e0b44eed1c80cac624495457e1c05fe224a38902199f8999f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e12e5375b350f966f5a90b3453fa4b157c390f515cd8f9ad2cbb8d1d41deff29",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CorrelationPrimitiveMoments/Variantb11d5e651d78134e0b44eed1c80cac624495457e1c05fe224a38902199f8999f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5aa68d9-0097-64ae-18ec-c15eaf059ad6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_primitive_integrable (A : ℝ) (m : ℕ) (hA : 1 ≤ A) :
    Integrable (fun t : ℝ ↦ t ^ m * Real.exp (t / 2) * correlationPrimitive A t) :=
  TwoMomentSampling.weighted_moment_integrable (correlationPrimitive A)
    (correlationPrimitive_contDiff A hA).continuous (correlationPrimitive_hasCompactSupport A hA) m

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CorrelationPrimitiveMoments/Variantb11d5e651d78134e0b44eed1c80cac624495457e1c05fe224a38902199f8999f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CorrelationPrimitiveMoments/Variantb11d5e651d78134e0b44eed1c80cac624495457e1c05fe224a38902199f8999f.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9955ae03091a261d6426278cc75fb88162ddea16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
