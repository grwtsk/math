# orderedBlocks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b00a2dd3a07fc1658192f5845dab0b55ae80fd14cf8e4478d73dc3ae0646c70e",
  "kind": "def",
  "lexical_name": "orderedBlocks",
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
  "slug": "orderedblocks--055e499b4c25140e63f817c5",
  "source": {
    "blob": "aba217ba360898a36d6e04087d1064f40d157e9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 108,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant141b93c20322bf43c1697b14939834c57404eb6d398b033f87e89c324e9f9d32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:055e499b4c25140e63f817c520d84ef95e79a1544cfd7fd2b9159ff7df6825f6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant141b93c20322bf43c1697b14939834c57404eb6d398b033f87e89c324e9f9d32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b00a2dd3a07fc1658192f5845dab0b55ae80fd14cf8e4478d73dc3ae0646c70e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def orderedBlocks {n : ℕ}
    (c : OrderedFinpartition n) :
    Finset (Finset (Fin n)) :=
  Finset.univ.image (orderedBlock c)

/-- Forget the block order while retaining the same partition of Fin n. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant141b93c20322bf43c1697b14939834c57404eb6d398b033f87e89c324e9f9d32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant141b93c20322bf43c1697b14939834c57404eb6d398b033f87e89c324e9f9d32.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aba217ba360898a36d6e04087d1064f40d157e9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
