# exists_left_inverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ba170a2985400d9d1554ada3cc1904a074f7f9b9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 537,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/020bf29526daa770ae10c05195f6a85d05e71d215c1ff05f76d346c918cefc23.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d9a5a52c-5a3b-06ac-3890-3fa276d1b0b5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1e32f36b-bd1a-119e-6c5d-c4efea5245da",
  "kind": "lemma",
  "lexical_name": "exists_left_inverse",
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
  "slug": "exists-left-inverse--5c7a5a14920869bb62c75c9a",
  "source": {
    "blob": "ba170a2985400d9d1554ada3cc1904a074f7f9b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 564,
    "line": 537,
    "path": "GRWTSK/Topology/AlgebraicTopology/MulStruct/Variant020bf29526daa770ae10c05195f6a85d05e71d215c1ff05f76d346c918cefc23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c7a5a14920869bb62c75c9ac2deea426ae471d9fdb06ccc91425f4eb9b436ba",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/MulStruct/Variant020bf29526daa770ae10c05195f6a85d05e71d215c1ff05f76d346c918cefc23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e32f36b-bd1a-119e-6c5d-c4efea5245da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 537–564.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_left_inverse [KanComplex X] (p : X.PtSimplex (n + 1) x) (i : Fin (n + 1)) :
    ∃ (q : X.PtSimplex (n + 1) x), Nonempty (MulStruct q p .const i) := by
  let α (j : Fin (n + 3)) (hj : j ≠ i.succ.succ) : Δ[n + 1] ⟶ X :=
    if j = i.castSucc.castSucc then p.map else const x
  have δ_α (j) (hj) (k : Fin (n + 2)) : stdSimplex.δ k ≫ α j hj = const x := by
    dsimp [α]; split_ifs <;> simp
  have hα : horn.IsCompatible α := fun _ _ _ _ _ ↦ by simp [δ_α]
  refine ⟨.mk (stdSimplex.δ i.succ.succ ≫ hα.liftOfKanComplex) ?_,
    ⟨{map := hα.liftOfKanComplex
      δ_succ_castSucc_map := ?_
      δ_castSucc_castSucc_map := ?_
      δ_map_of_lt _ _ := ?_
      δ_map_of_gt _ _ := ?_ }⟩⟩
  · ext j : 1
    simp only [boundary.ι_ι_assoc, Subcomplex.ofSimplex_ι, comp_const]
    by_cases! hj : j ≤ i.succ
    · rw [stdSimplex.δ_comp_δ_assoc (by grind),
        hα.δ_liftOfKanComplex .., δ_α _ (by grind)]
    · obtain ⟨i, rfl⟩ := i.eq_castSucc_of_ne_last (by grind)
      rw [← dsimp% stdSimplex.δ_comp_δ_assoc (i := i.succ.succ) (j := j) (by grind),
          hα.δ_liftOfKanComplex .., δ_α _ (by grind)]
  all_goals grind [RelativeMorphism.const_map, horn.IsCompatible.δ_liftOfKanComplex]

end MulStruct

end PtSimplex

end SSet
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/MulStruct/Variant020bf29526daa770ae10c05195f6a85d05e71d215c1ff05f76d346c918cefc23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/MulStruct/Variant020bf29526daa770ae10c05195f6a85d05e71d215c1ff05f76d346c918cefc23.lean#L537).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba170a2985400d9d1554ada3cc1904a074f7f9b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
