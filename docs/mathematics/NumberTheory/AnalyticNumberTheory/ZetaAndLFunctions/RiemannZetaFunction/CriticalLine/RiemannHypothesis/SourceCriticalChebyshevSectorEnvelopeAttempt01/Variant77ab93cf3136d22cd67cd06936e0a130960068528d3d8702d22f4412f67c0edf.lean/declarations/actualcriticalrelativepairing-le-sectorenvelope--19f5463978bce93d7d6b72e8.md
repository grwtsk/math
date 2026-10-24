# actualCriticalRelativePairing_le_sectorEnvelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c9c5897-2ccb-7adb-3689-6816143072e0",
  "kind": "theorem",
  "lexical_name": "actualCriticalRelativePairing_le_sectorEnvelope",
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
  "slug": "actualcriticalrelativepairing-le-sectorenvelope--19f5463978bce93d7d6b72e8",
  "source": {
    "blob": "9ff4f2acd80c27a65b4f4d865c7c346e83573055",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 62,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalChebyshevSectorEnvelopeAttempt01/Variant77ab93cf3136d22cd67cd06936e0a130960068528d3d8702d22f4412f67c0edf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19f5463978bce93d7d6b72e8468006826b8c817aef1a51b380f503ece1ea2102",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalChebyshevSectorEnvelopeAttempt01/Variant77ab93cf3136d22cd67cd06936e0a130960068528d3d8702d22f4412f67c0edf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c9c5897-2ccb-7adb-3689-6816143072e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCriticalRelativePairing_le_sectorEnvelope {A : ℝ} (hA : 1 ≤ A) :
    criticalRelativePairing A ≤ chebyshevSectorEnvelope A := by
  have hi := ((positiveCriticalWeightMass_integrable hA).const_mul
    (Real.log 4 + 3)).add (negativeCriticalWeightMass_integrable hA)
  have hm := integral_mono (criticalKernel_integrable hA) hi
    (actualCriticalKernel_sector_upper A)
  rw [integral_add ((positiveCriticalWeightMass_integrable hA).const_mul
    (Real.log 4 + 3)) (negativeCriticalWeightMass_integrable hA), integral_const_mul] at hm
  exact hm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalChebyshevSectorEnvelopeAttempt01/Variant77ab93cf3136d22cd67cd06936e0a130960068528d3d8702d22f4412f67c0edf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalChebyshevSectorEnvelopeAttempt01/Variant77ab93cf3136d22cd67cd06936e0a130960068528d3d8702d22f4412f67c0edf.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ff4f2acd80c27a65b4f4d865c7c346e83573055` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
