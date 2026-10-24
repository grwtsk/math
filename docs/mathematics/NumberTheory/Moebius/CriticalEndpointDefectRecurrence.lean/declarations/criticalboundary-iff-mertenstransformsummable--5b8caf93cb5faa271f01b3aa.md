# criticalBoundary_iff_mertensTransformSummable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8e8fb48-9b4b-36b2-29c6-27e817bb087c",
  "kind": "theorem",
  "lexical_name": "criticalBoundary_iff_mertensTransformSummable",
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
  "slug": "criticalboundary-iff-mertenstransformsummable--5b8caf93cb5faa271f01b3aa",
  "source": {
    "blob": "863a11ae7402e9016e7ca844c3cab6c938a729a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 82,
    "path": "GRWTSK/NumberTheory/Moebius/CriticalEndpointDefectRecurrence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b8caf93cb5faa271f01b3aa6181c73a900da49b730dc4dd1c110e767b9acf0b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CriticalEndpointDefectRecurrence.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8e8fb48-9b4b-36b2-29c6-27e817bb087c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalBoundary_iff_mertensTransformSummable :
    CriticalBoundaryVerticalLineUniform ↔ CriticalMertensTransformSummable :=
  criticalBoundary_iff_endpointDefectSummable.trans
    endpointDefectSummable_iff_mertensTransformSummable

end GRWTSK.NumberTheory.Moebius.CriticalEndpointDefectRecurrence

#print axioms GRWTSK.NumberTheory.Moebius.CriticalEndpointDefectRecurrence.pickupWeightedPrefix_succ
#print axioms GRWTSK.NumberTheory.Moebius.CriticalEndpointDefectRecurrence.criticalEndpointDefect_succ
#print axioms GRWTSK.NumberTheory.Moebius.CriticalEndpointDefectRecurrence.criticalEndpointDefect_eq_mertensTransform
#print axioms GRWTSK.NumberTheory.Moebius.CriticalEndpointDefectRecurrence.criticalBoundary_iff_mertensTransformSummable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CriticalEndpointDefectRecurrence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CriticalEndpointDefectRecurrence.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `863a11ae7402e9016e7ca844c3cab6c938a729a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
