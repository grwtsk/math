# metricSpaceNatNat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:69fc2ad55f7c83e93cd9b065505b4aecea062af8df6feed90bba158da38e0fce",
  "kind": "def",
  "lexical_name": "metricSpaceNatNat",
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
  "slug": "metricspacenatnat--21225b1e29896792ff4b098e",
  "source": {
    "blob": "c081c0178e9661d20c8edff18db3210ec4d7338d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 427,
    "line": 423,
    "path": "GRWTSK/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:21225b1e29896792ff4b098e5b8a52a9f5e3d2f802ae1857cfc30cdbed3c7efb",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:69fc2ad55f7c83e93cd9b065505b4aecea062af8df6feed90bba158da38e0fce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 423–427.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def metricSpaceNatNat : MetricSpace (ℕ → ℕ) :=
  PiNat.metricSpaceOfDiscreteUniformity fun _ => rfl

attribute [local instance] PiNat.metricSpace

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean#L423).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c081c0178e9661d20c8edff18db3210ec4d7338d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
