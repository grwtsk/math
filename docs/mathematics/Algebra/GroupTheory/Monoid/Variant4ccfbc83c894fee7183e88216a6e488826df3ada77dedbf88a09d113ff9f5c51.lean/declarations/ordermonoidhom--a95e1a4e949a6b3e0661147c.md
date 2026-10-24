# OrderMonoidHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a4d8f9d5a5e8517ce1387dd8059eaef9baedc47a3caeb68fef8d76682df1a942",
  "kind": "structure",
  "lexical_name": "OrderMonoidHom",
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
  "slug": "ordermonoidhom--a95e1a4e949a6b3e0661147c",
  "source": {
    "blob": "f178027a2f5aeab34361e31724b7030183cb2d8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 115,
    "path": "GRWTSK/Algebra/GroupTheory/Monoid/Variant4ccfbc83c894fee7183e88216a6e488826df3ada77dedbf88a09d113ff9f5c51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a95e1a4e949a6b3e0661147cf58b8c40dc53ed2990764ce2c6787872401eb6c4",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Monoid/Variant4ccfbc83c894fee7183e88216a6e488826df3ada77dedbf88a09d113ff9f5c51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a4d8f9d5a5e8517ce1387dd8059eaef9baedc47a3caeb68fef8d76682df1a942`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure OrderMonoidHom (α β : Type*) [Preorder α] [Preorder β] [MulOneClass α]
  [MulOneClass β] extends α →* β where
  /-- An `OrderMonoidHom` is a monotone function. -/
  monotone' : Monotone toFun

/-- Infix notation for `OrderMonoidHom`. -/
infixr:25 " →*o " => OrderMonoidHom

variable [Preorder α] [Preorder β] [MulOneClass α] [MulOneClass β] [FunLike F α β]

/-- Turn an element of a type `F` satisfying `OrderHomClass F α β` and `MonoidHomClass F α β`
into an actual `OrderMonoidHom`. This is declared as the default coercion from `F` to `α →*o β`. -/
@[to_additive (attr := coe)
  /-- Turn an element of a type `F` satisfying `OrderHomClass F α β` and `AddMonoidHomClass F α β`
  into an actual `OrderAddMonoidHom`.
  This is declared as the default coercion from `F` to `α →+o β`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Monoid/Variant4ccfbc83c894fee7183e88216a6e488826df3ada77dedbf88a09d113ff9f5c51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Monoid/Variant4ccfbc83c894fee7183e88216a6e488826df3ada77dedbf88a09d113ff9f5c51.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f178027a2f5aeab34361e31724b7030183cb2d8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
