# dualIndepMatroid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:098512ed89ef1e5fe62c5f54ae054ca83f6749b3574cd138c1c7cd642105d785",
  "kind": "def",
  "lexical_name": "dualIndepMatroid",
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
  "slug": "dualindepmatroid--298a2cfc1d205a3b89b6f103",
  "source": {
    "blob": "3cbdd40387bf91c66e3f6f340f781fbe5cb4dabd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:298a2cfc1d205a3b89b6f103c6f88dbc1a77a6432277e35f76ce26924fc4f357",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:098512ed89ef1e5fe62c5f54ae054ca83f6749b3574cd138c1c7cd642105d785`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps] def dualIndepMatroid (M : Matroid α) : IndepMatroid α where
  E := M.E
  Indep I := I ⊆ M.E ∧ ∃ B, M.IsBase B ∧ Disjoint I B
  indep_empty := ⟨empty_subset M.E, M.exists_isBase.imp (fun _ hB ↦ ⟨hB, empty_disjoint _⟩)⟩
  indep_subset := by
    rintro I J ⟨hJE, B, hB, hJB⟩ hIJ
    exact ⟨hIJ.trans hJE, ⟨B, hB, disjoint_of_subset_left hIJ hJB⟩⟩
  indep_aug := by
    rintro I X ⟨hIE, B, hB, hIB⟩ hI_not_max hX_max
    have hXE := hX_max.1.1
    have hB' := (isBase_compl_iff_maximal_disjoint_isBase hXE).mpr hX_max

    set B' := M.E \ X with hX
    have hI := (not_iff_not.mpr (isBase_compl_iff_maximal_disjoint_isBase)).mpr hI_not_max
    obtain ⟨B'', hB'', hB''₁, hB''₂⟩ := (hB'.indep.diff I).exists_isBase_subset_union_isBase hB
    rw [← compl_subset_compl, ← hIB.sdiff_eq_right, ← union_diff_distrib, diff_eq, compl_inter,
      compl_compl, union_subset_iff, compl_subset_compl] at hB''₂

    have hssu := (subset_inter (hB''₂.2) hIE).ssubset_of_ne
      (by { rintro rfl; apply hI; convert hB''; simp [hB''.subset_ground] })

    obtain ⟨e, ⟨(heB'' : e ∉ _), heE⟩, heI⟩ := exists_of_ssubset hssu
    use e
    simp_rw [mem_diff, insert_subset_iff, and_iff_left heI, and_iff_right heE, and_iff_right hIE]
    refine ⟨by_contra (fun heX ↦ heB'' (hB''₁ ⟨?_, heI⟩)), ⟨B'', hB'', ?_⟩⟩
    · rw [hX]; exact ⟨heE, heX⟩
    rw [← union_singleton, disjoint_union_left, disjoint_singleton_left, and_iff_left heB'']
    exact disjoint_of_subset_left hB''₂.2 disjoint_compl_left
  indep_maximal := by
    rintro X - I' ⟨hI'E, B, hB, hI'B⟩ hI'X
    obtain ⟨I, hI⟩ := M.exists_isBasis (M.E \ X)
    obtain ⟨B', hB', hIB', hB'IB⟩ := hI.indep.exists_isBase_subset_union_isBase hB

    obtain rfl : I = B' \ X := hI.eq_of_subset_indep (hB'.indep.diff _)
      (subset_diff.2 ⟨hIB', (subset_diff.1 hI.subset).2⟩)
      (diff_subset_diff_left hB'.subset_ground)
    simp_rw [maximal_subset_iff']
    refine ⟨(X \ B') ∩ M.E, ?_, ⟨⟨inter_subset_right, ?_⟩, ?_⟩, ?_⟩
    · rw [subset_inter_iff, and_iff_left hI'E, subset_diff, and_iff_right hI'X]
      exact Disjoint.mono_right hB'IB <| disjoint_union_right.2
        ⟨disjoint_sdiff_right.mono_left hI'X  , hI'B⟩
    · exact ⟨B', hB', (disjoint_sdiff_left (t := X)).mono_left inter_subset_left⟩
    · exact inter_subset_left.trans diff_subset
    simp only [subset_inter_iff, subset_diff, and_imp, forall_exists_index]
    refine fun J hJE B'' hB'' hdj hJX hXJ ↦ ⟨⟨hJX, ?_⟩, hJE⟩

    have hI' : (B'' ∩ X) ∪ (B' \ X) ⊆ B' := by
      rw [union_subset_iff, and_iff_left diff_subset, ← union_diff_cancel hJX,
        inter_union_distrib_left, hdj.symm.inter_eq, empty_union, diff_eq, ← inter_assoc,
        ← diff_eq, diff_subset_comm, diff_eq, inter_assoc, ← diff_eq, inter_comm]
      exact subset_trans (inter_subset_inter_right _ hB''.subset_ground) hXJ

    obtain ⟨B₁,hB₁,hI'B₁,hB₁I⟩ := (hB'.indep.subset hI').exists_isBase_subset_union_isBase hB''
    rw [union_comm, ← union_assoc, union_eq_self_of_subset_right inter_subset_left] at hB₁I

    obtain rfl : B₁ = B' := by
      refine hB₁.eq_of_subset_indep hB'.indep (fun e he ↦ ?_)
      refine (hB₁I he).elim (fun heB'' ↦ ?_) (fun h ↦ h.1)
      refine (em (e ∈ X)).elim (fun heX ↦ hI' (Or.inl ⟨heB'', heX⟩)) (fun heX ↦ hIB' ?_)
      refine hI.mem_of_insert_indep ⟨hB₁.subset_ground he, heX⟩ ?_
      exact hB₁.indep.subset (insert_subset he (subset_union_right.trans hI'B₁))
    by_contra hdj'
    obtain ⟨e, heJ, heB'⟩ := not_disjoint_iff.mp hdj'
    obtain (heB'' | ⟨-,heX⟩ ) := hB₁I heB'
    · exact hdj.ne_of_mem heJ heB'' rfl
    exact heX (hJX heJ)
  subset_ground := by tauto

/-- The dual of a matroid; the bases are the complements (w.r.t `M.E`) of the bases of `M`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cbdd40387bf91c66e3f6f340f781fbe5cb4dabd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
