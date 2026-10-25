# Certified

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3f81a0cab1b5ccb3b04b7f6d683ccde84b1700df4a54ddd8641a58aaeafcd99d",
  "kind": "def",
  "lexical_name": "Certified",
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
  "slug": "certified--13e9e8ac13e338bdf0012ebd",
  "source": {
    "blob": "c5e36f3f6dc6a0bdcd93c776b265705d93aa4e36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 281,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Grounding/Variant6fa994b0d0c7a0b3983d5a244a9527d281f23322fc575af5b6bf26b475a517ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:13e9e8ac13e338bdf0012ebdf44457ea2642a28cc6a389ed03f2f2c8a904f79d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Grounding/Variant6fa994b0d0c7a0b3983d5a244a9527d281f23322fc575af5b6bf26b475a517ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3f81a0cab1b5ccb3b04b7f6d683ccde84b1700df4a54ddd8641a58aaeafcd99d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Certified
    (location : RhetoricalLocation)
    (registry : RhetoricalEvidenceRegistry) : Prop :=
  ∃ certificate,
    registry.gramTraceFor location.activeGramTraceId = some certificate ∧
    location.kernelId = certificate.kernelId ∧
    location.kernelDigest = certificate.kernelDigest ∧
    location.activeGramTraceId = certificate.traceId ∧
    location.traceDigest = certificate.traceDigest ∧
    location.psdCertificateId = certificate.psdCertificateId ∧
    ∃ report ∈ certificate.trace.points,
      DAF.Rhetorical.Runtime.RHT1.PointReport.Matches
        certificate.trace report ∧
      report.source.resolve certificate.commitment.manifestWire =
        some location.index.1.value.toUTF8.toList ∧
      report.roleTag = location.index.2.tag ∧
      location.pointVectorId = certificate.pointCertificateId report ∧
      location.locationDigest = certificate.locationDigest
        location.index.1 location.index.2 report

end RhetoricalLocation

namespace TheoremCellDescriptor

/-- If a theorem cell declares a rhetorical realization, it resolves through
the checked trace registry; absence remains permitted. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Grounding/Variant6fa994b0d0c7a0b3983d5a244a9527d281f23322fc575af5b6bf26b475a517ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Grounding/Variant6fa994b0d0c7a0b3983d5a244a9527d281f23322fc575af5b6bf26b475a517ef.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5e36f3f6dc6a0bdcd93c776b265705d93aa4e36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
