# unitMesh

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d7d60ea213f689c702acd8ab6acf001b8260ccc4f049472e973988ba66d8d3a4",
  "kind": "def",
  "lexical_name": "unitMesh",
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
  "slug": "unitmesh--dfa71bd7260c58b6d8f2ad9f",
  "source": {
    "blob": "d90c4c92d9ff8668a33dd6e3b18ed7242b0d73ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 41,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RasterizationTests/Variantab2b138078ac1305c878a6ae974fa0b8fd3cfc15b10f5d1cb1e5c60fd8f89752.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dfa71bd7260c58b6d8f2ad9fc3c213dba9f28a203d8d519ac67292184049627a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RasterizationTests/Variantab2b138078ac1305c878a6ae974fa0b8fd3cfc15b10f5d1cb1e5c60fd8f89752.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d7d60ea213f689c702acd8ab6acf001b8260ccc4f049472e973988ba66d8d3a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unitMesh : PrismMesh unitCarrier where
  activeCells := Finset.univ
  activeCells_subset := by
    intro c hc
    cases c
    exact Finset.mem_singleton_self _
  activeCells_cover := by
    change Set.univ = ⋃ c ∈ (Finset.univ : Finset Unit), Set.univ
    ext p
    simp
  cellVertices := fun _ => Finset.univ
  cellVertices_nonempty := by
    intro c hc
    exact ⟨(), Finset.mem_univ _⟩
  vertex_lies_in_cell := by
    intro c v hc hv
    trivial
  orientation := fun _ => .positive
  boundaryCells := ∅
  boundaryCells_subset := by simp
  obstacleCells := ∅
  obstacleCells_subset := by simp
  interpolationWeight := fun _ _ _ => 1
  weight_nonnegative := by norm_num
  weight_supported := by
    intro c hc p hp v hv
    exact (hv (Finset.mem_univ v)).elim
  weights_sum_one := by
    intro c hc p hp
    simp

/-- One channel carrying `true` at the unique terrain vertex. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RasterizationTests/Variantab2b138078ac1305c878a6ae974fa0b8fd3cfc15b10f5d1cb1e5c60fd8f89752.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RasterizationTests/Variantab2b138078ac1305c878a6ae974fa0b8fd3cfc15b10f5d1cb1e5c60fd8f89752.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d90c4c92d9ff8668a33dd6e3b18ed7242b0d73ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
