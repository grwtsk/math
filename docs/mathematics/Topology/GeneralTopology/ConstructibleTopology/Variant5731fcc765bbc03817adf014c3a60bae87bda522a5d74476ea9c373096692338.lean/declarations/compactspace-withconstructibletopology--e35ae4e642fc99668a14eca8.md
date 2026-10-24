# compactSpace_withConstructibleTopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3566b573af396c5aba88be1bff6014a548f65787ae8dd810f04966d42431abbd",
  "kind": "instance",
  "lexical_name": "compactSpace_withConstructibleTopology",
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
  "slug": "compactspace-withconstructibletopology--e35ae4e642fc99668a14eca8",
  "source": {
    "blob": "f98f98795fab0e91c19f00d21e0cd9e8fbf986c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 169,
    "path": "GRWTSK/Topology/GeneralTopology/ConstructibleTopology/Variant5731fcc765bbc03817adf014c3a60bae87bda522a5d74476ea9c373096692338.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e35ae4e642fc99668a14eca8fdb9586149bbfa7d76d2fb6e871f082a2129e69a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ConstructibleTopology/Variant5731fcc765bbc03817adf014c3a60bae87bda522a5d74476ea9c373096692338.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3566b573af396c5aba88be1bff6014a548f65787ae8dd810f04966d42431abbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance compactSpace_withConstructibleTopology [CompactSpace X] [QuasiSober X]
    [PrespectralSpace X] [QuasiSeparatedSpace X] :
    CompactSpace (WithConstructibleTopology X) := by
  suffices h : @CompactSpace X (constructibleTopology X) from
    @Function.Surjective.compactSpace _ _ (constructibleTopology X) _ _
      (WithTopology.continuous_toTopology _) _ (WithTopology.toTopology_surjective _)
  let 𝔅 := constructibleTopologySubbasis X
  /- It suffices to check that any subset of `𝔅` for which every finite subset has non-empty
  intersection, has non-empty intersection. We argue by contradiction and by Zorn's
  lemma, we may take a maximal counterexample `B`. -/
  apply compactSpace_generateFrom_of_compl_mem (T := constructibleTopology X) 𝔅 rfl (by simp [𝔅])
  let 𝒮 := {P : Set (Set X) | P ⊆ 𝔅 ∧ (∀ Q ⊆ P, Q.Finite → (⋂₀ Q).Nonempty) ∧ (⋂₀ P) = ∅}
  suffices 𝒮 = ∅ by contrapose! this; tauto
  by_contra! h𝒮
  obtain ⟨s, hs⟩ := h𝒮
  obtain ⟨B, hsB, hB⟩ := by
    refine zorn_subset_nonempty 𝒮 (fun c hc𝒮 hc hne@⟨x, hxc⟩ ↦ ?_) s hs
    refine ⟨⋃₀ c, ?_, fun S hSc ↦ Set.subset_sUnion_of_subset c S subset_rfl hSc⟩
    refine ⟨by grind, fun a hac ha ↦ ?_, by grind⟩
    obtain ⟨i, hmem, hsub⟩ := hc.directedOn.exists_mem_subset_of_finite_of_subset_sUnion hne ha hac
    exact (hc𝒮 hmem).2.1 a hsub ha
  let B' := {s | s ∈ B ∧ IsClosed s}
  /- Let `Z` be the intersection of all closed sets in `B`. We argue
  by cases if `Z` is irreducible or not. -/
  let Z := ⋂₀ B'
  have hZ_closed : IsClosed Z := isClosed_sInter fun b hb ↦ hb.2
  have hZ_nonempty : Z.Nonempty :=
    CompactSpace.nonempty_sInter (fun _ ht ↦ ht.2) fun t ht hf ↦
      hB.prop.2.1 _ (subset_trans ht (by simp [B'])) hf
  by_cases hZ_irred : IsIrreducible Z
  · -- If `Z` is irreducible, the intersection `⋂₀ B` contains the generic point of `Z`.
    suffices (⋂₀ B).Nonempty by simp_all [hB.prop.2.2]
    have hη := hZ_irred.isGenericPoint_genericPoint (isClosed_sInter fun b hb ↦ hb.2)
    refine ⟨hZ_irred.genericPoint, ?_⟩
    rw [Set.mem_sInter]
    intro i hi
    by_cases hiB' : i ∈ B'
    · exact Set.sInter_subset_of_mem hiB' hη.mem
    · have hi_cmpt : IsCompact i := by grind [hB.prop, constructibleTopologySubbasis]
      rw [hη.mem_open_set_iff (by grind [hB.prop, constructibleTopologySubbasis]), Set.inter_comm]
      refine hi_cmpt.nonempty_inter_sInter (fun _ hb ↦ hb.2) fun a ha hfa ↦ ?_
      rw [← Set.sInter_insert]
      exact hB.prop.2.1 _ (by grind) (by simpa)
  · -- If `Z` is reducible, there exist closed compacts `Y₁` and `Y₂` such that `Z ⊆ Y₁ ∪ Y₂`.
    simp only [IsIrreducible, hZ_nonempty, true_and] at hZ_irred
    obtain ⟨Y₁, Y₂, hY₁_cl, hY₂_cl, hc₁, hc₂, hsub, ⟨x₁, hx₁⟩, ⟨x₂, hx₂⟩⟩ :=
      PrespectralSpace.exists_isClosed_of_not_isPreirreducible _ hZ_irred
    have hY₁ : Y₁ ∈ 𝔅 := .inr ⟨hY₁_cl, hc₁⟩
    have hY₂ : Y₂ ∈ 𝔅 := .inr ⟨hY₂_cl, hc₂⟩
    have hY₁_inter_B : Y₁ ∩ ⋂₀ B = ∅ := by grind
    have hY₂_inter_B : Y₂ ∩ ⋂₀ B = ∅ := by grind
    -- By maximality of `B`, neither `B ∪ {Y₁}` nor `B ∪ {Y₂}` is contained in `𝒮`
    have hY₁B : insert Y₁ B ∉ 𝒮 := by
      intro hY₁B
      grind [show insert Y₁ B ⊆ B from hB.le_of_ge hY₁B (Set.subset_insert Y₁ B)]
    have hY₂B : insert Y₂ B ∉ 𝒮 := by
      intro hY₂B
      grind [show insert Y₂ B ⊆ B from hB.le_of_ge hY₂B (Set.subset_insert Y₂ B)]
    dsimp [𝒮] at hY₁B hY₂B
    simp only [Set.insert_subset_iff, hY₁, hB.prop.1, and_self, Set.sInter_insert, hY₁_inter_B,
      and_true, true_and, not_forall, Set.not_nonempty_iff_eq_empty, hY₂, hY₂_inter_B] at hY₁B hY₂B
    -- Hence there exist finitely many `{Aᵢ} ⊆ B` such that `Z ∩ ⋂ Aᵢ = ∅`.
    obtain ⟨A₁, hA₁, hA₁', hA₁''⟩ := hY₁B
    obtain ⟨A₂, hA₂, hA₂', hA₂''⟩ := hY₂B
    have : Z ∩ ⋂₀ (A₁ \ {Y₁} ∪ A₂ \ {Y₂}) = ∅ := by grind
    rw [← Set.not_nonempty_iff_eq_empty] at this
    apply this
    rw [Set.inter_comm]
    refine IsCompact.nonempty_inter_sInter ?_ (fun _ hb ↦ hb.2) fun F hsub hF ↦ ?_
    · apply isCompact_sInter_of_subset_constructibleTopologySubbasis _ (hA₁'.sdiff.union hA₂'.sdiff)
      grind [hB.prop, Set.union_subset_iff]
    · rw [← Set.sInter_union]
      refine hB.prop.2.1 (_ ∪ F) ?_ <| (hA₁'.sdiff.union hA₂'.sdiff).union hF
      grind [Set.sdiff_singleton_subset_iff, Set.union_subset_iff]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ConstructibleTopology/Variant5731fcc765bbc03817adf014c3a60bae87bda522a5d74476ea9c373096692338.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ConstructibleTopology/Variant5731fcc765bbc03817adf014c3a60bae87bda522a5d74476ea9c373096692338.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f98f98795fab0e91c19f00d21e0cd9e8fbf986c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
