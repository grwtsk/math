# RightCancelMonoid.faithfulSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8ca883ec9cec4e0acc7c77e1900c329d085e404d5554e7980723f3f23d437102",
  "kind": "instance",
  "lexical_name": "RightCancelMonoid.faithfulSMul",
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
  "slug": "rightcancelmonoid-faithfulsmul--cc3c7d806befd6d3498e72cc",
  "source": {
    "blob": "f21b780c71af0700c9d772ccfe845634177b6a04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 64,
    "path": "GRWTSK/Algebra/GroupTheory/Faithful/Variant242e2e0dac88b8b3642169a38c8826442b96ec5b943f46beac62bbc9f6ca3d9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc3c7d806befd6d3498e72cccf8b2e296c5e0fc0e14fb96ff5f92478fc8a13ab",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Faithful/Variant242e2e0dac88b8b3642169a38c8826442b96ec5b943f46beac62bbc9f6ca3d9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8ca883ec9cec4e0acc7c77e1900c329d085e404d5554e7980723f3f23d437102`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance RightCancelMonoid.faithfulSMul [RightCancelMonoid α] : FaithfulSMul α α :=
  ⟨fun h ↦ mul_right_cancel (h 1)⟩

/-- `Monoid.toOppositeMulAction` is faithful on cancellative monoids. -/
@[to_additive " `AddMonoid.toOppositeAddAction` is faithful on additive cancellative monoids. "]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Faithful/Variant242e2e0dac88b8b3642169a38c8826442b96ec5b943f46beac62bbc9f6ca3d9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Faithful/Variant242e2e0dac88b8b3642169a38c8826442b96ec5b943f46beac62bbc9f6ca3d9c.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f21b780c71af0700c9d772ccfe845634177b6a04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
