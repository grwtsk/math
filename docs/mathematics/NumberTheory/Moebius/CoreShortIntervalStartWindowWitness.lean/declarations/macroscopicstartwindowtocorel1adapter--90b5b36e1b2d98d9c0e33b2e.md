# MacroscopicStartWindowToCoreL1Adapter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b558fed2b3b3b2839b0083f229ff223d2f78fda5fc7ca2553cde9700f9a4ef99",
  "kind": "structure",
  "lexical_name": "MacroscopicStartWindowToCoreL1Adapter",
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
  "slug": "macroscopicstartwindowtocorel1adapter--90b5b36e1b2d98d9c0e33b2e",
  "source": {
    "blob": "97de242eef4831e4f3b4d35ced118231d7ceee15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 100,
    "path": "GRWTSK/NumberTheory/Moebius/CoreShortIntervalStartWindowWitness.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:90b5b36e1b2d98d9c0e33b2ee2162d5f71d2ccb1823d672a6bd93d84aa0e8434",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreShortIntervalStartWindowWitness.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b558fed2b3b3b2839b0083f229ff223d2f78fda5fc7ca2553cde9700f9a4ef99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MacroscopicStartWindowToCoreL1Adapter
    (d : MacroscopicStartWindowShortIntervalScope) : Type where
  localizeToDepthWindows : Prop
  preserveLongLengths : Prop
  preserveAllDepths : Prop
  toCoreL1 :
    d.sourceStatement →
      d.firstMomentBound →
      localizeToDepthWindows →
      preserveLongLengths →
      preserveAllDepths →
      SubpolynomialCoreLongShortIntervalL1Packet

/-- Generic conditional endpoint only after the start-window localization and
remaining coverage obligations are supplied explicitly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreShortIntervalStartWindowWitness.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreShortIntervalStartWindowWitness.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97de242eef4831e4f3b4d35ced118231d7ceee15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
