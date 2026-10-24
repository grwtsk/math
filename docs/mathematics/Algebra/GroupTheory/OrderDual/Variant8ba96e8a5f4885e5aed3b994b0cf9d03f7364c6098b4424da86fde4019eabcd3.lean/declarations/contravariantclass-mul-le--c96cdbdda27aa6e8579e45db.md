# contravariantClass_mul_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:54488d212ec17583c12f7e0f36632c68f3d9f7920c4895f5eed5732545cdb050",
  "kind": "instance",
  "lexical_name": "contravariantClass_mul_le",
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
  "slug": "contravariantclass-mul-le--c96cdbdda27aa6e8579e45db",
  "source": {
    "blob": "657db0f6e0b56eb5551fcdb022f3b3c31d25e2d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 31,
    "path": "GRWTSK/Algebra/GroupTheory/OrderDual/Variant8ba96e8a5f4885e5aed3b994b0cf9d03f7364c6098b4424da86fde4019eabcd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c96cdbdda27aa6e8579e45dbfbee3a55838af9b81e16b2ed47158518424b1043",
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

Occurrence: `declaration:54488d212ec17583c12f7e0f36632c68f3d9f7920c4895f5eed5732545cdb050`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance contravariantClass_mul_le [LE α] [Mul α] [c : ContravariantClass α α (· * ·) (· ≤ ·)] :
    ContravariantClass αᵒᵈ αᵒᵈ (· * ·) (· ≤ ·) :=
  ⟨c.1.flip⟩
#align order_dual.contravariant_class_add_le OrderDual.contravariantClass_add_le
#align order_dual.contravariant_class_mul_le OrderDual.contravariantClass_mul_le

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/OrderDual/Variant8ba96e8a5f4885e5aed3b994b0cf9d03f7364c6098b4424da86fde4019eabcd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/OrderDual/Variant8ba96e8a5f4885e5aed3b994b0cf9d03f7364c6098b4424da86fde4019eabcd3.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `657db0f6e0b56eb5551fcdb022f3b3c31d25e2d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
