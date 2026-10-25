# exists_top_eq_snoc_equivalant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9b07d2fb6f5808aa838077f6dd4759536e1ac17f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 749,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4d9205fed153789fb39c94b6af26dc54eb82154671d35de5088cc06ba8fdeefd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1ebecff8-9d4f-80e2-7a53-de1b8fb6716e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:72ce6a38-3da1-2518-3b09-071e71834172",
  "kind": "theorem",
  "lexical_name": "exists_top_eq_snoc_equivalant",
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
  "slug": "exists-top-eq-snoc-equivalant--4291ac643f9a18947450fc75",
  "source": {
    "blob": "9b07d2fb6f5808aa838077f6dd4759536e1ac17f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 789,
    "line": 749,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant4d9205fed153789fb39c94b6af26dc54eb82154671d35de5088cc06ba8fdeefd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4291ac643f9a18947450fc75bd91c4389143a85dce12733b35aff890d8a34640",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant4d9205fed153789fb39c94b6af26dc54eb82154671d35de5088cc06ba8fdeefd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72ce6a38-3da1-2518-3b09-071e71834172`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 749–789.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_top_eq_snoc_equivalant (s : CompositionSeries X) (x : X) (hm : IsMaximal x s.top)
    (hb : s.bot ≤ x) :
    ∃ t : CompositionSeries X,
      t.bot = s.bot ∧ t.length + 1 = s.length ∧
      ∃ htx : t.top = x, Equivalent s (snoc t s.top (htx.symm ▸ hm)) := by
  induction' hn : s.length with n ih generalizing s x
  · exact
      (ne_of_gt (lt_of_le_of_lt hb (lt_of_isMaximal hm))
          (forall_mem_eq_of_length_eq_zero hn s.top_mem s.bot_mem)).elim
  · have h0s : 0 < s.length := hn.symm ▸ Nat.succ_pos _
    by_cases hetx : s.eraseTop.top = x
    · use s.eraseTop
      simp [← hetx, hn]
      -- Porting note: `rfl` is required.
      rfl
    · have imxs : IsMaximal (x ⊓ s.eraseTop.top) s.eraseTop.top :=
        isMaximal_of_eq_inf x s.top rfl (Ne.symm hetx) hm (isMaximal_eraseTop_top h0s)
      have := ih _ _ imxs (le_inf (by simpa) (le_top_of_mem s.eraseTop.bot_mem)) (by simp [hn])
      rcases this with ⟨t, htb, htl, htt, hteqv⟩
      have hmtx : IsMaximal t.top x :=
        isMaximal_of_eq_inf s.eraseTop.top s.top (by rw [inf_comm, htt]) hetx
          (isMaximal_eraseTop_top h0s) hm
      use snoc t x hmtx
      refine' ⟨by simp [htb], by simp [htl], by simp, _⟩
      have : s.Equivalent ((snoc t s.eraseTop.top (htt.symm ▸ imxs)).snoc s.top
          (by simpa using isMaximal_eraseTop_top h0s)) := by
        conv_lhs => rw [eq_snoc_eraseTop h0s]
        exact Equivalent.snoc hteqv (by simpa using (isMaximal_eraseTop_top h0s).iso_refl)
      refine' this.trans _
      refine' Equivalent.snoc_snoc_swap _ _
      · exact
          iso_symm
            (second_iso_of_eq hm
              (sup_eq_of_isMaximal hm (isMaximal_eraseTop_top h0s) (Ne.symm hetx)) htt.symm)
      · exact
          second_iso_of_eq (isMaximal_eraseTop_top h0s)
            (sup_eq_of_isMaximal (isMaximal_eraseTop_top h0s) hm hetx) (by rw [inf_comm, htt])
#align composition_series.exists_top_eq_snoc_equivalant CompositionSeries.exists_top_eq_snoc_equivalant

/-- The **Jordan-Hölder** theorem, stated for any `JordanHolderLattice`.
If two composition series start and finish at the same place, they are equivalent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant4d9205fed153789fb39c94b6af26dc54eb82154671d35de5088cc06ba8fdeefd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant4d9205fed153789fb39c94b6af26dc54eb82154671d35de5088cc06ba8fdeefd.lean#L749).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b07d2fb6f5808aa838077f6dd4759536e1ac17f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
