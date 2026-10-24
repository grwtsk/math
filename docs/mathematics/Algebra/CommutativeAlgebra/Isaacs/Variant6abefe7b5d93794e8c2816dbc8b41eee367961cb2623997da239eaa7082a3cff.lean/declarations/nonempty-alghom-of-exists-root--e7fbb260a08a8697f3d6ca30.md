# nonempty_algHom_of_exists_root

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "725f6ea061e1c2154517a158aa416b280d021cc4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 41,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6abefe7b5d93794e8c2816dbc8b41eee367961cb2623997da239eaa7082a3cff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:28283aa7-5483-8c74-1d9b-de51f3becf3c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7410fa1c-abc0-1f3c-1c53-c3b6decc0deb",
  "kind": "theorem",
  "lexical_name": "nonempty_algHom_of_exists_root",
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
  "slug": "nonempty-alghom-of-exists-root--e7fbb260a08a8697f3d6ca30",
  "source": {
    "blob": "725f6ea061e1c2154517a158aa416b280d021cc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 41,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Isaacs/Variant6abefe7b5d93794e8c2816dbc8b41eee367961cb2623997da239eaa7082a3cff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7fbb260a08a8697f3d6ca30d0f1e3482dc3e1d5b95e651a1031a7291e0a3dd0",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Isaacs/Variant6abefe7b5d93794e8c2816dbc8b41eee367961cb2623997da239eaa7082a3cff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7410fa1c-abc0-1f3c-1c53-c3b6decc0deb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonempty_algHom_of_exists_root (h : ∀ x : E, ∃ y : K, aeval y (minpoly F x) = 0) :
    Nonempty (E →ₐ[F] K) := by
  refine Lifts.nonempty_algHom_of_exist_lifts_finset fun S ↦ ⟨⟨adjoin F S, ?_⟩, subset_adjoin _ _⟩
  let p := (S.prod <| fun x ↦ (minpoly F x).map (algebraMap F K))
  let K' := SplittingField p
  have splits s (hs : s ∈ S) : ((minpoly F s).map (algebraMap F K')).Splits := by
    apply (SplittingField.splits p).of_dvd (map_ne_zero (Finset.prod_ne_zero_iff.mpr
      fun _ _ ↦ Polynomial.map_ne_zero (minpoly.ne_zero <| alg.isIntegral.1 _))) ?_
    rw [IsScalarTower.algebraMap_eq F K K', ← Polynomial.map_map, map_dvd_map']
    exact Finset.dvd_prod_of_mem _ hs
  let K₀ := (⊥ : IntermediateField K K').restrictScalars F
  let FS := adjoin F (S : Set E)
  let Ω := FS →ₐ[F] K'
  have := finiteDimensional_adjoin (S := (S : Set E)) fun _ _ ↦ (alg.isIntegral).1 _
  let M (ω : Ω) := Subalgebra.toSubmodule (K₀.comap ω).toSubalgebra
  have : ⋃ ω : Ω, (M ω : Set FS) = Set.univ :=
    Set.eq_univ_of_forall fun ⟨α, hα⟩ ↦ Set.mem_iUnion.mpr <| by
      have ⟨β, hβ⟩ := h α
      let ϕ : F⟮α⟯ →ₐ[F] K' := (IsScalarTower.toAlgHom _ _ _).comp
        ((AdjoinRoot.liftAlgHom _ _ _ hβ).comp
        (adjoinRootEquivAdjoin F <| (alg.isIntegral).1 _).symm.toAlgHom)
      have ⟨ω, hω⟩ := exists_algHom_adjoin_of_splits
        (fun s hs ↦ ⟨(alg.isIntegral).1 _, splits s hs⟩) ϕ (adjoin_simple_le_iff.mpr hα)
      refine ⟨ω, β, ((DFunLike.congr_fun hω <| AdjoinSimple.gen F α).trans ?_).symm⟩
      rw [AlgHom.comp_apply, AlgHom.comp_apply, AlgEquiv.coe_toAlgHom,
        adjoinRootEquivAdjoin_symm_apply_gen, AdjoinRoot.liftAlgHom_root]
      rfl
  have ω : ∃ ω : Ω, ⊤ ≤ M ω := by
    cases finite_or_infinite F
    · have ⟨α, hα⟩ := exists_primitive_element_of_finite_bot F FS
      have ⟨ω, hω⟩ := Set.mem_iUnion.mp (this ▸ Set.mem_univ α)
      exact ⟨ω, show ⊤ ≤ K₀.comap ω by rwa [← hα, adjoin_simple_le_iff]⟩
    · simp_rw [top_le_iff, Subspace.exists_eq_top_of_iUnion_eq_univ this]
  exact ((botEquiv K K').toAlgHom.restrictScalars F).comp
    (ω.choose.codRestrict K₀.toSubalgebra fun x ↦ ω.choose_spec trivial)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Isaacs/Variant6abefe7b5d93794e8c2816dbc8b41eee367961cb2623997da239eaa7082a3cff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Isaacs/Variant6abefe7b5d93794e8c2816dbc8b41eee367961cb2623997da239eaa7082a3cff.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `725f6ea061e1c2154517a158aa416b280d021cc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
