# HasUpperLowerClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c6a91c6ef4416b91948c4503956b9441020059eee6cfebcf9dc9c1d661490dbd",
  "kind": "class",
  "lexical_name": "HasUpperLowerClosure",
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
  "slug": "hasupperlowerclosure--f07c4c64b581fb4beabcf85a",
  "source": {
    "blob": "3d4c73c3105bedfaf02a7d0f327575f9534f1ede",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 38,
    "path": "GRWTSK/Topology/GeneralTopology/UpperLower/Variantfb4af406251b867e768e5758f0d930468389533609f88c238f99392d99d560c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f07c4c64b581fb4beabcf85a2c5fb5fd6feba08b24ce1cb8acd0774383a8e39a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UpperLower/Variantfb4af406251b867e768e5758f0d930468389533609f88c238f99392d99d560c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c6a91c6ef4416b91948c4503956b9441020059eee6cfebcf9dc9c1d661490dbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class HasUpperLowerClosure (α : Type*) [TopologicalSpace α] [Preorder α] : Prop where
  isUpperSet_closure : ∀ s : Set α, IsUpperSet s → IsUpperSet (closure s)
  isLowerSet_closure : ∀ s : Set α, IsLowerSet s → IsLowerSet (closure s)
  isOpen_upperClosure : ∀ s : Set α, IsOpen s → IsOpen (upperClosure s : Set α)
  isOpen_lowerClosure : ∀ s : Set α, IsOpen s → IsOpen (lowerClosure s : Set α)

variable {α : Type*} [TopologicalSpace α]

-- See note [lower instance priority]
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UpperLower/Variantfb4af406251b867e768e5758f0d930468389533609f88c238f99392d99d560c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UpperLower/Variantfb4af406251b867e768e5758f0d930468389533609f88c238f99392d99d560c7.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d4c73c3105bedfaf02a7d0f327575f9534f1ede` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
