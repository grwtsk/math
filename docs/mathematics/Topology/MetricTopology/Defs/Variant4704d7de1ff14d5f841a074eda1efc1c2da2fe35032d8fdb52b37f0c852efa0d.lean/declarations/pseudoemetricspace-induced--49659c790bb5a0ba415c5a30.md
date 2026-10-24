# PseudoEMetricSpace.induced

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3453757cfa860df1f1a319aa982e92ffb2cdd5cb4633348a08ec204d054d2a05",
  "kind": "abbrev",
  "lexical_name": "PseudoEMetricSpace.induced",
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
  "slug": "pseudoemetricspace-induced--49659c790bb5a0ba415c5a30",
  "source": {
    "blob": "3ef0db6a6a6d35e7777c6a0769a4af5ddcdfdadf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 429,
    "line": 420,
    "path": "GRWTSK/Topology/MetricTopology/Defs/Variant4704d7de1ff14d5f841a074eda1efc1c2da2fe35032d8fdb52b37f0c852efa0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:49659c790bb5a0ba415c5a300e22777132d7d43fe1b40c83d978368242d34937",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Defs/Variant4704d7de1ff14d5f841a074eda1efc1c2da2fe35032d8fdb52b37f0c852efa0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3453757cfa860df1f1a319aa982e92ffb2cdd5cb4633348a08ec204d054d2a05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 420–429.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev PseudoEMetricSpace.induced {α β} (f : α → β) (m : PseudoEMetricSpace β) :
    PseudoEMetricSpace α where
  edist x y := edist (f x) (f y)
  edist_self _ := edist_self _
  edist_comm _ _ := edist_comm _ _
  edist_triangle _ _ _ := edist_triangle _ _ _
  toUniformSpace := UniformSpace.comap f m.toUniformSpace
  uniformity_edist := (uniformity_basis_edist.comap (Prod.map f f)).eq_biInf

/-- `WeakPseudoEMetricSpace` can be induced backwards. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Defs/Variant4704d7de1ff14d5f841a074eda1efc1c2da2fe35032d8fdb52b37f0c852efa0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Defs/Variant4704d7de1ff14d5f841a074eda1efc1c2da2fe35032d8fdb52b37f0c852efa0d.lean#L420).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ef0db6a6a6d35e7777c6a0769a4af5ddcdfdadf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
