# closure_coe_iSup_map_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5097dd7ae0d4e5c2eb3f8cb96adeb5bb188b83cd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 232,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/682ca9f1b0d4d9c27bb64538ed5c2c9cf77d8592a8a985edbaa8290b8ef2dcb4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2e47d03f-4e89-d7bc-5588-51e72f9930c4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1fa8aced-eee3-53af-c3e4-bb867d575d8c",
  "kind": "theorem",
  "lexical_name": "closure_coe_iSup_map_single",
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
  "slug": "closure-coe-isup-map-single--4c801e0d0a4b8dc9fc1466de",
  "source": {
    "blob": "5097dd7ae0d4e5c2eb3f8cb96adeb5bb188b83cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 232,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant682ca9f1b0d4d9c27bb64538ed5c2c9cf77d8592a8a985edbaa8290b8ef2dcb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c801e0d0a4b8dc9fc1466de40f7ea2b31220bb15b66d67f2cc05b52413531ba",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant682ca9f1b0d4d9c27bb64538ed5c2c9cf77d8592a8a985edbaa8290b8ef2dcb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fa8aced-eee3-53af-c3e4-bb867d575d8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closure_coe_iSup_map_single (s : ∀ i, Submodule R (M i)) :
    closure (↑(⨆ i, (s i).map (LinearMap.single R M i)) : Set (∀ i, M i)) =
      Set.univ.pi fun i ↦ closure (s i) := by
  rw [← closure_pi_set]
  refine (closure_mono ?_).antisymm <| closure_minimal ?_ isClosed_closure
  · exact SetLike.coe_mono <| iSup_map_single_le
  · simp only [Set.subset_def, mem_closure_iff]
    intro x hx U hU hxU
    rcases isOpen_pi_iff.mp hU x hxU with ⟨t, V, hV, hVU⟩
    refine ⟨∑ i ∈ t, Pi.single i (x i), hVU ?_, ?_⟩
    · simp_all [Finset.sum_pi_single]
    · exact sum_mem fun i hi ↦ mem_iSup_of_mem i <| mem_map_of_mem <| hx _ <| Set.mem_univ _

/-- If `s i` is a family of submodules, each is in its module,
then the closure of their span in the indexed product of the modules
is the product of their closures.

In case of a finite index type, this statement immediately follows from `Submodule.iSup_map_single`.
However, the statement is true for an infinite index type as well.

This version is stated in terms of `Submodule.topologicalClosure`,
thus assumes that `M i`s are topological modules over `R`.
However, the statement is true without assuming continuity of the operations,
see `Submodule.closure_coe_iSup_map_single` above. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant682ca9f1b0d4d9c27bb64538ed5c2c9cf77d8592a8a985edbaa8290b8ef2dcb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant682ca9f1b0d4d9c27bb64538ed5c2c9cf77d8592a8a985edbaa8290b8ef2dcb4.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5097dd7ae0d4e5c2eb3f8cb96adeb5bb188b83cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
