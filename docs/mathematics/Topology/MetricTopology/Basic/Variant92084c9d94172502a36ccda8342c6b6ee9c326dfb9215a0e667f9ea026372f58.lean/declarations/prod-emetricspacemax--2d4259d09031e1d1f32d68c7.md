# Prod.emetricSpaceMax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9ac7273fcc864d32b489f6c5c5fadf0085e48cf84c72546e13626cb00b789f9b",
  "kind": "instance",
  "lexical_name": "Prod.emetricSpaceMax",
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
  "slug": "prod-emetricspacemax--2d4259d09031e1d1f32d68c7",
  "source": {
    "blob": "757f178fc4763191fd84ddf35234c678a03bb5a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 252,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2d4259d09031e1d1f32d68c77b774234793856f8732b66f784b8a449c3221a63",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9ac7273fcc864d32b489f6c5c5fadf0085e48cf84c72546e13626cb00b789f9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Prod.emetricSpaceMax [EMetricSpace β] : EMetricSpace (γ × β) :=
  .ofT0PseudoEMetricSpace _

namespace EMetric

/-- A compact set in an emetric space is separable, i.e., it is the closure of a countable set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `757f178fc4763191fd84ddf35234c678a03bb5a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
