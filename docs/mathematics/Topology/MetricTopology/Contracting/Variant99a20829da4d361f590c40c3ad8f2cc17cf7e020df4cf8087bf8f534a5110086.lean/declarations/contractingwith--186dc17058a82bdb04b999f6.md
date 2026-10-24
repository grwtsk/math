# ContractingWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fc139afa8651e4b331a58e3ab204c2c1f4cba21cf866171a0ee4d5884533e00f",
  "kind": "def",
  "lexical_name": "ContractingWith",
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
  "slug": "contractingwith--186dc17058a82bdb04b999f6",
  "source": {
    "blob": "15e3dcdc8772e2b8a309e897b0c7c56a1d3ebd07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 44,
    "path": "GRWTSK/Topology/MetricTopology/Contracting/Variant99a20829da4d361f590c40c3ad8f2cc17cf7e020df4cf8087bf8f534a5110086.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:186dc17058a82bdb04b999f6a6c55f2da686448dd12107c77f8c1632cf520bf7",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Contracting/Variant99a20829da4d361f590c40c3ad8f2cc17cf7e020df4cf8087bf8f534a5110086.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fc139afa8651e4b331a58e3ab204c2c1f4cba21cf866171a0ee4d5884533e00f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ContractingWith [EMetricSpace α] (K : ℝ≥0) (f : α → α) :=
  K < 1 ∧ LipschitzWith K f

namespace ContractingWith

variable [EMetricSpace α] {K : ℝ≥0} {f : α → α}

open EMetric Set

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Contracting/Variant99a20829da4d361f590c40c3ad8f2cc17cf7e020df4cf8087bf8f534a5110086.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Contracting/Variant99a20829da4d361f590c40c3ad8f2cc17cf7e020df4cf8087bf8f534a5110086.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15e3dcdc8772e2b8a309e897b0c7c56a1d3ebd07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
