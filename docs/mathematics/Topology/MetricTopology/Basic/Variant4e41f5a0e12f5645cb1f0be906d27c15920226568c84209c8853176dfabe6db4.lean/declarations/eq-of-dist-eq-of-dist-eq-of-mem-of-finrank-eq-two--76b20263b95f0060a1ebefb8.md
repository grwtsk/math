# eq_of_dist_eq_of_dist_eq_of_mem_of_finrank_eq_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:964b2df4-9913-7502-d6f4-d98101636688",
  "kind": "theorem",
  "lexical_name": "eq_of_dist_eq_of_dist_eq_of_mem_of_finrank_eq_two",
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
  "slug": "eq-of-dist-eq-of-dist-eq-of-mem-of-finrank-eq-two--76b20263b95f0060a1ebefb8",
  "source": {
    "blob": "35842b188c5bc7938adda13615b712bafc0b48b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 129,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant4e41f5a0e12f5645cb1f0be906d27c15920226568c84209c8853176dfabe6db4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76b20263b95f0060a1ebefb8f4ed54bc2b16f0b31369abbff1df984a4da199ab",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant4e41f5a0e12f5645cb1f0be906d27c15920226568c84209c8853176dfabe6db4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:964b2df4-9913-7502-d6f4-d98101636688`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_of_dist_eq_of_dist_eq_of_mem_of_finrank_eq_two {s : AffineSubspace ℝ P}
    [FiniteDimensional ℝ s.direction] (hd : finrank ℝ s.direction = 2) {c₁ c₂ p₁ p₂ p : P}
    (hc₁s : c₁ ∈ s) (hc₂s : c₂ ∈ s) (hp₁s : p₁ ∈ s) (hp₂s : p₂ ∈ s) (hps : p ∈ s) {r₁ r₂ : ℝ}
    (hc : c₁ ≠ c₂) (hp : p₁ ≠ p₂) (hp₁c₁ : dist p₁ c₁ = r₁) (hp₂c₁ : dist p₂ c₁ = r₁)
    (hpc₁ : dist p c₁ = r₁) (hp₁c₂ : dist p₁ c₂ = r₂) (hp₂c₂ : dist p₂ c₂ = r₂)
    (hpc₂ : dist p c₂ = r₂) : p = p₁ ∨ p = p₂ := by
  have ho : ⟪c₂ -ᵥ c₁, p₂ -ᵥ p₁⟫ = 0 :=
    inner_vsub_vsub_of_dist_eq_of_dist_eq (hp₁c₁.trans hp₂c₁.symm) (hp₁c₂.trans hp₂c₂.symm)
  have hop : ⟪c₂ -ᵥ c₁, p -ᵥ p₁⟫ = 0 :=
    inner_vsub_vsub_of_dist_eq_of_dist_eq (hp₁c₁.trans hpc₁.symm) (hp₁c₂.trans hpc₂.symm)
  let b : Fin 2 → V := ![c₂ -ᵥ c₁, p₂ -ᵥ p₁]
  have hb : LinearIndependent ℝ b := by
    refine linearIndependent_of_ne_zero_of_inner_eq_zero ?_ ?_
    · intro i
      fin_cases i <;> simp [b, hc.symm, hp.symm]
    · intro i j hij
      fin_cases i <;> fin_cases j <;> try exact False.elim (hij rfl)
      · exact ho
      · rw [real_inner_comm]
        exact ho
  have hbs : Submodule.span ℝ (Set.range b) = s.direction := by
    refine Submodule.eq_of_le_of_finrank_eq ?_ ?_
    · rw [Submodule.span_le, Set.range_subset_iff]
      intro i
      fin_cases i
      · exact vsub_mem_direction hc₂s hc₁s
      · exact vsub_mem_direction hp₂s hp₁s
    · rw [finrank_span_eq_card hb, Fintype.card_fin, hd]
  have hv : ∀ v ∈ s.direction, ∃ t₁ t₂ : ℝ, v = t₁ • (c₂ -ᵥ c₁) + t₂ • (p₂ -ᵥ p₁) := by
    intro v hv
    have hr : Set.range b = {c₂ -ᵥ c₁, p₂ -ᵥ p₁} := by
      have hu : (Finset.univ : Finset (Fin 2)) = {0, 1} := by decide
      classical
      rw [← Fintype.coe_image_univ, hu]
      simp [b]
    rw [← hbs, hr, Submodule.mem_span_insert] at hv
    rcases hv with ⟨t₁, v', hv', hv⟩
    rw [Submodule.mem_span_singleton] at hv'
    rcases hv' with ⟨t₂, rfl⟩
    exact ⟨t₁, t₂, hv⟩
  rcases hv (p -ᵥ p₁) (vsub_mem_direction hps hp₁s) with ⟨t₁, t₂, hpt⟩
  simp only [hpt, inner_add_right, inner_smul_right, ho, mul_zero, add_zero,
    mul_eq_zero, inner_self_eq_zero, vsub_eq_zero_iff_eq, hc.symm, or_false] at hop
  rw [hop, zero_smul, zero_add, ← eq_vadd_iff_vsub_eq] at hpt
  subst hpt
  have hp' : (p₂ -ᵥ p₁ : V) ≠ 0 := by simp [hp.symm]
  have hp₂ : dist ((1 : ℝ) • (p₂ -ᵥ p₁) +ᵥ p₁) c₁ = r₁ := by simp [hp₂c₁]
  rw [← hp₁c₁, dist_smul_vadd_eq_dist _ _ hp'] at hpc₁ hp₂
  simp only [one_ne_zero, false_or] at hp₂
  rw [hp₂.symm] at hpc₁
  rcases hpc₁ with hpc₁ | hpc₁ <;> simp [hpc₁]

/-- Distances `r₁` `r₂` of `p` from two different points `c₁` `c₂` determine at
most two points `p₁` `p₂` in two-dimensional space (two circles intersect in at
most two points). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant4e41f5a0e12f5645cb1f0be906d27c15920226568c84209c8853176dfabe6db4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant4e41f5a0e12f5645cb1f0be906d27c15920226568c84209c8853176dfabe6db4.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35842b188c5bc7938adda13615b712bafc0b48b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
