# contravariant_mul_lt_of_covariant_mul_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6d31c93854d0037a3e825c0904f0de81c22f50620d06cd1f8c5b7b96adf2d622",
  "kind": "instance",
  "lexical_name": "contravariant_mul_lt_of_covariant_mul_le",
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
  "slug": "contravariant-mul-lt-of-covariant-mul-le--c561aa45fe5b58347189584f",
  "source": {
    "blob": "960a4491f738b6f7e16acff5242462823287610d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 328,
    "path": "GRWTSK/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c561aa45fe5b58347189584f577d8778648d4b00f6972581d08fcb0985907505",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6d31c93854d0037a3e825c0904f0de81c22f50620d06cd1f8c5b7b96adf2d622`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance contravariant_mul_lt_of_covariant_mul_le [Mul N] [LinearOrder N]
    [CovariantClass N N (· * ·) (· ≤ ·)] : ContravariantClass N N (· * ·) (· < ·) where
  elim := (covariant_le_iff_contravariant_lt N N (· * ·)).mp CovariantClass.elim

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `960a4491f738b6f7e16acff5242462823287610d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
