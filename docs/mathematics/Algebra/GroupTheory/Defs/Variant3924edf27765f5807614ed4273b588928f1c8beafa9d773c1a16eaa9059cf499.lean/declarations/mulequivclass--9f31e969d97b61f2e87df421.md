# MulEquivClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:23e9a5e95f36d1bbc4c8bc1e66b2e98395f3a12f364af0802479e5f35174ffb0",
  "kind": "class",
  "lexical_name": "MulEquivClass",
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
  "slug": "mulequivclass--9f31e969d97b61f2e87df421",
  "source": {
    "blob": "791e07e3a771eb44b561f4f33b1fe40959650993",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 94,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant3924edf27765f5807614ed4273b588928f1c8beafa9d773c1a16eaa9059cf499.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9f31e969d97b61f2e87df421e07a4ce3410a274ddb54cf5d345312b6f28cbce3",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant3924edf27765f5807614ed4273b588928f1c8beafa9d773c1a16eaa9059cf499.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:23e9a5e95f36d1bbc4c8bc1e66b2e98395f3a12f364af0802479e5f35174ffb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class MulEquivClass (F : Type*) (A B : outParam Type*) [Mul A] [Mul B] [EquivLike F A B] :
    Prop where
  /-- Preserves multiplication. -/
  map_mul : ∀ (f : F) (a b), f (a * b) = f a * f b

@[to_additive]
alias MulEquivClass.map_eq_one_iff := EmbeddingLike.map_eq_one_iff

-- `alias` doesn't add the deprecation suggestion to the `to_additive` version
-- see https://github.com/leanprover-community/mathlib4/issues/19424
attribute [deprecated EmbeddingLike.map_eq_one_iff (since := "2024-11-10")]
MulEquivClass.map_eq_one_iff
attribute [deprecated EmbeddingLike.map_eq_zero_iff (since := "2024-11-10")]
AddEquivClass.map_eq_zero_iff


@[to_additive]
alias MulEquivClass.map_ne_one_iff := EmbeddingLike.map_ne_one_iff

-- `alias` doesn't add the deprecation suggestion to the `to_additive` version
-- see https://github.com/leanprover-community/mathlib4/issues/19424
attribute [deprecated EmbeddingLike.map_ne_one_iff (since := "2024-11-10")]
MulEquivClass.map_ne_one_iff
attribute [deprecated EmbeddingLike.map_ne_zero_iff (since := "2024-11-10")]
AddEquivClass.map_ne_zero_iff


namespace MulEquivClass

variable (F)
variable [EquivLike F M N]

-- See note [lower instance priority]
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant3924edf27765f5807614ed4273b588928f1c8beafa9d773c1a16eaa9059cf499.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant3924edf27765f5807614ed4273b588928f1c8beafa9d773c1a16eaa9059cf499.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `791e07e3a771eb44b561f4f33b1fe40959650993` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
