# iSup_iInf_maxGenEigenspace_eq_top_of_forall_mapsTo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:80fc6b8e-c1a4-a1f4-56b4-3d0614382aff",
  "kind": "lemma",
  "lexical_name": "iSup_iInf_maxGenEigenspace_eq_top_of_forall_mapsTo",
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
  "slug": "isup-iinf-maxgeneigenspace-eq-top-of-forall-mapsto--e4bdfff956ccb1a87f6924f6",
  "source": {
    "blob": "385b942bf00cb1aea3eb6c9308d84e445afa6e14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 156,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variantc5e18afa7303819ea4eb86a60cc5f128dd1c08a7efa9c79eede4edc18505e2b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4bdfff956ccb1a87f6924f631c9a3d1f4c3f5876b9f707414dfaf0975c025c0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pi/Variantc5e18afa7303819ea4eb86a60cc5f128dd1c08a7efa9c79eede4edc18505e2b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80fc6b8e-c1a4-a1f4-56b4-3d0614382aff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iSup_iInf_maxGenEigenspace_eq_top_of_forall_mapsTo [FiniteDimensional K M]
    (f : ι → End K M)
    (h : ∀ i j φ, MapsTo (f i) ((f j).maxGenEigenspace φ) ((f j).maxGenEigenspace φ))
    (h' : ∀ i, ⨆ μ, (f i).maxGenEigenspace μ = ⊤) :
    ⨆ χ : ι → K, ⨅ i, (f i).maxGenEigenspace (χ i) = ⊤ := by
  generalize h_dim : finrank K M = n
  induction n using Nat.strongRecOn generalizing M with | ind n ih => ?_
  obtain this | ⟨i : ι, hy : ¬ ∃ φ, (f i).maxGenEigenspace φ = ⊤⟩ :=
    forall_or_exists_not (fun j : ι ↦ ∃ φ : K, (f j).maxGenEigenspace φ = ⊤)
  · choose χ hχ using this
    replace hχ : ⨅ i, (f i).maxGenEigenspace (χ i) = ⊤ := by simpa
    simp_rw [eq_top_iff] at hχ ⊢
    exact le_trans hχ <| le_iSup (fun χ : ι → K ↦ ⨅ i, (f i).maxGenEigenspace (χ i)) χ
  · replace hy : ∀ φ, finrank K ((f i).maxGenEigenspace φ) < n := fun φ ↦ by
      simp_rw [not_exists, ← lt_top_iff_ne_top] at hy; exact h_dim ▸ Submodule.finrank_lt (hy φ).ne
    have hi (j : ι) (φ : K) :
        MapsTo (f j) ((f i).maxGenEigenspace φ) ((f i).maxGenEigenspace φ) := by
      exact h j i φ
    replace ih (φ : K) :
        ⨆ χ : ι → K, ⨅ j, maxGenEigenspace ((f j).restrict (hi j φ)) (χ j) = ⊤ := by
      apply ih _ (hy φ)
      · intro j k μ
        exact mapsTo_restrict_maxGenEigenspace_restrict_of_mapsTo (f j) (f k) _ _ (h j k μ)
      · exact fun j ↦ Module.End.genEigenspace_restrict_eq_top _ (h' j)
      · rfl
    replace ih (φ : K) :
        ⨆ (χ : ι → K) (_ : χ i = φ), ⨅ j, maxGenEigenspace ((f j).restrict (hi j φ)) (χ j) = ⊤ := by
      suffices ∀ χ : ι → K, χ i ≠ φ → ⨅ j, maxGenEigenspace ((f j).restrict (hi j φ)) (χ j) = ⊥ by
        specialize ih φ; rw [iSup_split, biSup_congr this] at ih; simpa using ih
      intro χ hχ
      rw [eq_bot_iff, ← ((f i).maxGenEigenspace φ).ker_subtype, LinearMap.ker,
        ← Submodule.map_le_iff_le_comap, ← Submodule.inf_iInf_maxGenEigenspace_of_forall_mapsTo,
        ← disjoint_iff_inf_le]
      exact ((f i).disjoint_genEigenspace hχ.symm _ _).mono_right (iInf_le _ i)
    replace ih (φ : K) :
        ⨆ (χ : ι → K) (_ : χ i = φ), ⨅ j, maxGenEigenspace (f j) (χ j) =
        maxGenEigenspace (f i) φ := by
      have (χ : ι → K) (hχ : χ i = φ) : ⨅ j, maxGenEigenspace (f j) (χ j) =
          (⨅ j, maxGenEigenspace ((f j).restrict (hi j φ)) (χ j)).map
            ((f i).maxGenEigenspace φ).subtype := by
        rw [← hχ, iInf_maxGenEigenspace_restrict_map_subtype_eq]
      simp_rw [biSup_congr this, ← Submodule.map_iSup, ih, Submodule.map_top,
        Submodule.range_subtype]
    simpa only [← ih, iSup_comm (ι := K), iSup_iSup_eq_right] using h' i

/-- A commuting family of triangularizable endomorphisms is simultaneously triangularizable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pi/Variantc5e18afa7303819ea4eb86a60cc5f128dd1c08a7efa9c79eede4edc18505e2b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pi/Variantc5e18afa7303819ea4eb86a60cc5f128dd1c08a7efa9c79eede4edc18505e2b5.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `385b942bf00cb1aea3eb6c9308d84e445afa6e14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
