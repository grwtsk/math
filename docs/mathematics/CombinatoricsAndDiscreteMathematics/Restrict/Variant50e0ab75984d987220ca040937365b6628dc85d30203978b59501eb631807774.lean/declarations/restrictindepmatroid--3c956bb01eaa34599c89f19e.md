# restrictIndepMatroid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bcbc58f0a884dde9c78e44ae5a36a585e1f4adc00b97f5e57b6bac978db35edb",
  "kind": "def",
  "lexical_name": "restrictIndepMatroid",
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
  "slug": "restrictindepmatroid--3c956bb01eaa34599c89f19e",
  "source": {
    "blob": "245149ebad2f6e9bc434db4a967fe5291f7a5819",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 78,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Restrict/Variant50e0ab75984d987220ca040937365b6628dc85d30203978b59501eb631807774.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c956bb01eaa34599c89f19e7e1ef90ce04d2abe98c84710df39d47823075836",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Restrict/Variant50e0ab75984d987220ca040937365b6628dc85d30203978b59501eb631807774.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bcbc58f0a884dde9c78e44ae5a36a585e1f4adc00b97f5e57b6bac978db35edb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps] def restrictIndepMatroid (M : Matroid α) (R : Set α) : IndepMatroid α where
  E := R
  Indep I := M.Indep I ∧ I ⊆ R
  indep_empty := ⟨M.empty_indep, empty_subset _⟩
  indep_subset := fun _ _ h hIJ ↦ ⟨h.1.subset hIJ, hIJ.trans h.2⟩
  indep_aug := by
    rintro I I' ⟨hI, hIY⟩ (hIn : ¬ M.IsBasis' I R) (hI' : M.IsBasis' I' R)
    rw [isBasis'_iff_isBasis_inter_ground] at hIn hI'
    obtain ⟨B', hB', rfl⟩ := hI'.exists_isBase
    obtain ⟨B, hB, hIB, hBIB'⟩ := hI.exists_isBase_subset_union_isBase hB'
    rw [hB'.inter_isBasis_iff_compl_inter_isBasis_dual, diff_inter_diff] at hI'

    have hss : M.E \ (B' ∪ (R ∩ M.E)) ⊆ M.E \ (B ∪ (R ∩ M.E)) := by
      apply diff_subset_diff_right
      rw [union_subset_iff, and_iff_left subset_union_right, union_comm]
      exact hBIB'.trans (union_subset_union_left _ (subset_inter hIY hI.subset_ground))

    have hi : M✶.Indep (M.E \ (B ∪ (R ∩ M.E))) := by
      rw [dual_indep_iff_exists]
      exact ⟨B, hB, disjoint_of_subset_right subset_union_left disjoint_sdiff_left⟩

    have h_eq := hI'.eq_of_subset_indep hi hss
      (diff_subset_diff_right subset_union_right)
    rw [h_eq, ← diff_inter_diff, ← hB.inter_isBasis_iff_compl_inter_isBasis_dual] at hI'

    obtain ⟨J, hJ, hIJ⟩ := hI.subset_isBasis_of_subset
      (subset_inter hIB (subset_inter hIY hI.subset_ground))
    obtain rfl := hI'.indep.eq_of_isBasis hJ

    have hIJ' : I ⊂ B ∩ (R ∩ M.E) := hIJ.ssubset_of_ne (fun he ↦ hIn (by rwa [he]))
    obtain ⟨e, he⟩ := exists_of_ssubset hIJ'
    exact ⟨e, ⟨⟨(hBIB' he.1.1).elim (fun h ↦ (he.2 h).elim) id,he.1.2⟩, he.2⟩,
      hI'.indep.subset (insert_subset he.1 hIJ), insert_subset he.1.2.1 hIY⟩
  indep_maximal := by
    rintro A hAR I ⟨hI, _⟩ hIA
    obtain ⟨J, hJ, hIJ⟩ := hI.subset_isBasis'_of_subset hIA
    use J
    simp only [hIJ, and_assoc, maximal_subset_iff, hJ.indep, hJ.subset, and_imp, true_and,
      hJ.subset.trans hAR]
    exact fun K hK _ hKA hJK ↦ hJ.eq_of_subset_indep hK hJK hKA
  subset_ground _ := And.right

/-- Change the ground set of a matroid to some `R : Set α`. The independent sets of the restriction
are the independent subsets of the new ground set. Most commonly used when `R ⊆ M.E`,
but it is convenient not to require this. The elements of `R \ M.E` become 'loops'. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Restrict/Variant50e0ab75984d987220ca040937365b6628dc85d30203978b59501eb631807774.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Restrict/Variant50e0ab75984d987220ca040937365b6628dc85d30203978b59501eb631807774.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `245149ebad2f6e9bc434db4a967fe5291f7a5819` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
