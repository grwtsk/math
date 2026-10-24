# selectedFourBlocks_reconstruct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d4efc36-8626-980c-7464-935749e41aff",
  "kind": "theorem",
  "lexical_name": "selectedFourBlocks_reconstruct",
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
  "slug": "selectedfourblocks-reconstruct--2f19d5c2979e3ff115d66866",
  "source": {
    "blob": "1fd4aa2703a3ddca6a8632a0877c7a2a7942e8f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 196,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/17fa13214b601cb4ef49f03be5e9b498c852c00bb8fa4eb1c77d825359273d50FourReconstructi/Variant5e99efd3d4fad048b7307f22a8404c8a308a7065db065083f15d675c5f692f30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f19d5c2979e3ff115d6686631d23f2450f56074b4bc52febffc113333e44e1e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/17fa13214b601cb4ef49f03be5e9b498c852c00bb8fa4eb1c77d825359273d50FourReconstructi/Variant5e99efd3d4fad048b7307f22a8404c8a308a7065db065083f15d675c5f692f30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d4efc36-8626-980c-7464-935749e41aff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem selectedFourBlocks_reconstruct
    (P : DirectionPartition 4) (hP : P ∈ properPartitions 4 (Nat.succ_pos 3)) :
    P.parts = selectedFourBlocks
    (decide (({0} : Finset (Fin 4)) ∈ P.parts))
    (decide (({1} : Finset (Fin 4)) ∈ P.parts))
    (decide (({2} : Finset (Fin 4)) ∈ P.parts))
    (decide (({3} : Finset (Fin 4)) ∈ P.parts))
    (decide (({0, 1} : Finset (Fin 4)) ∈ P.parts))
    (decide (({0, 2} : Finset (Fin 4)) ∈ P.parts))
    (decide (({0, 3} : Finset (Fin 4)) ∈ P.parts))
    (decide (({1, 2} : Finset (Fin 4)) ∈ P.parts))
    (decide (({1, 3} : Finset (Fin 4)) ∈ P.parts))
    (decide (({2, 3} : Finset (Fin 4)) ∈ P.parts))
    (decide (({0, 1, 2} : Finset (Fin 4)) ∈ P.parts))
    (decide (({0, 1, 3} : Finset (Fin 4)) ∈ P.parts))
    (decide (({0, 2, 3} : Finset (Fin 4)) ∈ P.parts))
    (decide (({1, 2, 3} : Finset (Fin 4)) ∈ P.parts)) := by
  have he := P.bot_notMem
  have hf := univ_not_mem_of_mem_properPartitions 4 (Nat.succ_pos 3) hP
  ext B
  have hall : (Finset.univ : Finset (Finset (Fin 4))) =
      {∅, ({0} : Finset (Fin 4)), ({1} : Finset (Fin 4)), ({2} : Finset (Fin 4)), ({3} : Finset (Fin 4)),
       ({0, 1} : Finset (Fin 4)), ({0, 2} : Finset (Fin 4)), ({0, 3} : Finset (Fin 4)), ({1, 2} : Finset (Fin 4)), ({1, 3} : Finset (Fin 4)), ({2, 3} : Finset (Fin 4)),
       ({0, 1, 2} : Finset (Fin 4)), ({0, 1, 3} : Finset (Fin 4)), ({0, 2, 3} : Finset (Fin 4)), ({1, 2, 3} : Finset (Fin 4)), Finset.univ} := by decide
  have hb := Finset.mem_univ B
  rw [hall] at hb
  simp only [Finset.mem_insert, Finset.mem_singleton] at hb
  rcases hb with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl |
    rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  all_goals simp [selectedFourBlocks, apply_ite, he, hf]

end MomentCumulant
end FormalResearch.PositiveAtlas
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/17fa13214b601cb4ef49f03be5e9b498c852c00bb8fa4eb1c77d825359273d50FourReconstructi/Variant5e99efd3d4fad048b7307f22a8404c8a308a7065db065083f15d675c5f692f30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/17fa13214b601cb4ef49f03be5e9b498c852c00bb8fa4eb1c77d825359273d50FourReconstructi/Variant5e99efd3d4fad048b7307f22a8404c8a308a7065db065083f15d675c5f692f30.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fd4aa2703a3ddca6a8632a0877c7a2a7942e8f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
