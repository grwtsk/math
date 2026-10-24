# riemannHypothesis_of_classicalWeakMertensStep_and_signedLength

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cce39cfa-1286-54d9-e9a6-0de85312f8be",
  "kind": "theorem",
  "lexical_name": "riemannHypothesis_of_classicalWeakMertensStep_and_signedLength",
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
  "slug": "riemannhypothesis-of-classicalweakmertensstep-and-signedlength--ba6f3074cc2ff48a552a2313",
  "source": {
    "blob": "719c8e2193cfc30c1e421772402732a666c0a8ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 293,
    "path": "GRWTSK/NumberTheory/Moebius/CoreNonboundarySignedLengthTranspose.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba6f3074cc2ff48a552a231370678887b8a9308fca36dcb61e140e2b4b23a7a3",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreNonboundarySignedLengthTranspose.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cce39cfa-1286-54d9-e9a6-0de85312f8be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem riemannHypothesis_of_classicalWeakMertensStep_and_signedLength
    (hBoundary : ClassicalWeakMertensStepSource)
    (hNonboundary : SubpolynomialCoreNonboundarySignedLengthPacket) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialCoreLongDeepRemainderPacket
    (subpolynomialCoreLongDeepRemainderPacket_of_boundary_and_signedLength
      (subpolynomialCoreBoundarySignedPacket_of_classicalWeakMertensStep
        hBoundary)
      hNonboundary)

/-- Finite hostile witness: cancellation across retained lengths can be exact
while the corresponding positive L1 replacement is strictly positive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreNonboundarySignedLengthTranspose.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreNonboundarySignedLengthTranspose.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `719c8e2193cfc30c1e421772402732a666c0a8ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
