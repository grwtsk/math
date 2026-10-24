# blockCumulantValue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:529e6e94dbbed478705e4727670e020eeef670baf9ba5e3bfd7c7002ee8cca66",
  "kind": "def",
  "lexical_name": "blockCumulantValue",
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
  "slug": "blockcumulantvalue--05720d42dbfa002f8ed82d8b",
  "source": {
    "blob": "7ce4927be8e0f0affc46e6c26462a59e98989603",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 145,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant8d8f0a005cc45efeae7a7bc91be77c6029bf54815f68f8522fef4d8017e7ce4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:05720d42dbfa002f8ed82d8b55eac99ba64b423711f7626d872ad4c1a3d083da",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant8d8f0a005cc45efeae7a7bc91be77c6029bf54815f68f8522fef4d8017e7ce4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:529e6e94dbbed478705e4727670e020eeef670baf9ba5e3bfd7c7002ee8cca66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def blockCumulantValue
    {n : ℕ}
    (κ : DirectionCumulantFamily E R)
    (directions : Fin n → E)
    (B : Finset (Fin n)) : R :=
  κ B.card (blockDirections directions B)

/-- Turn an order-indexed directional cumulant family into the block functional
required by the abstract partition recursion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant8d8f0a005cc45efeae7a7bc91be77c6029bf54815f68f8522fef4d8017e7ce4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant8d8f0a005cc45efeae7a7bc91be77c6029bf54815f68f8522fef4d8017e7ce4b.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ce4927be8e0f0affc46e6c26462a59e98989603` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
