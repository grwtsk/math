# ContinuousMonoidHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b3877b8f3566856724c9d3de00328b8b9b4682272c7a99407d0884c7938a2ed9",
  "kind": "structure",
  "lexical_name": "ContinuousMonoidHom",
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
  "slug": "continuousmonoidhom--f179f87d7120594a338af828",
  "source": {
    "blob": "9e7abbe2bc2b3b6e54145fdb8f069b21ae0f82d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 52,
    "path": "GRWTSK/Topology/ContinuousMonoidHom/Variantd7189b4feeb9905d907018831a2926ed1412e39a0eebcc6e01c6d25a63c15fc9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f179f87d7120594a338af8289a86f34eb27cb28eb9124b41a85082472c59e7f2",
  "verification": {
    "reference": "docs/verification/Topology/ContinuousMonoidHom/Variantd7189b4feeb9905d907018831a2926ed1412e39a0eebcc6e01c6d25a63c15fc9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b3877b8f3566856724c9d3de00328b8b9b4682272c7a99407d0884c7938a2ed9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ContinuousMonoidHom extends A →* B, C(A, B)

/-- Reinterpret a `ContinuousMonoidHom` as a `MonoidHom`. -/
add_decl_doc ContinuousMonoidHom.toMonoidHom

/-- Reinterpret a `ContinuousAddMonoidHom` as an `AddMonoidHom`. -/
add_decl_doc ContinuousAddMonoidHom.toAddMonoidHom

/-- Reinterpret a `ContinuousMonoidHom` as a `ContinuousMap`. -/
add_decl_doc ContinuousMonoidHom.toContinuousMap

/-- Reinterpret a `ContinuousAddMonoidHom` as a `ContinuousMap`. -/
add_decl_doc ContinuousAddMonoidHom.toContinuousMap

namespace ContinuousMonoidHom

/-- The type of continuous monoid homomorphisms from `A` to `B`.-/
infixr:25 " →ₜ+ " => ContinuousAddMonoidHom
/-- The type of continuous monoid homomorphisms from `A` to `B`.-/
infixr:25 " →ₜ* " => ContinuousMonoidHom

variable {A B C D E}

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/ContinuousMonoidHom/Variantd7189b4feeb9905d907018831a2926ed1412e39a0eebcc6e01c6d25a63c15fc9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/ContinuousMonoidHom/Variantd7189b4feeb9905d907018831a2926ed1412e39a0eebcc6e01c6d25a63c15fc9.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e7abbe2bc2b3b6e54145fdb8f069b21ae0f82d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
