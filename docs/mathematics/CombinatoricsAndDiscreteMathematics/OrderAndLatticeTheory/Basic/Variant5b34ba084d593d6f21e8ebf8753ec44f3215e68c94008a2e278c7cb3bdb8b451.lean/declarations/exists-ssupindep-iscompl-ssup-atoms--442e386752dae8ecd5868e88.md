# exists_sSupIndep_isCompl_sSup_atoms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "94b3e9e3caf72aca2ac3db9c4e735b0c09eb4909",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 589,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5b/5b34ba084d593d6f21e8ebf8753ec44f3215e68c94008a2e278c7cb3bdb8b451.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1886d0c6-59cb-add3-b5aa-deedbc06f40f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:12295916-7403-aae9-fe9a-52344129349b",
  "kind": "theorem",
  "lexical_name": "exists_sSupIndep_isCompl_sSup_atoms",
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
  "slug": "exists-ssupindep-iscompl-ssup-atoms--442e386752dae8ecd5868e88",
  "source": {
    "blob": "94b3e9e3caf72aca2ac3db9c4e735b0c09eb4909",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 643,
    "line": 589,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant5b34ba084d593d6f21e8ebf8753ec44f3215e68c94008a2e278c7cb3bdb8b451.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:442e386752dae8ecd5868e884a4775d9a5c122982699120e26aae00fdb6258d5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant5b34ba084d593d6f21e8ebf8753ec44f3215e68c94008a2e278c7cb3bdb8b451.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12295916-7403-aae9-fe9a-52344129349b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 589–643.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_sSupIndep_isCompl_sSup_atoms (h : sSup { a : α | IsAtom a } = ⊤) (b : α) :
    ∃ s : Set α, sSupIndep s ∧
    IsCompl b (sSup s) ∧ ∀ ⦃a⦄, a ∈ s → IsAtom a := by
  -- porting note(https://github.com/leanprover-community/mathlib4/issues/5732):
  -- `obtain` chokes on the placeholder.
  have zorn := zorn_subset
    (S := {s : Set α | sSupIndep s ∧ Disjoint b (sSup s) ∧ ∀ a ∈ s, IsAtom a})
    fun c hc1 hc2 =>
      ⟨⋃₀ c,
        ⟨iSupIndep_sUnion_of_directed hc2.directedOn fun s hs => (hc1 hs).1, ?_,
          fun a ⟨s, sc, as⟩ => (hc1 sc).2.2 a as⟩,
        fun _ => Set.subset_sUnion_of_mem⟩
  swap
  · rw [sSup_sUnion, ← sSup_image, DirectedOn.disjoint_sSup_right]
    · rintro _ ⟨s, hs, rfl⟩
      exact (hc1 hs).2.1
    · rw [directedOn_image]
      exact hc2.directedOn.mono @fun s t => sSup_le_sSup
  simp_rw [maximal_subset_iff] at zorn
  obtain ⟨s, ⟨s_ind, b_inf_Sup_s, s_atoms⟩, s_max⟩ := zorn
  refine ⟨s, s_ind, ⟨b_inf_Sup_s, ?_⟩, s_atoms⟩
  rw [codisjoint_iff_le_sup, ← h, sSup_le_iff]
  intro a ha
  rw [← inf_eq_left]
  refine (ha.le_iff.mp inf_le_left).resolve_left fun con => ha.1 ?_
  rw [← con, eq_comm, inf_eq_left]
  refine (le_sSup ?_).trans le_sup_right
  rw [← disjoint_iff] at con
  have a_dis_Sup_s : Disjoint a (sSup s) := con.mono_right le_sup_right
  rw [s_max ⟨fun x hx => ?_, ?_, fun x hx => ?_⟩ Set.subset_union_left]
  · exact Set.mem_union_right _ (Set.mem_singleton _)
  · rw [sSup_union, sSup_singleton]
    exact b_inf_Sup_s.disjoint_sup_right_of_disjoint_sup_left con.symm
  · rw [Set.mem_union, Set.mem_singleton_iff] at hx
    obtain rfl | xa := eq_or_ne x a
    · simp only [Set.mem_singleton, Set.insert_diff_of_mem, Set.union_singleton]
      exact con.mono_right ((sSup_le_sSup Set.diff_subset).trans le_sup_right)
    · have h : (s ∪ {a}) \ {x} = s \ {x} ∪ {a} := by
        simp only [Set.union_singleton]
        rw [Set.insert_diff_of_notMem]
        rw [Set.mem_singleton_iff]
        exact Ne.symm xa
      rw [h, sSup_union, sSup_singleton]
      apply
        (s_ind (hx.resolve_right xa)).disjoint_sup_right_of_disjoint_sup_left
          (a_dis_Sup_s.mono_right _).symm
      rw [← sSup_insert, Set.insert_diff_singleton, Set.insert_eq_of_mem (hx.resolve_right xa)]
  · rw [Set.mem_union, Set.mem_singleton_iff] at hx
    obtain hx | rfl := hx
    · exact s_atoms x hx
    · exact ha

@[deprecated (since := "2024-11-24")]
alias exists_setIndependent_isCompl_sSup_atoms := exists_sSupIndep_isCompl_sSup_atoms

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant5b34ba084d593d6f21e8ebf8753ec44f3215e68c94008a2e278c7cb3bdb8b451.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant5b34ba084d593d6f21e8ebf8753ec44f3215e68c94008a2e278c7cb3bdb8b451.lean#L589).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94b3e9e3caf72aca2ac3db9c4e735b0c09eb4909` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
