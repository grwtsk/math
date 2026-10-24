# _root_.GRWTSK.Topology.MetricTopology.Dilation.Variant0f3964e01dad08743567bd550a307e0b41ed8b17563f58bbd8f2f9874463eedd.Isometry.toDilation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d950baaa4bdb34633b4345a31e01bf8eb26e27e44146072c5debbac4920786b1",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Topology.MetricTopology.Dilation.Variant0f3964e01dad08743567bd550a307e0b41ed8b17563f58bbd8f2f9874463eedd.Isometry.toDilation",
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
  "slug": "root-grwtsk-topology-metrictopology-dilation-variant0f3964e01dad08743567--7e557d94f16935e02c7acd3a",
  "source": {
    "blob": "06ae7bd212fb009be192512dddf54919b694ca07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 245,
    "path": "GRWTSK/Topology/MetricTopology/Dilation/Variant2b4e5431f90022c3ed7c557c0c59570741427bf7b9af86aef6efe7c4dc45caa7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7e557d94f16935e02c7acd3adce2a62d5129fa0b4cb46a044727374c0dfc0552",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Dilation/Variant2b4e5431f90022c3ed7c557c0c59570741427bf7b9af86aef6efe7c4dc45caa7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d950baaa4bdb34633b4345a31e01bf8eb26e27e44146072c5debbac4920786b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Topology.MetricTopology.Dilation.Variant0f3964e01dad08743567bd550a307e0b41ed8b17563f58bbd8f2f9874463eedd.Isometry.toDilation (f : α → β) (hf : Isometry f) : α →ᵈ β where
  toFun := f
  edist_eq' := ⟨1, one_ne_zero, by simpa using hf⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Dilation/Variant2b4e5431f90022c3ed7c557c0c59570741427bf7b9af86aef6efe7c4dc45caa7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Dilation/Variant2b4e5431f90022c3ed7c557c0c59570741427bf7b9af86aef6efe7c4dc45caa7.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06ae7bd212fb009be192512dddf54919b694ca07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
