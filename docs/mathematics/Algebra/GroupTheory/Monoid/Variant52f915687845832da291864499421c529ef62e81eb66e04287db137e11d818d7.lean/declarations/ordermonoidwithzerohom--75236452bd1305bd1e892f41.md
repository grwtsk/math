# OrderMonoidWithZeroHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:79554fbe83a7225f258fe1a6dfca627cdec01750da1d4c029f0c7c732359ec2e",
  "kind": "structure",
  "lexical_name": "OrderMonoidWithZeroHom",
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
  "slug": "ordermonoidwithzerohom--75236452bd1305bd1e892f41",
  "source": {
    "blob": "7ce4070aef81df0aaac57f7d622ffa81c3ef28b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 196,
    "path": "GRWTSK/Algebra/GroupTheory/Monoid/Variant52f915687845832da291864499421c529ef62e81eb66e04287db137e11d818d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:75236452bd1305bd1e892f41b1821f03c1630e7ff0c20a2f1cba75098199032c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Monoid/Variant52f915687845832da291864499421c529ef62e81eb66e04287db137e11d818d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:79554fbe83a7225f258fe1a6dfca627cdec01750da1d4c029f0c7c732359ec2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure OrderMonoidWithZeroHom (α β : Type*) [Preorder α] [Preorder β] [MulZeroOneClass α]
  [MulZeroOneClass β] extends α →*₀ β where
  /-- An `OrderMonoidWithZeroHom` is a monotone function. -/
  monotone' : Monotone toFun

/-- Infix notation for `OrderMonoidWithZeroHom`. -/
infixr:25 " →*₀o " => OrderMonoidWithZeroHom

section

variable [FunLike F α β]

/-- Turn an element of a type `F`
satisfying `OrderHomClass F α β` and `MonoidWithZeroHomClass F α β`
into an actual `OrderMonoidWithZeroHom`.
This is declared as the default coercion from `F` to `α →+*₀o β`. -/
@[coe]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Monoid/Variant52f915687845832da291864499421c529ef62e81eb66e04287db137e11d818d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Monoid/Variant52f915687845832da291864499421c529ef62e81eb66e04287db137e11d818d7.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ce4070aef81df0aaac57f7d622ffa81c3ef28b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
