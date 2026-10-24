# withSeminorms_iff_mem_nhds_isVonNBounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:35b23ca2-4bdc-7243-829a-5d8a53af9524",
  "kind": "theorem",
  "lexical_name": "withSeminorms_iff_mem_nhds_isVonNBounded",
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
  "slug": "withseminorms-iff-mem-nhds-isvonnbounded--348852d9461cb7269d14e08c",
  "source": {
    "blob": "0863e0adc73c06f53ace6226fbc77d994e489898",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 689,
    "line": 623,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/WithSeminorms/Variantb9a022558c4a60ba4ab37ba2e17ea802c435ba2965bec05c33084eefd5be3a46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:348852d9461cb7269d14e08c43ebe8ed853ac2810d91f14e5bab064d4f445635",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/WithSeminorms/Variantb9a022558c4a60ba4ab37ba2e17ea802c435ba2965bec05c33084eefd5be3a46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35b23ca2-4bdc-7243-829a-5d8a53af9524`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 623–689.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem withSeminorms_iff_mem_nhds_isVonNBounded [IsTopologicalAddGroup E]
    [ContinuousConstSMul 𝕜 E] {p : Seminorm 𝕜 E} :
    WithSeminorms (fun (_ : Fin 1) ↦ p) ↔ p.ball 0 1 ∈ 𝓝 0 ∧ IsVonNBounded 𝕜 (p.ball 0 1) := by
  /- The nontrivial direction is from right to left. With `SeminormFamily.withSeminorms_of_nhds`,
  we need to see that the neighborhoods of zero for the initial topology and for `p` coincide. -/
  refine ⟨fun h ↦ ⟨?_, ?_⟩, ?_⟩
  · apply (h.mem_nhds_iff _ _).2
    exact ⟨Finset.univ, 1, zero_lt_one, by simp⟩
  · apply h.isVonNBounded_iff_seminorm_bounded.2 (fun i ↦ ?_)
    exact ⟨1, zero_lt_one, by simp⟩
  rintro ⟨h, h'⟩
  apply SeminormFamily.withSeminorms_of_nhds
  ext s
  refine ⟨fun hs ↦ ?_, fun hs ↦ ?_⟩
  · /- Show that a neighborhood `s` of zero for the topology is a neighborhood for `p`, by using the
    boundedness of `p.ball 0 1`: this ensures that, for some nonzero `c`, we have
    `p.ball 0 1 ⊆ c • s`, and therefore `p.ball 0 (‖c‖⁻¹) ⊆ s`. -/
    obtain ⟨c, hc, c_ne⟩ : ∃ (c : 𝕜), p.ball 0 1 ⊆ c • s ∧ c ≠ 0 :=
      ((h' hs).and (eventually_ne_cobounded 0)).exists
    have : p.ball 0 (‖c⁻¹‖) ⊆ s := by
      have : c • p.ball 0 (‖c⁻¹‖) ⊆ c • s := by
        simpa [smul_ball_zero c_ne, ← norm_mul, c_ne] using hc
      rwa [smul_set_subset_smul_set_iff₀ c_ne] at this
    grw [← this]
    apply FilterBasis.mem_filter_of_mem
    change p.ball 0 (‖c⁻¹‖) ∈ SeminormFamily.basisSets (fun (i : Fin 1) ↦ p)
    apply SeminormFamily.basisSets_singleton_mem _ 0
    simpa using c_ne
  · /- Show that a neighborhood `s` for `p` is a neighborhood for the topology, by using the
    fact that `p.ball 0 1` is a neighborhood of `0`. Indeed, `s` contains a ball `p.ball 0 r`,
    which contains `c • p.ball 0 1` for some nonzero `c`. The latter set is a neighborhood of zero
    for the topology thanks to the topological vector space assumption. -/
    rcases (FilterBasis.mem_filter_iff _).1 hs with ⟨t, ht, ts⟩
    grw [← ts]
    rcases (SeminormFamily.basisSets_iff _).1 ht with ⟨w, r, r_pos, hw⟩
    rcases eq_or_ne w ∅ with rfl | w_ne
    · simp only [ball, Finset.sup_empty, sub_zero, coe_bot, Pi.zero_apply, r_pos, ofPred_true] at hw
      simp [hw]
    have : t = p.ball 0 r := by
      have : w = Finset.univ := by
        rcases Finset.nonempty_of_ne_empty w_ne with ⟨i, hi⟩
        ext j
        simp only [Subsingleton.elim j i, hi, Finset.mem_univ]
      simpa only [this, Finset.univ_unique, Fin.default_eq_zero, Fin.isValue,
        Finset.sup_singleton] using hw
    rw [this]
    obtain ⟨c, c_pos, hc⟩ : ∃ (c : 𝕜), 0 < ‖c‖ ∧ ‖c‖ < r := exists_norm_lt 𝕜 r_pos
    have c_ne : c ≠ 0 := (by simpa using c_pos)
    have : c • p.ball 0 1 ⊆ p.ball 0 r := by
      rw [smul_ball_zero c_ne]
      exact ball_mono (by simpa using hc.le)
    grw [← this]
    simpa using smul_mem_nhds_smul₀ c_ne h

end NontriviallyNormedField

section continuous_of_bounded

namespace WithSeminorms

variable [NontriviallyNormedField 𝕜] [AddCommGroup E] [Module 𝕜 E]
variable [NormedField 𝕝] [Module 𝕝 E]
variable [NormedField 𝕜₂] [AddCommGroup F] [Module 𝕜₂ F]
variable [NormedField 𝕝₂] [Module 𝕝₂ F]
variable {σ₁₂ : 𝕜 →+* 𝕜₂} [RingHomIsometric σ₁₂]
variable {τ₁₂ : 𝕝 →+* 𝕝₂} [RingHomIsometric τ₁₂]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/WithSeminorms/Variantb9a022558c4a60ba4ab37ba2e17ea802c435ba2965bec05c33084eefd5be3a46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/WithSeminorms/Variantb9a022558c4a60ba4ab37ba2e17ea802c435ba2965bec05c33084eefd5be3a46.lean#L623).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0863e0adc73c06f53ace6226fbc77d994e489898` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
