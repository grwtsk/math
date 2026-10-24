# comap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0f61123a1525d4f08aa5794677b5ca1ecdd3ae67e52cba0067d24fac63f8fffd",
  "kind": "def",
  "lexical_name": "comap",
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
  "slug": "comap--895aa95bd58c32ec21bba7c4",
  "source": {
    "blob": "be555aebbb28a5d4a816cc1128a100b2bce8614f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 128,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Map/Variantc43aa55784514cff8654f083e30374f9ce764ba106aadfb0ab721cd72323c85a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:895aa95bd58c32ec21bba7c42e82773f30a6666b020622123a6cca7bcc652fcc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Map/Variantc43aa55784514cff8654f083e30374f9ce764ba106aadfb0ab721cd72323c85a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0f61123a1525d4f08aa5794677b5ca1ecdd3ae67e52cba0067d24fac63f8fffd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def comap (N : Matroid β) (f : α → β) : Matroid α :=
  IndepMatroid.matroid <|
  { E := f ⁻¹' N.E
    Indep := fun I ↦ N.Indep (f '' I) ∧ InjOn f I
    indep_empty := by simp
    indep_subset := fun _ _ h hIJ ↦ ⟨h.1.subset (image_mono hIJ), InjOn.mono hIJ h.2⟩
    indep_aug := by
      rintro I B ⟨hI, hIinj⟩ hImax hBmax
      obtain ⟨I', hII', hI', hI'inj⟩ := (not_maximal_subset_iff ⟨hI, hIinj⟩).1 hImax
      have h₁ : ¬(N ↾ range f).IsBase (f '' I) := by
        refine fun hB ↦ hII'.ne ?_
        have h_im := hB.eq_of_subset_indep (by simpa) (image_mono hII'.subset)
        rwa [hI'inj.image_eq_image_iff hII'.subset Subset.rfl] at h_im
      have h₂ : (N ↾ range f).IsBase (f '' B) := by
        refine Indep.isBase_of_forall_insert (by simpa using hBmax.1.1) ?_
        rintro _ ⟨⟨e, heB, rfl⟩, hfe⟩ hi
        rw [restrict_indep_iff, ← image_insert_eq] at hi
        have hinj : InjOn f (insert e B) := by
          rw [injOn_insert (fun heB ↦ hfe (mem_image_of_mem f heB))]
          exact ⟨hBmax.1.2, hfe⟩
        refine hBmax.not_prop_of_ssuperset (t := insert e B) (ssubset_insert ?_) ⟨hi.1, hinj⟩
        exact fun heB ↦ hfe <| mem_image_of_mem f heB
      obtain ⟨_, ⟨⟨e, he, rfl⟩, he'⟩, hei⟩ := Indep.exists_insert_of_not_isBase (by simpa) h₁ h₂
      have heI : e ∉ I := fun heI ↦ he' (mem_image_of_mem f heI)
      rw [← image_insert_eq, restrict_indep_iff] at hei
      exact ⟨e, ⟨he, heI⟩, hei.1, (injOn_insert heI).2 ⟨hIinj, he'⟩⟩

    indep_maximal := by
      rintro X - I ⟨hI, hIinj⟩ hIX
      obtain ⟨J, hJ⟩ := (N ↾ range f).existsMaximalSubsetProperty_indep (f '' X) (by simp)
        (f '' I) (by simpa) (image_mono hIX)
      simp only [restrict_indep_iff, image_subset_iff, maximal_subset_iff, and_imp,
        and_assoc] at hJ ⊢
      obtain ⟨hIJ, hJ, hJf, hJX, hJmax⟩ := hJ
      obtain ⟨J₀, hIJ₀, hJ₀X, hbj⟩ := hIinj.bijOn_image.exists_extend_of_subset hIX
        (image_mono hIJ) (image_subset_iff.2 <| preimage_mono hJX)
      obtain rfl : f '' J₀ = J := by rw [← image_preimage_eq_of_subset hJf, hbj.image_eq]
      refine ⟨J₀, hIJ₀, hJ, hbj.injOn, hJ₀X, fun K hK hKinj hKX hJ₀K ↦ ?_⟩
      rw [← hKinj.image_eq_image_iff hJ₀K Subset.rfl, hJmax hK (image_subset_range _ _)
        (image_mono hKX) (image_mono hJ₀K)]
    subset_ground := fun _ hI e heI ↦ hI.1.subset_ground ⟨e, heI, rfl⟩ }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Map/Variantc43aa55784514cff8654f083e30374f9ce764ba106aadfb0ab721cd72323c85a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Map/Variantc43aa55784514cff8654f083e30374f9ce764ba106aadfb0ab721cd72323c85a.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be555aebbb28a5d4a816cc1128a100b2bce8614f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
