# HasTemperateGrowth.comp'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:13caaba7-0c88-aa93-84dc-6951f61911e5",
  "kind": "theorem",
  "lexical_name": "HasTemperateGrowth.comp'",
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
  "slug": "hastemperategrowth-comp--afce8529a0e4e54a36bbf5c0",
  "source": {
    "blob": "5cb955c3f434875ffc3417088861e8076356182d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 142,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/TemperateGrowth/Varianta3961bdbfbae43d4ddfb5e9d6c1d6323bea95398dd9228ad1bfb2731620d88dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:afce8529a0e4e54a36bbf5c03a7a5960184303841a83394d383b6f20ee309c52",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/TemperateGrowth/Varianta3961bdbfbae43d4ddfb5e9d6c1d6323bea95398dd9228ad1bfb2731620d88dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13caaba7-0c88-aa93-84dc-6951f61911e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasTemperateGrowth.comp' [NormedAddCommGroup D] [NormedSpace ℝ D] {g : E → F} {f : D → E}
    {t : Set E} (ht : Set.range f ⊆ t) (ht' : UniqueDiffOn ℝ t) (hg₁ : ContDiffOn ℝ ∞ g t)
    (hg₂ : ∀ N, ∃ k C, ∃ (_hC : 0 ≤ C), ∀ n ≤ N, ∀ x ∈ t,
    ‖iteratedFDerivWithin ℝ n g t x‖ ≤ C * (1 + ‖x‖) ^ k)
    (hf : f.HasTemperateGrowth) : (g ∘ f).HasTemperateGrowth := by
  refine ⟨hg₁.comp_contDiff hf.1 (ht ⟨·, rfl⟩), fun n ↦ ?_⟩
  obtain ⟨k₁, C₁, hC₁, h₁⟩ := hf.norm_iteratedFDeriv_le_uniform n
  obtain ⟨k₂, C₂, hC₂, h₂⟩ := hg₂ n
  have h₁' : ∀ x, ‖f x‖ ≤ C₁ * (1 + ‖x‖) ^ k₁ := by simpa using h₁ 0
  set C₃ := ∑ k ∈ Finset.range (k₂ + 1), C₂ * (k₂.choose k : ℝ) * (C₁ ^ k)
  use k₁ * k₂ + k₁ * n, n ! * C₃ * (1 + C₁) ^ n
  intro x
  have hg' : ∀ i, i ≤ n → ‖iteratedFDerivWithin ℝ i g t (f x)‖ ≤ C₃ * (1 + ‖x‖) ^ (k₁ * k₂) := by
    intro i hi
    calc _ ≤ C₂ * (1 + ‖f x‖) ^ k₂ := h₂ i hi (f x) (ht ⟨x, rfl⟩)
      _ = ∑ i ∈ Finset.range (k₂ + 1), C₂ * (‖f x‖ ^ i * (k₂.choose i)) := by
        rw [add_comm, add_pow, Finset.mul_sum]
        simp
      _ ≤ ∑ i ∈ Finset.range (k₂ + 1), C₂ * (k₂.choose i) * C₁ ^ i * (1 + ‖x‖) ^ (k₁ * k₂) := by
        apply Finset.sum_le_sum
        intro i hi
        grw [h₁']
        simp_rw [mul_pow, ← pow_mul]
        move_mul [← (k₂.choose _ : ℝ), C₂]
        gcongr
        · simp
        · grind
      _ = _ := by simp [C₃, Finset.sum_mul]
  have hf' : ∀ i, 1 ≤ i → i ≤ n → ‖iteratedFDeriv ℝ i f x‖ ≤ ((1 + C₁) * (1 + ‖x‖) ^ k₁) ^ i := by
    intro i hi hi'
    calc _ ≤ C₁ * (1 + ‖x‖) ^ k₁ := h₁ i hi' x
      _ ≤ (1 + C₁) * (1 + ‖x‖) ^ k₁ := by gcongr; simp
      _ ≤ _ := by
        apply le_self_pow₀ (one_le_mul_of_one_le_of_one_le (by simp [hC₁]) (by simp [one_le_pow₀]))
        grind
  calc _ ≤ n ! * (C₃ * (1 + ‖x‖) ^ (k₁ * k₂)) * ((1 + C₁) * (1 + ‖x‖) ^ k₁) ^ n :=
      norm_iteratedFDeriv_comp_le' ht ht' hg₁ hf.1 (mod_cast le_top) x hg' hf'
    _ = _ := by rw [mul_pow, ← pow_mul, pow_add]; ring

/-- Composition of two temperate growth functions is of temperate growth. -/
@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/TemperateGrowth/Varianta3961bdbfbae43d4ddfb5e9d6c1d6323bea95398dd9228ad1bfb2731620d88dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/TemperateGrowth/Varianta3961bdbfbae43d4ddfb5e9d6c1d6323bea95398dd9228ad1bfb2731620d88dc.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cb955c3f434875ffc3417088861e8076356182d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
