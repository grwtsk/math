# OrderedCommMonoid.to_covariantClass_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:02adbb4ee2312451fabf322b3680d9e991dd9bd3e37b42e65533e7aff646de03",
  "kind": "instance",
  "lexical_name": "OrderedCommMonoid.to_covariantClass_right",
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
  "slug": "orderedcommmonoid-to-covariantclass-right--9dfae72e578da608ade1b615",
  "source": {
    "blob": "f751481bf5faa6e067930beb20556ceef332a900",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 63,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant58ccc16ef77896cda9f8f132fbc0faa2064f07d28d3b1d9cf1d012605b5aded9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9dfae72e578da608ade1b6156ec8a98f313f6cf70fd8a76352abc356cb0ea721",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant58ccc16ef77896cda9f8f132fbc0faa2064f07d28d3b1d9cf1d012605b5aded9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:02adbb4ee2312451fabf322b3680d9e991dd9bd3e37b42e65533e7aff646de03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance OrderedCommMonoid.to_covariantClass_right (M : Type*) [OrderedCommMonoid M] :
    CovariantClass M M (swap (· * ·)) (· ≤ ·) :=
  covariant_swap_mul_le_of_covariant_mul_le M
#align ordered_comm_monoid.to_covariant_class_right OrderedCommMonoid.to_covariantClass_right
#align ordered_add_comm_monoid.to_covariant_class_right OrderedAddCommMonoid.to_covariantClass_right

/- This is not an instance, to avoid creating a loop in the type-class system: in a
`LeftCancelSemigroup` with a `PartialOrder`, assuming `CovariantClass M M (*) (≤)` implies
`CovariantClass M M (*) (<)`, see `LeftCancelSemigroup.covariant_mul_lt_of_covariant_mul_le`. -/
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant58ccc16ef77896cda9f8f132fbc0faa2064f07d28d3b1d9cf1d012605b5aded9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant58ccc16ef77896cda9f8f132fbc0faa2064f07d28d3b1d9cf1d012605b5aded9.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f751481bf5faa6e067930beb20556ceef332a900` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
