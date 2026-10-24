# sourceCorrelation_reflection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f02ecb9a-e490-e204-a679-dd058f81284c",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_reflection",
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
  "slug": "sourcecorrelation-reflection--2752536b821bbc487b8cb66c",
  "source": {
    "blob": "2e687c9a37f0fae803590a86d53b71e8c9a5a458",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 256,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variant8d459234a6a297ae48306c41b498bba9f25f5bea7c7543c1bb20bdd84f540f16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2752536b821bbc487b8cb66c14dd0a7e87027370e6a77a2f12bcab496e1bba42",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variant8d459234a6a297ae48306c41b498bba9f25f5bea7c7543c1bb20bdd84f540f16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f02ecb9a-e490-e204-a679-dd058f81284c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_reflection
    (A : ℝ) (hA : 1 ≤ A) (s : ℝ) :
    (∫ r in Ioi (0 : ℝ),
      r * Real.exp (r / 2) *
        sourceCorrelation explicitSecondDerivative A (s + r)) =
    ∫ r in Ioi (0 : ℝ),
      r * Real.exp (-r / 2) *
        sourceCorrelation explicitSecondDerivative A (s - r) := by
  simpa [shiftedMomentIntegrand, reflectedMomentIntegrand] using
    two_moment_reflection
      (sourceCorrelation_twoMomentProfile A hA) s

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variant8d459234a6a297ae48306c41b498bba9f25f5bea7c7543c1bb20bdd84f540f16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variant8d459234a6a297ae48306c41b498bba9f25f5bea7c7543c1bb20bdd84f540f16.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e687c9a37f0fae803590a86d53b71e8c9a5a458` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
