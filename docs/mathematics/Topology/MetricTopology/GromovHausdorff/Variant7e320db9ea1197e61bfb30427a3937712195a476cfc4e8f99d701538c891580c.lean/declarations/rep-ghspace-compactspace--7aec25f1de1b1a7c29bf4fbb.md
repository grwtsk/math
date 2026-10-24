# rep_gHSpace_compactSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:831ee7e8967e8acc5882c8bf7e4ec7bd660595aa75fc655262ad44e3a86244b0",
  "kind": "instance",
  "lexical_name": "rep_gHSpace_compactSpace",
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
  "slug": "rep-ghspace-compactspace--7aec25f1de1b1a7c29bf4fbb",
  "source": {
    "blob": "647a1da85db9bfb4dde10a068d6978427b3a9a80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 134,
    "path": "GRWTSK/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7aec25f1de1b1a7c29bf4fbbe05dcf4b1268c1b4b531081e131c52e9631d59b7",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:831ee7e8967e8acc5882c8bf7e4ec7bd660595aa75fc655262ad44e3a86244b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance rep_gHSpace_compactSpace {p : GHSpace} : CompactSpace p.Rep :=
  inferInstanceAs <| CompactSpace p.out

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `647a1da85db9bfb4dde10a068d6978427b3a9a80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
