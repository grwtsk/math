# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:590ab22771825a058708a909c88747c81a271dc3ee30a9210994b0df658944cc",
  "kind": "example",
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
  "slug": "example--9a9b6b00d293ad3c84fd0eed",
  "source": {
    "blob": "698389b3a3d4eb044b896586484f01acfb2d3433",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateSearchExamples/Variant7cdc5e20f9758dadfc167432a10077f73776277613e8446b429ed5be8004aa72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9a9b6b00d293ad3c84fd0eed31ee5c79e9f8a5dd56ffeda7a9afa1dcb3d2cc9d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateSearchExamples/Variant7cdc5e20f9758dadfc167432a10077f73776277613e8446b429ed5be8004aa72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:590ab22771825a058708a909c88747c81a271dc3ee30a9210994b0df658944cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : 0 < 1 := by
  #statesearch
  sorry

set_option statesearch.queries 6

/--
info: Try these:
  • #check zero_lt_one -- ∀ {α : Type u_1} [inst : Zero α] [inst_1 : One α] [inst_2 : PartialOrder α] [ZeroLEOneClass α] [NeZero (1 : α)], (0 : α) < (1 : α)
    ⏎
  • #check one_pos -- ∀ {α : Type u_1} [inst : Zero α] [inst_1 : One α] [inst_2 : PartialOrder α] [ZeroLEOneClass α] [NeZero (1 : α)], (0 : α) < (1 : α)
    ⏎
  • #check zero_lt_one' -- ∀ (α : Type u_1) [inst : Zero α] [inst_1 : One α] [inst_2 : PartialOrder α] [ZeroLEOneClass α] [NeZero (1 : α)], (0 : α) < (1 : α)
    ⏎
  • #check ONote.zero_lt_one -- (0 : ONote) < (1 : ONote)
    ⏎
  • #check ONote.lt_def -- ∀ {x y : ONote}, x < y ↔ x.repr < y.repr
    ⏎
  • #check inv_lt_one_of_one_lt₀ -- ∀ {G₀ : Type u_3} [inst : GroupWithZero G₀] [inst_1 : PartialOrder G₀] [PosMulReflectLT G₀] {a : G₀} [ZeroLEOneClass G₀], (1 : G₀) < a → a⁻¹ < (1 : G₀)
    ⏎
---
warning: declaration uses 'sorry'
-/
#guard_msgs in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateSearchExamples/Variant7cdc5e20f9758dadfc167432a10077f73776277613e8446b429ed5be8004aa72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateSearchExamples/Variant7cdc5e20f9758dadfc167432a10077f73776277613e8446b429ed5be8004aa72.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `698389b3a3d4eb044b896586484f01acfb2d3433` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
