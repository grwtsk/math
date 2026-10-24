# Isometry.isometryEquivOnRange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:59741fb8844945c493c38e2b366d123319beba75aa498db372bc26a345ff0607",
  "kind": "def",
  "lexical_name": "Isometry.isometryEquivOnRange",
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
  "slug": "isometry-isometryequivonrange--ab25a35a1f535a1cd384dde4",
  "source": {
    "blob": "3e058994a6656ec01a327f7a26a2a08c6ff24d19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 662,
    "line": 656,
    "path": "GRWTSK/Topology/MetricTopology/Isometry/Variant95860fc71fbb59fc018317fb6f129faacb77240218fc97e2037f5202f3d97e61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab25a35a1f535a1cd384dde479e4a272a32576cb49a1418c97f9dc8607a50d6f",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Isometry/Variant95860fc71fbb59fc018317fb6f129faacb77240218fc97e2037f5202f3d97e61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:59741fb8844945c493c38e2b366d123319beba75aa498db372bc26a345ff0607`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 656–662.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Isometry.isometryEquivOnRange [EMetricSpace α] [PseudoEMetricSpace β] {f : α → β}
    (h : Isometry f) : α ≃ᵢ range f where
  isometry_toFun := h
  toEquiv := Equiv.ofInjective f h.injective
#align isometry.isometry_equiv_on_range Isometry.isometryEquivOnRange
#align isometry.isometry_equiv_on_range_to_equiv Isometry.isometryEquivOnRange_toEquiv
#align isometry.isometry_equiv_on_range_apply Isometry.isometryEquivOnRange_apply
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Isometry/Variant95860fc71fbb59fc018317fb6f129faacb77240218fc97e2037f5202f3d97e61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Isometry/Variant95860fc71fbb59fc018317fb6f129faacb77240218fc97e2037f5202f3d97e61.lean#L656).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e058994a6656ec01a327f7a26a2a08c6ff24d19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
