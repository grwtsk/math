# IsStoppingTime.measurableSet_lt_of_isLUB

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97cc02de-2a6f-c7b0-8d00-b3e33066400a",
  "kind": "theorem",
  "lexical_name": "IsStoppingTime.measurableSet_lt_of_isLUB",
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
  "slug": "isstoppingtime-measurableset-lt-of-islub--36abee389ee928d132afaaf0",
  "source": {
    "blob": "b25a083f6a1b210f988357fb835770c3f90b68da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 195,
    "path": "GRWTSK/Analysis/MeasureTheory/Stopping/Variant38d608b4f30295c1fe84e336ecc0e5ee90c064a531bf7e142bbd73d5100a8c39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36abee389ee928d132afaaf00f203baedd96b434c03ea65df9337717ae333957",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Stopping/Variant38d608b4f30295c1fe84e336ecc0e5ee90c064a531bf7e142bbd73d5100a8c39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97cc02de-2a6f-c7b0-8d00-b3e33066400a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsStoppingTime.measurableSet_lt_of_isLUB (hτ : IsStoppingTime f τ) (i : ι)
    (h_lub : IsLUB (Set.Iio i) i) : MeasurableSet[f i] {ω | τ ω < i} := by
  by_cases hi_min : IsMin i
  · suffices {ω | τ ω < i} = ∅ by rw [this]; exact @MeasurableSet.empty _ (f i)
    ext1 ω
    simp only [Set.mem_ofPred_eq, Set.mem_empty_iff_false, iff_false]
    cases τ ω with
    | top => simp
    | coe t => norm_cast; exact isMin_iff_forall_not_lt.mp hi_min t
  obtain ⟨seq, -, -, h_tendsto, h_bound⟩ :
      ∃ seq : ℕ → ι, Monotone seq ∧ (∀ j, seq j ≤ i) ∧ Tendsto seq atTop (𝓝 i) ∧ ∀ j, seq j < i :=
    h_lub.exists_seq_monotone_tendsto (not_isMin_iff.mp hi_min)
  have h_Iio_eq_Union : Set.Iio (i : WithTop ι) = ⋃ j, {k : WithTop ι | k ≤ seq j} := by
    ext1 k
    push _ ∈ _
    refine ⟨fun hk_lt_i => ?_, fun h_exists_k_le_seq => ?_⟩
    · rw [tendsto_atTop'] at h_tendsto
      cases k with
      | top => simp at hk_lt_i
      | coe k =>
        norm_cast at hk_lt_i ⊢
        have h_nhds : Set.Ici k ∈ 𝓝 i :=
          mem_nhds_iff.mpr ⟨Set.Ioi k, Set.Ioi_subset_Ici le_rfl, isOpen_Ioi, hk_lt_i⟩
        obtain ⟨a, ha⟩ : ∃ a : ℕ, ∀ b : ℕ, b ≥ a → k ≤ seq b := h_tendsto (Set.Ici k) h_nhds
        exact ⟨a, ha a le_rfl⟩
    · obtain ⟨j, hk_seq_j⟩ := h_exists_k_le_seq
      exact hk_seq_j.trans_lt (mod_cast h_bound j)
  have h_lt_eq_preimage : {ω | τ ω < i} = τ ⁻¹' Set.Iio i := by
    ext1 ω; push _ ∈ _; rfl
  rw [h_lt_eq_preimage, h_Iio_eq_Union]
  simp only [Set.preimage_iUnion, Set.preimage_ofPred_eq]
  exact MeasurableSet.iUnion fun n => f.mono (h_bound n).le _ (hτ.measurableSet_le (seq n))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Stopping/Variant38d608b4f30295c1fe84e336ecc0e5ee90c064a531bf7e142bbd73d5100a8c39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Stopping/Variant38d608b4f30295c1fe84e336ecc0e5ee90c064a531bf7e142bbd73d5100a8c39.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b25a083f6a1b210f988357fb835770c3f90b68da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
