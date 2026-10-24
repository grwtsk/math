# isPrimary_decomposition_pairwise_ne_radical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:202da7e2-b651-d875-1007-6b1448641bf7",
  "kind": "lemma",
  "lexical_name": "isPrimary_decomposition_pairwise_ne_radical",
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
  "slug": "isprimary-decomposition-pairwise-ne-radical--63a4966a803709d175d0ffa0",
  "source": {
    "blob": "99bbbd377a67f773afe508187d9d1600ce12e8c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 68,
    "path": "GRWTSK/Algebra/Lasker/Variant832bd739d3cc8cc0c391eef21ec0b4a95cb726c10609f2ee91ed8180453b933d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63a4966a803709d175d0ffa032e505f35c9eff63c113aafe7f3644138ede60b2",
  "verification": {
    "reference": "docs/verification/Algebra/Lasker/Variant832bd739d3cc8cc0c391eef21ec0b4a95cb726c10609f2ee91ed8180453b933d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:202da7e2-b651-d875-1007-6b1448641bf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isPrimary_decomposition_pairwise_ne_radical {I : Ideal R}
    {s : Finset (Ideal R)} (hs : s.inf id = I) (hs' : ∀ ⦃J⦄, J ∈ s → J.IsPrimary) :
    ∃ t : Finset (Ideal R), t.inf id = I ∧ (∀ ⦃J⦄, J ∈ t → J.IsPrimary) ∧
      (t : Set (Ideal R)).Pairwise ((· ≠ ·) on radical) := by
  classical
  refine ⟨(s.image (fun J ↦ {I ∈ s | I.radical = J.radical})).image fun t ↦ t.inf id,
    ?_, ?_, ?_⟩
  · rw [← hs]
    refine le_antisymm ?_ ?_ <;> intro x hx
    · simp only [Finset.inf_image, CompTriple.comp_eq, Submodule.mem_finset_inf,
      Function.comp_apply, Finset.mem_filter, id_eq, and_imp] at hx ⊢
      intro J hJ
      exact hx J hJ J hJ rfl
    · simp only [Submodule.mem_finset_inf, id_eq, Finset.inf_image, CompTriple.comp_eq,
      Function.comp_apply, Finset.mem_filter, and_imp] at hx ⊢
      intro J _ K hK _
      exact hx K hK
  · simp only [Finset.mem_image, exists_exists_and_eq_and, forall_exists_index, and_imp,
    forall_apply_eq_imp_iff₂]
    intro J hJ
    refine isPrimary_finset_inf (i := J) ?_ ?_ (by simp)
    · simp [hJ]
    · simp only [Finset.mem_filter, id_eq, and_imp]
      intro y hy
      simp [hs' hy]
  · intro I hI J hJ hIJ
    simp only [Finset.coe_image, Set.mem_image, Finset.mem_coe, exists_exists_and_eq_and] at hI hJ
    obtain ⟨I', hI', hI⟩ := hI
    obtain ⟨J', hJ', hJ⟩ := hJ
    simp only [Function.onFun, ne_eq]
    contrapose! hIJ
    suffices I'.radical = J'.radical by
      rw [← hI, ← hJ, this]
    · rw [← hI, radical_finset_inf (i := I') (by simp [hI']) (by simp), id_eq] at hIJ
      rw [hIJ, ← hJ, radical_finset_inf (i := J') (by simp [hJ']) (by simp), id_eq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Lasker/Variant832bd739d3cc8cc0c391eef21ec0b4a95cb726c10609f2ee91ed8180453b933d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Lasker/Variant832bd739d3cc8cc0c391eef21ec0b4a95cb726c10609f2ee91ed8180453b933d.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99bbbd377a67f773afe508187d9d1600ce12e8c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
