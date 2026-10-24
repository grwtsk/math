# PartialRefinement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4095922b7dfe6be637ee57a6ae39d36432bef29d7b7347ddcfdb3770956945a3",
  "kind": "structure",
  "lexical_name": "PartialRefinement",
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
  "slug": "partialrefinement--f4c1ed28bc4bf54b41d18b02",
  "source": {
    "blob": "f3ef08a5f6a7e0a2c9bca8d17105ea95cf00ca2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 49,
    "path": "GRWTSK/Topology/GeneralTopology/ShrinkingLemma/Variant52e9d443dcb976580e9293b07287ab0c9f93382ad42e0e760bf8ef18c200601a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f4c1ed28bc4bf54b41d18b024ac1f2be476de2f41924351034ba3e11b3529862",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ShrinkingLemma/Variant52e9d443dcb976580e9293b07287ab0c9f93382ad42e0e760bf8ef18c200601a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4095922b7dfe6be637ee57a6ae39d36432bef29d7b7347ddcfdb3770956945a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[ext] structure PartialRefinement (u : ι → Set X) (s : Set X) (p : Set X → Prop) where
  /-- A family of sets that form a partial refinement of `u`. -/
  toFun : ι → Set X
  /-- The set of indexes `i` such that `i`-th set is already shrunk. -/
  carrier : Set ι
  /-- Each set from the partially refined family is open. -/
  protected isOpen : ∀ i, IsOpen (toFun i)
  /-- The partially refined family still covers the set. -/
  subset_iUnion : s ⊆ ⋃ i, toFun i
  /-- For each `i ∈ carrier`, the original set includes the closure of the refined set. -/
  closure_subset : ∀ {i}, i ∈ carrier → closure (toFun i) ⊆ u i
  /-- For each `i ∈ carrier`, the refined set satisfies `p`. -/
  pred_of_mem {i} (hi : i ∈ carrier) : p (toFun i)
  /-- Sets that correspond to `i ∉ carrier` are not modified. -/
  apply_eq : ∀ {i}, i ∉ carrier → toFun i = u i

namespace PartialRefinement

variable {u : ι → Set X} {s : Set X} {p : Set X → Prop}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ShrinkingLemma/Variant52e9d443dcb976580e9293b07287ab0c9f93382ad42e0e760bf8ef18c200601a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ShrinkingLemma/Variant52e9d443dcb976580e9293b07287ab0c9f93382ad42e0e760bf8ef18c200601a.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3ef08a5f6a7e0a2c9bca8d17105ea95cf00ca2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
