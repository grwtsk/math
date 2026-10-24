# arithmetic_representation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb5985f0-0a44-84c6-b5a3-15f2766097c1",
  "kind": "theorem",
  "lexical_name": "arithmetic_representation",
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
  "slug": "arithmetic-representation--28663fc5aa926339be7312bf",
  "source": {
    "blob": "ce7d4ef34ed617f586ba17699d73a612f49b9a19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 72,
    "path": "GRWTSK/NumberTheory/Chebyshev/CompactProfileExplicitFormula.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28663fc5aa926339be7312bf94b9ebbecf356b1a2653d1795899c795292aafb1",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/CompactProfileExplicitFormula.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb5985f0-0a44-84c6-b5a3-15f2766097c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arithmetic_representation :
    SourcePairing.ArithmeticRepresentation admittedDilationRealization := by
  intro A hA
  have same := normalized_test_eq_explicit (by linarith : 0 < A)
  have correlated : SourcePairing.sourceCorrelation sourceSecond A =
      SourcePairing.sourceCorrelation Realization.explicitSecondDerivative A := by
    funext t
    unfold SourcePairing.sourceCorrelation
    rw [same]
  have identity := CorrelationAssembly.source_arithmetic_representation A hA
  change SourcePairing.sourceQuadraticValue sourceSecond A =
    SourcePairing.analyticCorrection sourceSecond A + 2 * SourcePairing.signedPairing sourceSecond A
  simpa only [SourcePairing.sourceQuadraticValue, SourcePairing.analyticCorrection,
    SourcePairing.archimedeanValue, SourcePairing.archimedeanIntegrand,
    SourcePairing.primePowerContribution, SourcePairing.primeTwoBoundary,
    SourcePairing.signedPairing, SourcePairing.sourceWeight, correlated,
    SourcePairing.sourceCorrelation, same] using identity

end

end GRWTSK.ProofHorizon.CorkscrewChamberCap.SourceAdmission
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/CompactProfileExplicitFormula.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/CompactProfileExplicitFormula.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce7d4ef34ed617f586ba17699d73a612f49b9a19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
