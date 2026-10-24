# selectedFourBlocks_reconstruct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4fbb5988ff9d37353c218790c613a2872045706d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 195,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/90/900dd493688565e1f2646ddc1449ada740e5e64a026bb5fa8fe79f299b25edc1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9c153c2c-a44c-6754-6edb-40929436ad96",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:32f564f9-a806-b4ca-c3f3-bc9c970beada",
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
  "slug": "selectedfourblocks-reconstruct--0fe509b1cc7ba7390484b441",
  "source": {
    "blob": "4fbb5988ff9d37353c218790c613a2872045706d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 195,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/900dd493688565e1f2646ddc1449ada740e5e64a026bb5fa8fe79f299b25edc1FourReconstructi/Variant900dd493688565e1f2646ddc1449ada740e5e64a026bb5fa8fe79f299b25edc1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fe509b1cc7ba7390484b441b1e31cd1d2e087086205d6c4b36ddb99c8b0cebf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/900dd493688565e1f2646ddc1449ada740e5e64a026bb5fa8fe79f299b25edc1FourReconstructi/Variant900dd493688565e1f2646ddc1449ada740e5e64a026bb5fa8fe79f299b25edc1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32f564f9-a806-b4ca-c3f3-bc9c970beada`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–239.

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
  have hf := univ_not_mem_of_mem_properPartitions 4 (Nat.succ_pos 3) hP
  ext B
  have hall : (Finset.univ : Finset (Finset (Fin 4))) =
      {∅,
       ({0} : Finset (Fin 4)),
       ({1} : Finset (Fin 4)),
       ({2} : Finset (Fin 4)),
       ({3} : Finset (Fin 4)),
       ({0, 1} : Finset (Fin 4)),
       ({0, 2} : Finset (Fin 4)),
       ({0, 3} : Finset (Fin 4)),
       ({1, 2} : Finset (Fin 4)),
       ({1, 3} : Finset (Fin 4)),
       ({2, 3} : Finset (Fin 4)),
       ({0, 1, 2} : Finset (Fin 4)),
       ({0, 1, 3} : Finset (Fin 4)),
       ({0, 2, 3} : Finset (Fin 4)),
       ({1, 2, 3} : Finset (Fin 4)), Finset.univ} := by decide
  have hb := Finset.mem_univ B
  rw [hall] at hb
  simp only [Finset.mem_insert, Finset.mem_singleton] at hb
  rcases hb with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl |
    rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  all_goals simp [selectedFourBlocks, mem_selected_insert, hf, Finset.ext_iff, Fin.forall_fin_succ]


end MomentCumulant
end FormalResearch.PositiveAtlas
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/900dd493688565e1f2646ddc1449ada740e5e64a026bb5fa8fe79f299b25edc1FourReconstructi/Variant900dd493688565e1f2646ddc1449ada740e5e64a026bb5fa8fe79f299b25edc1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/900dd493688565e1f2646ddc1449ada740e5e64a026bb5fa8fe79f299b25edc1FourReconstructi/Variant900dd493688565e1f2646ddc1449ada740e5e64a026bb5fa8fe79f299b25edc1.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fbb5988ff9d37353c218790c613a2872045706d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
