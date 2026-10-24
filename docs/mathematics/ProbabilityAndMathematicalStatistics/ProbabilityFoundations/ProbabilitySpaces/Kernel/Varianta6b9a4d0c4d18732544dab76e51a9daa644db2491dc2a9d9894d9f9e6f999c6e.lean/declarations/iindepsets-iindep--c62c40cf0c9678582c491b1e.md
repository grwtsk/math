# iIndepSets.iIndep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d4aec8554af0fc2c0beb5d13cf6b3045bc4c418e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 738,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a6b9a4d0c4d18732544dab76e51a9daa644db2491dc2a9d9894d9f9e6f999c6e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1ad12d0d-a41f-617f-f6be-3cbbb9d5ce36",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:acde9c11-37e5-232c-68bd-f75cbc9556a7",
  "kind": "theorem",
  "lexical_name": "iIndepSets.iIndep",
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
  "slug": "iindepsets-iindep--c62c40cf0c9678582c491b1e",
  "source": {
    "blob": "d4aec8554af0fc2c0beb5d13cf6b3045bc4c418e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 786,
    "line": 738,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Kernel/Varianta6b9a4d0c4d18732544dab76e51a9daa644db2491dc2a9d9894d9f9e6f999c6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c62c40cf0c9678582c491b1e851d409df092462224b9525e329f52e29fbda096",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Kernel/Varianta6b9a4d0c4d18732544dab76e51a9daa644db2491dc2a9d9894d9f9e6f999c6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acde9c11-37e5-232c-68bd-f75cbc9556a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 738–786.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iIndepSets.iIndep (m : ι → MeasurableSpace Ω)
    (h_le : ∀ i, m i ≤ _mΩ) (π : ι → Set (Set Ω)) (h_pi : ∀ n, IsPiSystem (π n))
    (h_generate : ∀ i, m i = generateFrom (π i)) (h_ind : iIndepSets π κ μ) :
    iIndep m κ μ := by
  classical
  rcases eq_or_ne μ 0 with rfl | hμ
  · simp
  obtain ⟨η, η_eq, hη⟩ : ∃ (η : Kernel α Ω), κ =ᵐ[μ] η ∧ IsMarkovKernel η :=
    exists_ae_eq_isMarkovKernel h_ind.ae_isProbabilityMeasure hμ
  apply iIndep.congr (Filter.EventuallyEq.symm η_eq)
  intro s f
  refine Finset.induction ?_ ?_ s
  · simp only [Finset.notMem_empty, Set.mem_setOf_eq, IsEmpty.forall_iff, implies_true,
      Set.iInter_of_empty, Set.iInter_univ, measure_univ, Finset.prod_empty,
      Filter.eventually_true, forall_true_left]
  · intro a S ha_notin_S h_rec hf_m
    have hf_m_S : ∀ x ∈ S, MeasurableSet[m x] (f x) := fun x hx => hf_m x (by simp [hx])
    let p := piiUnionInter π S
    set m_p := generateFrom p with hS_eq_generate
    have h_indep : Indep m_p (m a) η μ := by
      have hp : IsPiSystem p := isPiSystem_piiUnionInter π h_pi S
      have h_le' : ∀ i, generateFrom (π i) ≤ _mΩ := fun i ↦ (h_generate i).symm.trans_le (h_le i)
      have hm_p : m_p ≤ _mΩ := generateFrom_piiUnionInter_le π h_le' S
      exact IndepSets.indep hm_p (h_le a) hp (h_pi a) hS_eq_generate (h_generate a)
        (iIndepSets.piiUnionInter_of_notMem (h_ind.congr η_eq) ha_notin_S)
    have h := h_indep.symm (f a) (⋂ n ∈ S, f n) (hf_m a (Finset.mem_insert_self a S)) ?_
    · filter_upwards [h_rec hf_m_S, h] with a' ha' h'
      rwa [Finset.set_biInter_insert, Finset.prod_insert ha_notin_S, ← ha']
    · have h_le_p : ∀ i ∈ S, m i ≤ m_p := by
        intros n hn
        rw [hS_eq_generate, h_generate n]
        exact le_generateFrom_piiUnionInter (S : Set ι) hn
      have h_S_f : ∀ i ∈ S, MeasurableSet[m_p] (f i) :=
        fun i hi ↦ (h_le_p i hi) (f i) (hf_m_S i hi)
      exact S.measurableSet_biInter h_S_f

end FromPiSystemsToMeasurableSpaces

section IndepSet

/-! ### Independence of measurable sets

We prove the following equivalences on `IndepSet`, for measurable sets `s, t`.
* `IndepSet s t κ μ ↔ ∀ᵐ a ∂μ, κ a (s ∩ t) = κ a s * κ a t`,
* `IndepSet s t κ μ ↔ IndepSets {s} {t} κ μ`.
-/

variable {_mα : MeasurableSpace α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Kernel/Varianta6b9a4d0c4d18732544dab76e51a9daa644db2491dc2a9d9894d9f9e6f999c6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Kernel/Varianta6b9a4d0c4d18732544dab76e51a9daa644db2491dc2a9d9894d9f9e6f999c6e.lean#L738).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4aec8554af0fc2c0beb5d13cf6b3045bc4c418e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
