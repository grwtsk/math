# coinduced

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a6fe1dd20e3d5c0182224c67fb10de535cda6fa3d2c82cae59822daa991caefb",
  "kind": "def",
  "lexical_name": "coinduced",
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
  "slug": "coinduced--3b108b8eff5cc72f3b5a7a0e",
  "source": {
    "blob": "4803bf4c3e52790abb9d70c86b7f849f41363357",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 615,
    "line": 613,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant023d6cbe188efb62938cd6556418b85c7df7cb641249946f8cf750bbc2e178a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3b108b8eff5cc72f3b5a7a0ebb93bc6e1176588211c9a7ea5f805b1316b2ed7f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant023d6cbe188efb62938cd6556418b85c7df7cb641249946f8cf750bbc2e178a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a6fe1dd20e3d5c0182224c67fb10de535cda6fa3d2c82cae59822daa991caefb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 613–615.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coinduced {R S : Type*} [t : TopologicalSpace R] [Ring S] (f : R → S) : RingTopology S :=
  sInf { b : RingTopology S | t.coinduced f ≤ b.toTopologicalSpace }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant023d6cbe188efb62938cd6556418b85c7df7cb641249946f8cf750bbc2e178a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant023d6cbe188efb62938cd6556418b85c7df7cb641249946f8cf750bbc2e178a4.lean#L613).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4803bf4c3e52790abb9d70c86b7f849f41363357` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
