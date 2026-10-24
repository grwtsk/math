# iIndepFun.indepFun_finset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3b8c873-48e5-49bd-5003-12ee4ecb1fcf",
  "kind": "theorem",
  "lexical_name": "iIndepFun.indepFun_finset",
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
  "slug": "iindepfun-indepfun-finset--0fb1ef70dbf62c1415879bec",
  "source": {
    "blob": "428ee49d927019dc40db5400fd6c5c1aa80440c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 423,
    "line": 339,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/IndepFun/Variant5ec87c8603c6b829c9c935f62eaf3626080bf03872f39df4fef51e6f6b1a3990.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fb1ef70dbf62c1415879bec746b30b15dc9141a8b27d2cbd27d580fd3bbdc0b",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/IndepFun/Variant5ec87c8603c6b829c9c935f62eaf3626080bf03872f39df4fef51e6f6b1a3990.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3b8c873-48e5-49bd-5003-12ee4ecb1fcf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–423.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iIndepFun.indepFun_finset (S T : Finset ι) (hST : Disjoint S T)
    (hf_Indep : iIndepFun f κ μ) (hf_meas : ∀ i, Measurable (f i)) :
    IndepFun (fun a (i : S) => f i a) (fun a (i : T) => f i a) κ μ := by
  rcases eq_or_ne μ 0 with rfl | hμ
  · simp
  obtain ⟨η, η_eq, hη⟩ : ∃ (η : Kernel α Ω), κ =ᵐ[μ] η ∧ IsMarkovKernel η :=
    exists_ae_eq_isMarkovKernel hf_Indep.ae_isProbabilityMeasure hμ
  apply IndepFun.congr (Filter.EventuallyEq.symm η_eq)
  -- We introduce π-systems, built from the π-system of boxes which generates `MeasurableSpace.pi`.
  let πSβ := Set.pi (Set.univ : Set S) ''
    Set.pi (Set.univ : Set S) fun i => { s : Set (β i) | MeasurableSet[m i] s }
  let πS := { s : Set Ω | ∃ t ∈ πSβ, (fun a (i : S) => f i a) ⁻¹' t = s }
  have hπS_pi : IsPiSystem πS := by exact IsPiSystem.comap (@isPiSystem_pi _ _ ?_) _
  have hπS_gen : (MeasurableSpace.pi.comap fun a (i : S) => f i a) = generateFrom πS := by
    rw [generateFrom_pi.symm, comap_generateFrom]
    congr
  let πTβ := Set.pi (Set.univ : Set T) ''
      Set.pi (Set.univ : Set T) fun i => { s : Set (β i) | MeasurableSet[m i] s }
  let πT := { s : Set Ω | ∃ t ∈ πTβ, (fun a (i : T) => f i a) ⁻¹' t = s }
  have hπT_pi : IsPiSystem πT := by exact IsPiSystem.comap (@isPiSystem_pi _ _ ?_) _
  have hπT_gen : (MeasurableSpace.pi.comap fun a (i : T) => f i a) = generateFrom πT := by
    rw [generateFrom_pi.symm, comap_generateFrom]
    congr
  -- To prove independence, we prove independence of the generating π-systems.
  refine IndepSets.indep (Measurable.comap_le (measurable_pi_iff.mpr fun i => hf_meas i))
    (Measurable.comap_le (measurable_pi_iff.mpr fun i => hf_meas i)) hπS_pi hπT_pi hπS_gen hπT_gen
    ?_
  rintro _ _ ⟨s, ⟨sets_s, hs1, hs2⟩, rfl⟩ ⟨t, ⟨sets_t, ht1, ht2⟩, rfl⟩
  simp only [Set.mem_univ_pi, Set.mem_ofPred_eq] at hs1 ht1
  rw [← hs2, ← ht2]
  classical
  let sets_s' : ∀ i : ι, Set (β i) := fun i =>
    dite (i ∈ S) (fun hi => sets_s ⟨i, hi⟩) fun _ => Set.univ
  have h_sets_s'_eq : ∀ {i} (hi : i ∈ S), sets_s' i = sets_s ⟨i, hi⟩ := by
    intro i hi; simp_rw [sets_s', dite_eq_left hi]
  have h_sets_s'_univ : ∀ {i} (_hi : i ∈ T), sets_s' i = Set.univ := by
    intro i hi; simp_rw [sets_s', dite_eq_right (Finset.disjoint_right.mp hST hi)]
  let sets_t' : ∀ i : ι, Set (β i) := fun i =>
    dite (i ∈ T) (fun hi => sets_t ⟨i, hi⟩) fun _ => Set.univ
  have h_sets_t'_univ : ∀ {i} (_hi : i ∈ S), sets_t' i = Set.univ := by
    intro i hi; simp_rw [sets_t', dite_eq_right (Finset.disjoint_left.mp hST hi)]
  have h_meas_s' : ∀ i ∈ S, MeasurableSet (sets_s' i) := by
    intro i hi; rw [h_sets_s'_eq hi]; exact hs1 _
  have h_meas_t' : ∀ i ∈ T, MeasurableSet (sets_t' i) := by
    intro i hi; simp_rw [sets_t', dite_eq_left hi]; exact ht1 _
  have h_eq_inter_S : (fun (ω : Ω) (i : ↥S) =>
    f (↑i) ω) ⁻¹' Set.pi Set.univ sets_s = ⋂ i ∈ S, f i ⁻¹' sets_s' i := by
    ext1 x
    simp_rw [Set.mem_preimage, Set.mem_univ_pi, Set.mem_iInter]
    grind
  have h_eq_inter_T : (fun (ω : Ω) (i : ↥T) => f (↑i) ω) ⁻¹' Set.pi Set.univ sets_t
    = ⋂ i ∈ T, f i ⁻¹' sets_t' i := by
    ext1 x
    simp only [Set.mem_preimage, Set.mem_univ_pi, Set.mem_iInter]
    constructor <;> intro h
    · intro i hi; simp_rw [sets_t', dite_eq_left hi]; exact h ⟨i, hi⟩
    · rintro ⟨i, hi⟩; specialize h i hi; simp_rw [sets_t', dite_eq_left hi] at h; exact h
  replace hf_Indep := hf_Indep.congr η_eq
  rw [iIndepFun_iff_measure_inter_preimage_eq_mul] at hf_Indep
  have h_Inter_inter :
    ((⋂ i ∈ S, f i ⁻¹' sets_s' i) ∩ ⋂ i ∈ T, f i ⁻¹' sets_t' i) =
      ⋂ i ∈ S ∪ T, f i ⁻¹' (sets_s' i ∩ sets_t' i) := by
    ext1 x
    simp_rw [Set.mem_inter_iff, Set.mem_iInter, Set.mem_preimage, Finset.mem_union]
    constructor <;> intro h
    · grind
    · exact ⟨fun i hi => (h i (Or.inl hi)).1, fun i hi => (h i (Or.inr hi)).2⟩
  have h_meas_inter : ∀ i ∈ S ∪ T, MeasurableSet (sets_s' i ∩ sets_t' i) := by
    intro i hi_mem
    rw [Finset.mem_union] at hi_mem
    rcases hi_mem with hi_mem | hi_mem
    · rw [h_sets_t'_univ hi_mem, Set.inter_univ]
      exact h_meas_s' i hi_mem
    · rw [h_sets_s'_univ hi_mem, Set.univ_inter]
      exact h_meas_t' i hi_mem
  filter_upwards [hf_Indep S h_meas_s', hf_Indep T h_meas_t', hf_Indep (S ∪ T) h_meas_inter]
    with a h_indepS h_indepT h_indepST
  rw [h_eq_inter_S, h_eq_inter_T, h_indepS, h_indepT, h_Inter_inter, h_indepST,
    Finset.prod_union hST]
  congr 1
  · refine Finset.prod_congr rfl fun i hi => ?_
    rw [h_sets_t'_univ hi, Set.inter_univ]
  · refine Finset.prod_congr rfl fun i hi => ?_
    rw [h_sets_s'_univ hi, Set.univ_inter]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/IndepFun/Variant5ec87c8603c6b829c9c935f62eaf3626080bf03872f39df4fef51e6f6b1a3990.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/IndepFun/Variant5ec87c8603c6b829c9c935f62eaf3626080bf03872f39df4fef51e6f6b1a3990.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `428ee49d927019dc40db5400fd6c5c1aa80440c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
