# toIsOrderedMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d1b5a93afa88facecb6e7f0d89bea2596d9ddc44cf6abbf0c784d36f0cd6630e",
  "kind": "instance",
  "lexical_name": "toIsOrderedMonoid",
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
  "slug": "toisorderedmonoid--08790441e94d7e405365dc9a",
  "source": {
    "blob": "41b3e8577042d3a8524f6060088da8b056a89460",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 85,
    "path": "GRWTSK/Algebra/GroupTheory/Order/Variant1ed49e7d842599443c64a1aed4935332d8ebc24cab56254e9d798fb200a01617.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:08790441e94d7e405365dc9a1d9720c09e5192d38bf15fdcce55238ee46e320c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Order/Variant1ed49e7d842599443c64a1aed4935332d8ebc24cab56254e9d798fb200a01617.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d1b5a93afa88facecb6e7f0d89bea2596d9ddc44cf6abbf0c784d36f0cd6630e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance toIsOrderedMonoid [CommGroup G] [PartialOrder G] [IsOrderedMonoid G] (H : Subgroup G) :
    IsOrderedMonoid H :=
  Subtype.coe_injective.isOrderedMonoid _ rfl (fun _ _ => rfl) fun _ _ => rfl

end Subgroup

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Order/Variant1ed49e7d842599443c64a1aed4935332d8ebc24cab56254e9d798fb200a01617.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Order/Variant1ed49e7d842599443c64a1aed4935332d8ebc24cab56254e9d798fb200a01617.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41b3e8577042d3a8524f6060088da8b056a89460` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
