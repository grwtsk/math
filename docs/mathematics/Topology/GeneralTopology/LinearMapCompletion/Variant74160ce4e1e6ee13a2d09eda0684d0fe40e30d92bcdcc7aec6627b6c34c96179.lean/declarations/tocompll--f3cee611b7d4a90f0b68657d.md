# toComplL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:367d4834fc77e99e56d30caf06404aee1642542755bf34245b48252a1a9959bd",
  "kind": "def",
  "lexical_name": "toComplL",
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
  "slug": "tocompll--f3cee611b7d4a90f0b68657d",
  "source": {
    "blob": "9e932e381622df3e9d9db14663db0663a89605fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 102,
    "path": "GRWTSK/Topology/GeneralTopology/LinearMapCompletion/Variant74160ce4e1e6ee13a2d09eda0684d0fe40e30d92bcdcc7aec6627b6c34c96179.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f3cee611b7d4a90f0b68657d63ff017b38e003e4a158311b8bbd523af61f26ef",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LinearMapCompletion/Variant74160ce4e1e6ee13a2d09eda0684d0fe40e30d92bcdcc7aec6627b6c34c96179.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:367d4834fc77e99e56d30caf06404aee1642542755bf34245b48252a1a9959bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toComplL : α →L[S] Completion α where
  __ := toCompl
  map_smul' := by simp
  cont := continuous_toCompl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LinearMapCompletion/Variant74160ce4e1e6ee13a2d09eda0684d0fe40e30d92bcdcc7aec6627b6c34c96179.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LinearMapCompletion/Variant74160ce4e1e6ee13a2d09eda0684d0fe40e30d92bcdcc7aec6627b6c34c96179.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e932e381622df3e9d9db14663db0663a89605fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
