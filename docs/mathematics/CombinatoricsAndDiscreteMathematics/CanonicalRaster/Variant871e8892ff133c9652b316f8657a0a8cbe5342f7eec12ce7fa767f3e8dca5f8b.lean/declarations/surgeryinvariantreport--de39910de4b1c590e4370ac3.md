# SurgeryInvariantReport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:12f10c8c6c5cbd5eeeb43399e7e9a841b27fa0aeaed151bf6f601aa12407dd38",
  "kind": "structure",
  "lexical_name": "SurgeryInvariantReport",
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
  "slug": "surgeryinvariantreport--de39910de4b1c590e4370ac3",
  "source": {
    "blob": "bb83f91122888da3479557868f860eba0e781508",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 498,
    "line": 478,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CanonicalRaster/Variant871e8892ff133c9652b316f8657a0a8cbe5342f7eec12ce7fa767f3e8dca5f8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de39910de4b1c590e4370ac3ed1384a85e087d63a7bb7e94e78a186e50ce2623",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CanonicalRaster/Variant871e8892ff133c9652b316f8657a0a8cbe5342f7eec12ce7fa767f3e8dca5f8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:12f10c8c6c5cbd5eeeb43399e7e9a841b27fa0aeaed151bf6f601aa12407dd38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 478–498.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SurgeryInvariantReport {rows columns : Nat}
    (semantics : DigitalTopologySemantics rows columns)
    (cut : CutDatum rows columns) where
  surgery : ControlledDigitalSurgery semantics cut
  before : RasterTopologySnapshot
  datum : RasterSurgeryDatumSummary
  after : RasterTopologySnapshot
  before_spec : before = topologySnapshot
    surgery.foregroundAdjacency surgery.backgroundAdjacency cut.source
  datum_spec : datum = surgeryDatumSummary
    surgery.foregroundAdjacency surgery.repair
  after_spec : after = topologySnapshot
    surgery.foregroundAdjacency surgery.backgroundAdjacency surgery.repair.apply
  changedCarrier : Finset (GridCell rows columns)
  changedCarrier_spec : changedCarrier = surgery.repair.changeSupport
  localityEvidence : changedCarrier ⊆ cut.selected
  postManifold : semantics.cubicalManifold
    surgery.foregroundAdjacency surgery.backgroundAdjacency surgery.repair.apply

/-- The invariant report of `controlledShift`, reachable from the production
surgery aggregate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CanonicalRaster/Variant871e8892ff133c9652b316f8657a0a8cbe5342f7eec12ce7fa767f3e8dca5f8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CanonicalRaster/Variant871e8892ff133c9652b316f8657a0a8cbe5342f7eec12ce7fa767f3e8dca5f8b.lean#L478).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb83f91122888da3479557868f860eba0e781508` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
