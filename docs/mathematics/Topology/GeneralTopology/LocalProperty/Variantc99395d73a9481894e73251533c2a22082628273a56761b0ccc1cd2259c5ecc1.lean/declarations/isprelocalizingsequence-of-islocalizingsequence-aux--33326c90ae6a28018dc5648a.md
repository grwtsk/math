# isPreLocalizingSequence_of_isLocalizingSequence_aux'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7280ac39-fc55-5e0d-8b43-d99770d6588f",
  "kind": "lemma",
  "lexical_name": "isPreLocalizingSequence_of_isLocalizingSequence_aux'",
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
  "slug": "isprelocalizingsequence-of-islocalizingsequence-aux--33326c90ae6a28018dc5648a",
  "source": {
    "blob": "3f335bebf685d02eec7b219b9232e9fc5f78a1fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 237,
    "path": "GRWTSK/Topology/GeneralTopology/LocalProperty/Variantc99395d73a9481894e73251533c2a22082628273a56761b0ccc1cd2259c5ecc1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33326c90ae6a28018dc5648a1896aaa1c60bce59a60446c16465a15120d2918d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalProperty/Variantc99395d73a9481894e73251533c2a22082628273a56761b0ccc1cd2259c5ecc1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7280ac39-fc55-5e0d-8b43-d99770d6588f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma isPreLocalizingSequence_of_isLocalizingSequence_aux'
    {τ : ℕ → Ω → WithTop ι} {σ : ℕ → ℕ → Ω → WithTop ι}
    (hτ : IsLocalizingSequence 𝓕 τ P) (hσ : ∀ n, IsLocalizingSequence 𝓕 (σ n) P) :
    ∃ T : ℕ → ι, Tendsto T atTop atTop ∧
      ∀ n, ∃ k, P {ω | σ n k ω < min (τ n ω) (T n)} ≤ (1 / 2) ^ n := by
  obtain ⟨T, -, hT⟩ := Filter.exists_seq_monotone_tendsto_atTop_atTop ι
  refine ⟨T, hT, fun n ↦ ?_⟩
  by_contra! hn
  suffices (1 / 2) ^ n ≤ P (⋂ k : ℕ, {ω | σ n k ω < min (τ n ω) (T n)}) by
    refine (by simp : ¬ (1 / 2 : ℝ≥0∞) ^ n ≤ 0) <| this.trans <| nonpos_iff_eq_zero.2 ?_
    rw [measure_eq_zero_iff_ae_notMem]
    filter_upwards [(hσ n).tendsto_top] with ω hTop hmem
    simp_rw [WithTop.tendsto_nhds_top_iff, eventually_atTop] at hTop
    simp only [Set.mem_iInter, Set.mem_ofPred_eq] at hmem
    obtain ⟨N, hN⟩ := hTop (T n)
    specialize hN N le_rfl
    grind
  rw [measure_iInter_of_ae_antitone, le_iInf_iff]
  · exact fun k ↦ (hn k).le
  · filter_upwards [(hσ n).mono] with ω hω
    intros i j hij
    specialize hω hij
    simp [Set.ofPred] at *
    grind
  · refine fun i ↦ .nullMeasurableSet ?_
    simp_rw [lt_inf_iff, Set.ofPred_and]
    exact MeasurableSet.inter
      (measurableSet_lt ((hσ n).isStoppingTime i).measurable' (hτ.isStoppingTime n).measurable')
        <| measurableSet_lt ((hσ n).isStoppingTime i).measurable' measurable_const
  · exact ⟨0, measure_ne_top P _⟩

/-- Auxiliary definition for `isPreLocalizingSequence_of_isLocalizingSequence` which constructs a
strictly increasing sequence from a given sequence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalProperty/Variantc99395d73a9481894e73251533c2a22082628273a56761b0ccc1cd2259c5ecc1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalProperty/Variantc99395d73a9481894e73251533c2a22082628273a56761b0ccc1cd2259c5ecc1.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f335bebf685d02eec7b219b9232e9fc5f78a1fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
