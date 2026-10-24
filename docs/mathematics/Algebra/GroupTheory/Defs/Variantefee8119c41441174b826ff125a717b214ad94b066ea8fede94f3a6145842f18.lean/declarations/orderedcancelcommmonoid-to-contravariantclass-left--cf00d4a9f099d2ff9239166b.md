# OrderedCancelCommMonoid.to_contravariantClass_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:28b4ffc8c7ea70afe1d3e40c12d4c0a6dfb913eee876e6f826f04c04a7d62e2b",
  "kind": "instance",
  "lexical_name": "OrderedCancelCommMonoid.to_contravariantClass_left",
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
  "slug": "orderedcancelcommmonoid-to-contravariantclass-left--cf00d4a9f099d2ff9239166b",
  "source": {
    "blob": "50c52bb012c782a648b1191c57d870781787b4fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 73,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variantefee8119c41441174b826ff125a717b214ad94b066ea8fede94f3a6145842f18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf00d4a9f099d2ff9239166bbc38cb74bf3a1f3f12e59c201fd025576a1d68bc",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variantefee8119c41441174b826ff125a717b214ad94b066ea8fede94f3a6145842f18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:28b4ffc8c7ea70afe1d3e40c12d4c0a6dfb913eee876e6f826f04c04a7d62e2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance OrderedCancelCommMonoid.to_contravariantClass_left (M : Type*)
    [OrderedCancelCommMonoid M] :
    ContravariantClass M M (· * ·) (· < ·) where
  elim _ _ _ := OrderedCancelCommMonoid.lt_of_mul_lt_mul_left _ _ _
#align ordered_cancel_comm_monoid.to_contravariant_class_left OrderedCancelCommMonoid.to_contravariantClass_left
#align ordered_cancel_add_comm_monoid.to_contravariant_class_left OrderedCancelAddCommMonoid.to_contravariantClass_left

/- This instance can be proven with `by infer_instance`.  However, by analogy with the
instance `OrderedCancelCommMonoid.to_covariantClass_right` above, I imagine that without
this instance, some Type would not have a `ContravariantClass M M (function.swap (*)) (<)`
instance. -/
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variantefee8119c41441174b826ff125a717b214ad94b066ea8fede94f3a6145842f18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variantefee8119c41441174b826ff125a717b214ad94b066ea8fede94f3a6145842f18.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50c52bb012c782a648b1191c57d870781787b4fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
