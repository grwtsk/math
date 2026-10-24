# orderedCancelCommMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:25ed31990b426a161d4a78a3a006d4a2e3ab89f4edf1f0d1b7e21f2567b98569",
  "kind": "instance",
  "lexical_name": "orderedCancelCommMonoid",
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
  "slug": "orderedcancelcommmonoid--1389462007044a4dd4274564",
  "source": {
    "blob": "657db0f6e0b56eb5551fcdb022f3b3c31d25e2d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 109,
    "path": "GRWTSK/Algebra/GroupTheory/OrderDual/Variant8ba96e8a5f4885e5aed3b994b0cf9d03f7364c6098b4424da86fde4019eabcd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1389462007044a4dd427456433f5830e6eedc7c3023ee8d3c3608afb355734b2",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/OrderDual/Variant8ba96e8a5f4885e5aed3b994b0cf9d03f7364c6098b4424da86fde4019eabcd3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:25ed31990b426a161d4a78a3a006d4a2e3ab89f4edf1f0d1b7e21f2567b98569`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance orderedCancelCommMonoid [OrderedCancelCommMonoid α] : OrderedCancelCommMonoid αᵒᵈ :=
  { OrderDual.orderedCommMonoid, @instCancelCommMonoidOrderDual α _ with
    le_of_mul_le_mul_left := fun _ _ _ : α => le_of_mul_le_mul_left' }

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/OrderDual/Variant8ba96e8a5f4885e5aed3b994b0cf9d03f7364c6098b4424da86fde4019eabcd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/OrderDual/Variant8ba96e8a5f4885e5aed3b994b0cf9d03f7364c6098b4424da86fde4019eabcd3.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `657db0f6e0b56eb5551fcdb022f3b3c31d25e2d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
