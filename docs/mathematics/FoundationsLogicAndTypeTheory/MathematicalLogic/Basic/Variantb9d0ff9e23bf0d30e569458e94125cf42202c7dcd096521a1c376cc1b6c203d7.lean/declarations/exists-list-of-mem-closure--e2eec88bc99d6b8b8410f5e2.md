# exists_list_of_mem_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2a7e91e6a598bac845be6974d92a6d9ab37dda03",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1001,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9d0ff9e23bf0d30e569458e94125cf42202c7dcd096521a1c376cc1b6c203d7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c1a74d34-c585-4eec-02cc-76d779d899d5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:693b1f86-4e0f-8805-530c-6609d7139919",
  "kind": "theorem",
  "lexical_name": "exists_list_of_mem_closure",
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
  "slug": "exists-list-of-mem-closure--e2eec88bc99d6b8b8410f5e2",
  "source": {
    "blob": "2a7e91e6a598bac845be6974d92a6d9ab37dda03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1022,
    "line": 1001,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb9d0ff9e23bf0d30e569458e94125cf42202c7dcd096521a1c376cc1b6c203d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2eec88bc99d6b8b8410f5e2d3aa8b85904f9b6a221c8bddea16b7c5a9534827",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb9d0ff9e23bf0d30e569458e94125cf42202c7dcd096521a1c376cc1b6c203d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:693b1f86-4e0f-8805-530c-6609d7139919`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1001–1022.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_list_of_mem_closure {s : Set R} {x : R} (h : x ∈ closure s) :
    ∃ L : List (List R), (∀ t ∈ L, ∀ y ∈ t, y ∈ s ∨ y = (-1 : R)) ∧ (L.map List.prod).sum = x :=
  AddSubgroup.closure_induction (G := R)
    (p := (∃ L : List (List R), (∀ t ∈ L, ∀ y ∈ t, y ∈ s ∨ y = -1) ∧ (L.map List.prod).sum = ·))
    (mem_closure_iff.1 h)
    (fun x hx =>
      let ⟨l, hl, h⟩ := Submonoid.exists_list_of_mem_closure hx
      ⟨[l], by simp [h]; clear_aux_decl; tauto⟩)
    ⟨[], by simp⟩
    (fun x y ⟨l, hl1, hl2⟩ ⟨m, hm1, hm2⟩ =>
      ⟨l ++ m, fun t ht => (List.mem_append.1 ht).elim (hl1 t) (hm1 t), by simp [hl2, hm2]⟩)
    fun x ⟨L, hL⟩ =>
    ⟨L.map (List.cons (-1)),
      List.forall_mem_map_iff.2 fun j hj => List.forall_mem_cons.2 ⟨Or.inr rfl, hL.1 j hj⟩,
      hL.2 ▸
        List.recOn L (by simp)
          (by simp (config := { contextual := true }) [List.map_cons, add_comm])⟩
#align subring.exists_list_of_mem_closure Subring.exists_list_of_mem_closure

variable (R)

/-- `closure` forms a Galois insertion with the coercion to set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb9d0ff9e23bf0d30e569458e94125cf42202c7dcd096521a1c376cc1b6c203d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb9d0ff9e23bf0d30e569458e94125cf42202c7dcd096521a1c376cc1b6c203d7.lean#L1001).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a7e91e6a598bac845be6974d92a6d9ab37dda03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
