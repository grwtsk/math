# IsOpen.trivializationDiscrete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d85486f832f0e5883b7d89596bc65dcb18cc73cd92406b316b6514afbdc8ad1e",
  "kind": "def",
  "lexical_name": "IsOpen.trivializationDiscrete",
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
  "slug": "isopen-trivializationdiscrete--728800df2c9f4738c1540f93",
  "source": {
    "blob": "c19662de3e595c9ce71ed4980b9b5d7fe3c51648",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 497,
    "line": 439,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant85517cbcabc90b4f0a79c8b9c38fc93ea2b1c2927db1d1a23e339bf7f3bfcb32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:728800df2c9f4738c1540f930160c623bf49eb33fd6d33a8e8e8237744cb42ea",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant85517cbcabc90b4f0a79c8b9c38fc93ea2b1c2927db1d1a23e339bf7f3bfcb32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d85486f832f0e5883b7d89596bc65dcb18cc73cd92406b316b6514afbdc8ad1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 439–497.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps source target baseSet] noncomputable def IsOpen.trivializationDiscrete [Nonempty (X → E)]
    {ι} [Nonempty ι] [TopologicalSpace ι] [DiscreteTopology ι] (U : ι → Set E) (V : Set X)
    (open_V : IsOpen V) (open_iff : ∀ i {W}, W ⊆ V → (IsOpen W ↔ IsOpen (f ⁻¹' W ∩ U i)))
    (inj : ∀ i, (U i).InjOn f) (surj : ∀ i, (U i).SurjOn f V)
    (disjoint : Pairwise (Disjoint on U)) (exhaustive : f ⁻¹' V ⊆ ⋃ i, U i) :
    Trivialization ι f := by
  have exhaustive' := exhaustive
  simp_rw [Set.subset_def, Set.mem_iUnion] at exhaustive
  choose idx idx_U using exhaustive
  choose inv inv_U f_inv using surj
  classical
  let F : PartialEquiv E (X × ι) :=
  { toFun e := (f e, if he : f e ∈ V then idx e he else Classical.arbitrary ι),
    invFun x := if hx : x.1 ∈ V then inv x.2 hx else Classical.arbitrary (X → E) x.1,
    source := f ⁻¹' V,
    target := V ×ˢ Set.univ,
    map_source' x hx := ⟨hx, ⟨⟩⟩
    map_target' x hx := by rw [dite_eq_left hx.1]; apply (f_inv _ hx.1).symm ▸ hx.1,
    left_inv' e he := by
      simp_rw [dite_eq_left (id he : f e ∈ V)]
      exact inj _ (inv_U _ he) (idx_U e he) (f_inv _ _)
    right_inv' x hx := by
      rw [dite_eq_left hx.1]
      refine Prod.ext (f_inv _ hx.1) ?_
      rw [dite_eq_left ((f_inv _ hx.1).symm ▸ hx.1)]
      by_contra h; exact (disjoint h).le_bot ⟨idx_U .., inv_U _ _⟩ }
  have open_preim {W} (hWV : W ⊆ V) (open_W : IsOpen W) : IsOpen (f ⁻¹' W) := by
    convert! isOpen_iUnion (fun i ↦ (open_iff i hWV).mp open_W)
    rw [← Set.inter_iUnion, eq_comm, Set.inter_eq_left]
    exact (Set.preimage_mono hWV).trans exhaustive'
  have open_source : IsOpen F.source := open_preim subset_rfl open_V
  have cont_f : ContinuousOn f F.source := (continuousOn_open_iff open_source).mpr
    fun W open_W ↦ open_preim Set.inter_subset_left (open_V.inter open_W)
  refine
  { toPartialEquiv := F,
    open_source := open_source,
    open_target := open_V.prod isOpen_univ,
    continuousOn_toFun := cont_f.prodMk <| continuousOn_of_forall_continuousAt fun e he ↦
      continuous_const (y := idx e he) |>.continuousAt.congr <| mem_nhds_iff.mpr
        ⟨U (idx e he) ∩ F.source, fun e' he' ↦ ?_, ?_, idx_U e he, he⟩
    continuousOn_invFun := continuousOn_prod_of_discrete_right.mpr fun i ↦ ?_,
    baseSet := V,
    open_baseSet := open_V,
    source_eq := rfl,
    target_eq := rfl,
    proj_toFun _ _ := rfl }
  · by_contra h; apply (disjoint h).le_bot
    · dsimp only; rw [dite_eq_left (by exact he'.2)]; exact ⟨he'.1, idx_U ..⟩
  · rwa [Set.inter_comm, ← open_iff _ subset_rfl]
  · simp_rw [F, Set.prodMk_mem_set_prod_eq, Set.mem_univ, and_true]
    refine (continuousOn_open_iff open_V).mpr fun W open_W ↦ ?_
    rw [open_iff i Set.inter_subset_left]
    convert! ((open_iff i subset_rfl).mp open_V).inter open_W using 1
    refine Set.ext fun e ↦ and_right_comm.trans (and_congr_right fun ⟨hV, hU⟩ ↦ ?_)
    rw [Set.mem_preimage, dite_eq_left hV, inj i (inv_U i _) hU (f_inv i _)]

variable {s}

variable (f) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant85517cbcabc90b4f0a79c8b9c38fc93ea2b1c2927db1d1a23e339bf7f3bfcb32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant85517cbcabc90b4f0a79c8b9c38fc93ea2b1c2927db1d1a23e339bf7f3bfcb32.lean#L439).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c19662de3e595c9ce71ed4980b9b5d7fe3c51648` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
