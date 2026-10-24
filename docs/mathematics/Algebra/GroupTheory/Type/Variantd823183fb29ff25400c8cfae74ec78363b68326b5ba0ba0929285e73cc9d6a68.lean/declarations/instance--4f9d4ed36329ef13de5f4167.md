# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eda1569c8fd9f8e4b401107d21ac4cf773d88fed2aa624bd658317eca221e812",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--4f9d4ed36329ef13de5f4167",
  "source": {
    "blob": "0acd64e91590c7f372dd7b82dadec6d4853951f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 455,
    "line": 453,
    "path": "GRWTSK/Algebra/GroupTheory/Type/Variantd823183fb29ff25400c8cfae74ec78363b68326b5ba0ba0929285e73cc9d6a68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4f9d4ed36329ef13de5f4167e41094a51fbc8db6458be9fbb303be9be713e24c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Type/Variantd823183fb29ff25400c8cfae74ec78363b68326b5ba0ba0929285e73cc9d6a68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eda1569c8fd9f8e4b401107d21ac4cf773d88fed2aa624bd658317eca221e812`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 453–455.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [Fintype G] : Fintype (vectorsProdEqOne G n) :=
  Fintype.ofEquiv (List.Vector G (n - 1)) (equivVector G n).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Type/Variantd823183fb29ff25400c8cfae74ec78363b68326b5ba0ba0929285e73cc9d6a68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Type/Variantd823183fb29ff25400c8cfae74ec78363b68326b5ba0ba0929285e73cc9d6a68.lean#L453).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0acd64e91590c7f372dd7b82dadec6d4853951f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
