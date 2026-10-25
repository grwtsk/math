# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b9fe55e658efbc0723c8f5084258a076b852cd28964d8c415fb453cd0f881108",
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
  "slug": "example--f63c5d8571ad4e4183e87fe7",
  "source": {
    "blob": "b523cf176045b729d4b2512727093ef51ee6c021",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 33,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateSearchExamples/Variant2e347cd93e8258c1e11e369207b61fbefc592d805bee25c2318bf3adc0889887.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f63c5d8571ad4e4183e87fe77062f19219e02969cec1af49d358354744173463",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateSearchExamples/Variant2e347cd93e8258c1e11e369207b61fbefc592d805bee25c2318bf3adc0889887.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b9fe55e658efbc0723c8f5084258a076b852cd28964d8c415fb453cd0f881108`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–56.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateSearchExamples/Variant2e347cd93e8258c1e11e369207b61fbefc592d805bee25c2318bf3adc0889887.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateSearchExamples/Variant2e347cd93e8258c1e11e369207b61fbefc592d805bee25c2318bf3adc0889887.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b523cf176045b729d4b2512727093ef51ee6c021` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
