# OrderMonoidIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08c4d720ba4e3ad75cb091a6fd0b9f2114aeda73ef845b15a422fb104ef6f9ce",
  "kind": "structure",
  "lexical_name": "OrderMonoidIso",
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
  "slug": "ordermonoidiso--13a98fe3e38ab7e9de726e20",
  "source": {
    "blob": "9b90c52ba0bf9a6ffd36e81999d187b25dd0b9bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 158,
    "path": "GRWTSK/Algebra/GroupTheory/Monoid/Variant786fcd40718711695d3cdeb6582a7068d4a9e08a2d1d627e87d5a455f6a99136.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:13a98fe3e38ab7e9de726e20e40c2c1523e190cb55c8414829f0bb320563ecd6",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Monoid/Variant786fcd40718711695d3cdeb6582a7068d4a9e08a2d1d627e87d5a455f6a99136.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08c4d720ba4e3ad75cb091a6fd0b9f2114aeda73ef845b15a422fb104ef6f9ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure OrderMonoidIso (α β : Type*) [Preorder α] [Preorder β] [Mul α] [Mul β]
  extends α ≃* β where
  /-- An `OrderMonoidIso` respects `≤`. -/
  map_le_map_iff' {a b : α} : toFun a ≤ toFun b ↔ a ≤ b

/-- Infix notation for `OrderMonoidIso`. -/
infixr:25 " ≃*o " => OrderMonoidIso

/-- Turn an element of a type `F` satisfying `OrderIsoClass F α β` and `MulEquivClass F α β`
into an actual `OrderMonoidIso`. This is declared as the default coercion from `F` to `α ≃*o β`. -/
@[to_additive (attr := coe)
  /-- Turn an element of a type `F` satisfying `OrderIsoClass F α β` and `AddEquivClass F α β`
  into an actual `OrderAddMonoidIso`.
  This is declared as the default coercion from `F` to `α ≃+o β`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Monoid/Variant786fcd40718711695d3cdeb6582a7068d4a9e08a2d1d627e87d5a455f6a99136.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Monoid/Variant786fcd40718711695d3cdeb6582a7068d4a9e08a2d1d627e87d5a455f6a99136.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b90c52ba0bf9a6ffd36e81999d187b25dd0b9bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
