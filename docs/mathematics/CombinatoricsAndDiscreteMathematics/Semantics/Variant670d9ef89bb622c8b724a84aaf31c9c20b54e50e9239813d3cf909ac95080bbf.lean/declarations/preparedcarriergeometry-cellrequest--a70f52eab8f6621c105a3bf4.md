# PreparedCarrierGeometry.cellRequest

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c16646b611628c4c4db6ae9aac2bfc8e1507255e7ce3bed3ac6f46320c117c5",
  "kind": "def",
  "lexical_name": "PreparedCarrierGeometry.cellRequest",
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
  "slug": "preparedcarriergeometry-cellrequest--a70f52eab8f6621c105a3bf4",
  "source": {
    "blob": "a5f5bc6df80e54bb39e21d79973c0110075965f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1698,
    "line": 1680,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Semantics/Variant670d9ef89bb622c8b724a84aaf31c9c20b54e50e9239813d3cf909ac95080bbf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a70f52eab8f6621c105a3bf467d1395db49d9bca9d51885b9ec5f7ccbf503ff6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Semantics/Variant670d9ef89bb622c8b724a84aaf31c9c20b54e50e9239813d3cf909ac95080bbf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c16646b611628c4c4db6ae9aac2bfc8e1507255e7ce3bed3ac6f46320c117c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1680–1698.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def PreparedCarrierGeometry.cellRequest {count : Nat}
    (request : PreparedCarrierGeometry count) (index : Fin count) :
    RasterCellRequest where
  coverage :=
    { region := request.combinedRegion
      cell := request.cells index
      samples := request.samples
      samplesPositive := request.samplesPositive
      exactCoverage := request.exactCoverage index }
  threshold := request.threshold
  thresholdNonnegative := request.thresholdNonnegative
  thresholdAtMostOne := request.thresholdAtMostOne
  scalar := request.scalar
  policy := request.policy
  ownershipPolicies := request.ownershipPolicies
  ownerSelection := request.ownerSelection index

/-- Evidence retained by the high-level `rasterizeCarrierGeometryDetailed`
semantic operation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Semantics/Variant670d9ef89bb622c8b724a84aaf31c9c20b54e50e9239813d3cf909ac95080bbf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Semantics/Variant670d9ef89bb622c8b724a84aaf31c9c20b54e50e9239813d3cf909ac95080bbf.lean#L1680).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5f5bc6df80e54bb39e21d79973c0110075965f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
