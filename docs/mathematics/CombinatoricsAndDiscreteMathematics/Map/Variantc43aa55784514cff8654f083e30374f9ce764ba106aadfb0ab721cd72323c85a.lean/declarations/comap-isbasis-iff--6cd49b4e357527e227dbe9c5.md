# comap_isBasis_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6198e020-2a3d-02cd-e87b-94efaabf8593",
  "kind": "lemma",
  "lexical_name": "comap_isBasis_iff",
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
  "slug": "comap-isbasis-iff--6cd49b4e357527e227dbe9c5",
  "source": {
    "blob": "be555aebbb28a5d4a816cc1128a100b2bce8614f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 198,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Map/Variantc43aa55784514cff8654f083e30374f9ce764ba106aadfb0ab721cd72323c85a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6cd49b4e357527e227dbe9c575063b110138d8f433059cffe4848469cdff0b28",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Map/Variantc43aa55784514cff8654f083e30374f9ce764ba106aadfb0ab721cd72323c85a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6198e020-2a3d-02cd-e87b-94efaabf8593`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma comap_isBasis_iff {I X : Set α} :
    (N.comap f).IsBasis I X ↔ N.IsBasis (f '' I) (f '' X) ∧ I.InjOn f ∧ I ⊆ X := by
  refine ⟨fun h ↦ ?_, fun h ↦ ?_⟩
  · obtain ⟨hI, hinj⟩ := comap_indep_iff.1 h.indep
    refine ⟨hI.isBasis_of_forall_insert (image_mono h.subset) fun e he ↦ ?_, hinj, h.subset⟩
    simp only [mem_sdiff, mem_image, not_exists, not_and] at he
    obtain ⟨⟨e, heX, rfl⟩, he⟩ := he
    have heI : e ∉ I := fun heI ↦ (he e heI rfl)
    replace h := h.insert_dep ⟨heX, heI⟩
    simp only [comap_dep_iff, image_insert_eq, or_iff_not_imp_right, injOn_insert heI,
      hinj, mem_image, not_exists, not_and, true_and, not_forall, not_not] at h
    exact h (fun _ ↦ he)
  refine Indep.isBasis_of_forall_insert ?_ h.2.2 fun e ⟨heX, heI⟩ ↦ ?_
  · simp [comap_indep_iff, h.1.indep, h.2]
  have hIE : insert e I ⊆ (N.comap f).E := by
      simp_rw [comap_ground_eq, ← image_subset_iff]
      exact (image_mono (insert_subset heX h.2.2)).trans h.1.subset_ground
  suffices N.Indep (insert (f e) (f '' I)) → ∃ x ∈ I, f x = f e
    by simpa [← not_indep_iff hIE, injOn_insert heI, h.2.1]
  exact h.1.mem_of_insert_indep (mem_image_of_mem f heX)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Map/Variantc43aa55784514cff8654f083e30374f9ce764ba106aadfb0ab721cd72323c85a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Map/Variantc43aa55784514cff8654f083e30374f9ce764ba106aadfb0ab721cd72323c85a.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be555aebbb28a5d4a816cc1128a100b2bce8614f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
