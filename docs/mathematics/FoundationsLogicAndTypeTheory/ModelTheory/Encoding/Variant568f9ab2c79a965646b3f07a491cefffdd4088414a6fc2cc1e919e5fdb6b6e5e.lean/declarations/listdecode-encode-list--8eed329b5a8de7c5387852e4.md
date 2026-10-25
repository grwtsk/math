# listDecode_encode_list

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9d6cd07475a268fb275249c20986d22f9a88ef5b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 213,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/568f9ab2c79a965646b3f07a491cefffdd4088414a6fc2cc1e919e5fdb6b6e5e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3ea627a3-e8f4-0f90-1f81-fbbe6beecff6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:883035d4-d63c-9e1f-6500-5afb92dc4e99",
  "kind": "theorem",
  "lexical_name": "listDecode_encode_list",
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
  "slug": "listdecode-encode-list--8eed329b5a8de7c5387852e4",
  "source": {
    "blob": "9d6cd07475a268fb275249c20986d22f9a88ef5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 213,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant568f9ab2c79a965646b3f07a491cefffdd4088414a6fc2cc1e919e5fdb6b6e5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8eed329b5a8de7c5387852e4a519701e85f26338b5cb5bebf2fbccde0fa366b9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant568f9ab2c79a965646b3f07a491cefffdd4088414a6fc2cc1e919e5fdb6b6e5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:883035d4-d63c-9e1f-6500-5afb92dc4e99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem listDecode_encode_list (l : List (Σ n, L.BoundedFormula α n)) :
    listDecode (l.flatMap (fun φ => φ.2.listEncode)) = l := by
  suffices h : ∀ (φ : Σ n, L.BoundedFormula α n)
      (l' : List ((Σk, L.Term (α ⊕ Fin k)) ⊕ ((Σ n, L.Relations n) ⊕ ℕ))),
      (listDecode (listEncode φ.2 ++ l')) = φ::(listDecode l') by
    induction l with
    | nil =>
      rw [List.flatMap_nil]
      simp [listDecode]
    | cons φ l ih => rw [flatMap_cons, h φ _, ih]
  rintro ⟨n, φ⟩
  induction φ with
  | falsum => intro l; rw [listEncode, singleton_append, listDecode]
  | equal =>
    intro l
    rw [listEncode, cons_append, cons_append, listDecode, dif_pos]
    · simp only [eq_mp_eq_cast, cast_eq, eq_self_iff_true, heq_iff_eq, and_self_iff, nil_append]
    · simp only [eq_self_iff_true, heq_iff_eq, and_self_iff]
  | @rel φ_n φ_l φ_R ts =>
    intro l
    rw [listEncode, cons_append, cons_append, singleton_append, cons_append, listDecode]
    have h : ∀ i : Fin φ_l, ((List.map Sum.getLeft? (List.map (fun i : Fin φ_l =>
      Sum.inl (⟨(⟨φ_n, rel φ_R ts⟩ : Σ n, L.BoundedFormula α n).fst, ts i⟩ :
        Σ n, L.Term (α ⊕ (Fin n)))) (finRange φ_l) ++ l))[↑i]?).join = some ⟨_, ts i⟩ := by
      intro i
      simp only [Option.join, map_append, map_map, getElem?_fin, id, Option.bind_eq_some_iff,
        getElem?_eq_some_iff, length_append, length_map, length_finRange, exists_eq_right]
      refine ⟨lt_of_lt_of_le i.2 le_self_add, ?_⟩
      rw [getElem_append_left, getElem_map]
      · simp only [getElem_finRange, cast_mk, Fin.eta, Function.comp_apply, Sum.getLeft?_inl]
      · simp only [length_map, length_finRange, is_lt]
    rw [dif_pos]
    swap
    · exact fun i => Option.isSome_iff_exists.2 ⟨⟨_, ts i⟩, h i⟩
    rw [dif_pos]
    swap
    · intro i
      obtain ⟨h1, h2⟩ := Option.eq_some_iff_get_eq.1 (h i)
      rw [h2]
    simp only [Option.join, eq_mp_eq_cast, cons.injEq, Sigma.mk.inj_iff, heq_eq_eq, rel.injEq,
      true_and]
    refine ⟨funext fun i => ?_, ?_⟩
    · obtain ⟨h1, h2⟩ := Option.eq_some_iff_get_eq.1 (h i)
      rw [cast_eq_iff_heq]
      exact (Sigma.ext_iff.1 ((Sigma.eta (Option.get _ h1)).trans h2)).2
    rw [List.drop_append_eq_append_drop, length_map, length_finRange, Nat.sub_self, drop,
      drop_eq_nil_of_le, nil_append]
    rw [length_map, length_finRange]
  | imp _ _ ih1 ih2 =>
    intro l
    simp only [] at *
    rw [listEncode, List.append_assoc, cons_append, listDecode]
    simp only [ih1, ih2, length_cons, le_add_iff_nonneg_left, _root_.zero_le, ↓reduceDIte,
      getElem_cons_zero, getElem_cons_succ, sigmaImp_apply, drop_succ_cons, drop_zero]
  | all _ ih =>
    intro l
    simp only [] at *
    rw [listEncode, cons_append, listDecode]
    simp only [ih, length_cons, le_add_iff_nonneg_left, _root_.zero_le, ↓reduceDIte,
      getElem_cons_zero, sigmaAll_apply, drop_succ_cons, drop_zero]

/-- An encoding of bounded formulas as lists. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant568f9ab2c79a965646b3f07a491cefffdd4088414a6fc2cc1e919e5fdb6b6e5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant568f9ab2c79a965646b3f07a491cefffdd4088414a6fc2cc1e919e5fdb6b6e5e.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d6cd07475a268fb275249c20986d22f9a88ef5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
