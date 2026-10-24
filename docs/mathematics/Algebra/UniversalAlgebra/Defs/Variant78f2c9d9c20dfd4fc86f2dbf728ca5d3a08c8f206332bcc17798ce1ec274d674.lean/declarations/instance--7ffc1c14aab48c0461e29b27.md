# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0338bebcd70237ccf1eb1a768d3fa4af2629bd13362a5e736f984c5245fece67",
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
  "slug": "instance--7ffc1c14aab48c0461e29b27",
  "source": {
    "blob": "1a5bb07ef78c2e4932e28b58f356c84d21bcb925",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 45,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Defs/Variant78f2c9d9c20dfd4fc86f2dbf728ca5d3a08c8f206332bcc17798ce1ec274d674.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7ffc1c14aab48c0461e29b27d7071d65ba4d019dc0cc52a51164bdbf7799c891",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Defs/Variant78f2c9d9c20dfd4fc86f2dbf728ca5d3a08c8f206332bcc17798ce1ec274d674.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0338bebcd70237ccf1eb1a768d3fa4af2629bd13362a5e736f984c5245fece67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) IsOrderedMonoid.toIsOrderedCancelMonoid
    [CommGroup α] [Preorder α] [IsOrderedMonoid α] : IsOrderedCancelMonoid α where
  le_of_mul_le_mul_left a b c bc := by simpa using mul_le_mul_right bc a⁻¹
  le_of_mul_le_mul_right a b c bc := by simpa using mul_le_mul_right bc a⁻¹

/-- Assuming `α` equipped with `LinearOrder` is `CancelCommMonoid` and `IsOrderedMonoid`, it is
also `IsOrderedCancelMonoid`.

TODO: make it an `instance`. To avoid slowdown, it was not an instance when it was submitted. See
https://github.com/leanprover-community/mathlib4/pull/32828. -/
@[to_additive IsOrderedAddMonoid.toIsOrderedCancelAddMonoid'
  /-- Assuming `α` equipped with `LinearOrder` is `AddCancelCommMonoid` and `IsAddOrderedMonoid`, it
  is also `IsAddOrderedCancelMonoid`.

  TODO: make it an `instance`. To avoid slowdown, it was not an instance when it was submitted. See
  https://github.com/leanprover-community/mathlib4/pull/32828. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Defs/Variant78f2c9d9c20dfd4fc86f2dbf728ca5d3a08c8f206332bcc17798ce1ec274d674.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Defs/Variant78f2c9d9c20dfd4fc86f2dbf728ca5d3a08c8f206332bcc17798ce1ec274d674.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a5bb07ef78c2e4932e28b58f356c84d21bcb925` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
