# coreNonboundaryShortIntervalL1Packet_le_lengthPacket

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eec6fd75-1e49-56c2-f176-8435a9445dd9",
  "kind": "theorem",
  "lexical_name": "coreNonboundaryShortIntervalL1Packet_le_lengthPacket",
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
  "slug": "corenonboundaryshortintervall1packet-le-lengthpacket--d41faeeaf8db628345cd5f69",
  "source": {
    "blob": "924e1353fa1f845b173628b25495cae64c05382f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 250,
    "path": "GRWTSK/NumberTheory/Moebius/CoreNonboundaryReciprocalSquareL1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d41faeeaf8db628345cd5f69980f0f087feddf40a21b0df204fe40af82b04996",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreNonboundaryReciprocalSquareL1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eec6fd75-1e49-56c2-f176-8435a9445dd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreNonboundaryShortIntervalL1Packet_le_lengthPacket
    (j : ℕ) :
    coreNonboundaryShortIntervalL1Packet j ≤
      coreNonboundaryAmbientLengthPacket j := by
  unfold coreNonboundaryShortIntervalL1Packet
  calc
    (∑ t ∈ coreLongDeepDepths j,
      coreNonboundaryDepthShortIntervalL1Majorant j t) ≤
      ∑ t ∈ coreLongDeepDepths j,
        coreNonboundaryDepthAmbientL1Majorant j t := by
      apply Finset.sum_le_sum
      intro t ht
      exact coreNonboundaryDepthShortIntervalL1Majorant_le_ambient ht
    _ = coreNonboundaryAmbientLengthPacket j :=
      sum_coreNonboundaryDepthAmbientL1Majorant_eq_lengthPacket j

/-- Canonical reciprocal-square first moment after the exact coefficient-mass
geometry has been discharged. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreNonboundaryReciprocalSquareL1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreNonboundaryReciprocalSquareL1.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `924e1353fa1f845b173628b25495cae64c05382f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
