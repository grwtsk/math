# egauge_pi'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a5f1e19-ee75-1e5b-ba8a-c8a60e3f7464",
  "kind": "theorem",
  "lexical_name": "egauge_pi'",
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
  "slug": "egauge-pi--6d73bccfb79339b9fdd13c30",
  "source": {
    "blob": "177952f4fcc3a90b1074413d7f3d324a64e92b40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 239,
    "path": "GRWTSK/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d73bccfb79339b9fdd13c3088c0cfea681735e721d9620b5135b61d37637bd1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a5f1e19-ee75-1e5b-ba8a-c8a60e3f7464`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem egauge_pi' {I : Set ι} (hI : I.Finite)
    {U : ∀ i, Set (E i)} (hU : ∀ i ∈ I, Balanced 𝕜 (U i))
    (x : ∀ i, E i) (hI₀ : I = univ ∨ (∃ i ∈ I, x i ≠ 0) ∨ (𝓝[≠] (0 : 𝕜)).NeBot) :
    egauge 𝕜 (I.pi U) x = ⨆ i ∈ I, egauge 𝕜 (U i) (x i) := by
  refine le_antisymm ?_ (iSup₂_le fun i hi ↦ le_egauge_pi hi _ _)
  refine le_of_forall_lt' fun r hr ↦ ?_
  have : ∀ i ∈ I, ∃ c : 𝕜, x i ∈ c • U i ∧ ‖c‖ₑ < r := fun i hi ↦
    egauge_lt_iff.mp <| (le_iSup₂ i hi).trans_lt hr
  choose! c hc hcr using this
  obtain ⟨c₀, hc₀, hc₀I, hc₀r⟩ :
      ∃ c₀ : 𝕜, (c₀ ≠ 0 ∨ I = univ) ∧ (∀ i ∈ I, ‖c i‖ ≤ ‖c₀‖) ∧ ‖c₀‖ₑ < r := by
    have hr₀ : 0 < r := hr.bot_lt
    rcases I.eq_empty_or_nonempty with rfl | hIne
    · obtain hι | hbot : IsEmpty ι ∨ (𝓝[≠] (0 : 𝕜)).NeBot := by simpa [@eq_comm _ ∅] using hI₀
      · use 0
        simp [@eq_comm _ ∅, hι, hr₀]
      · rcases exists_enorm_lt 𝕜 hr₀.ne' with ⟨c₀, hc₀, hc₀r⟩
        exact ⟨c₀, .inl hc₀, by simp, hc₀r⟩
    · obtain ⟨i₀, hi₀I, hc_max⟩ : ∃ i₀ ∈ I, IsMaxOn (‖c ·‖ₑ) I i₀ :=
        exists_max_image _ (‖c ·‖ₑ) hI hIne
      by_cases H : c i₀ ≠ 0 ∨ I = univ
      · exact ⟨c i₀, H, fun i hi ↦ by simpa [enorm] using hc_max hi, hcr _ hi₀I⟩
      · push_neg at H
        have hc0 (i : ι) (hi : i ∈ I) : c i = 0 := by simpa [H] using hc_max hi
        have heg0 (i : ι) (hi : i ∈ I) : x i = 0 :=
          zero_smul_set_subset (α := 𝕜) (U i) (hc0 i hi ▸ hc i hi)
        have : (𝓝[≠] (0 : 𝕜)).NeBot := (hI₀.resolve_left H.2).resolve_left (by simpa)
        rcases exists_enorm_lt 𝕜 hr₀.ne' with ⟨c₁, hc₁, hc₁r⟩
        refine ⟨c₁, .inl hc₁, fun i hi ↦ ?_, hc₁r⟩
        simp [hc0 i hi]
  refine egauge_lt_iff.2 ⟨c₀, ?_, hc₀r⟩
  rw [smul_set_pi₀' hc₀]
  intro i hi
  exact (hU i hi).smul_mono (hc₀I i hi) (hc i hi)

/-- The extended gauge of a point `x` in an indexed product with finite index type
with respect to a product of balanced sets `U i`,
is the supremum of the extended gauges of the components of `x`
with respect to the corresponding balanced set.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `177952f4fcc3a90b1074413d7f3d324a64e92b40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
