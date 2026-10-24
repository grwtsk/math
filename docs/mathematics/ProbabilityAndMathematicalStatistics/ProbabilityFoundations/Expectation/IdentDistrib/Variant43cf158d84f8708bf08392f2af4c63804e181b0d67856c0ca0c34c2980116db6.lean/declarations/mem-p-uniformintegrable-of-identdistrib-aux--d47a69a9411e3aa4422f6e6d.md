# Memℒp.uniformIntegrable_of_identDistrib_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2a5fa8e12c8473a7c4a35bdad80423e933fb810d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 313,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/43/43cf158d84f8708bf08392f2af4c63804e181b0d67856c0ca0c34c2980116db6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e61d97f6-9def-8359-d2e0-f56530cdf0d2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:65cd0ace-75a0-4a3b-6056-893968bf4ece",
  "kind": "theorem",
  "lexical_name": "Memℒp.uniformIntegrable_of_identDistrib_aux",
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
  "slug": "mem-p-uniformintegrable-of-identdistrib-aux--d47a69a9411e3aa4422f6e6d",
  "source": {
    "blob": "2a5fa8e12c8473a7c4a35bdad80423e933fb810d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 313,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant43cf158d84f8708bf08392f2af4c63804e181b0d67856c0ca0c34c2980116db6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d47a69a9411e3aa4422f6e6d1b96c31bee2c0774ac913bfafa131166a83ff79d",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant43cf158d84f8708bf08392f2af4c63804e181b0d67856c0ca0c34c2980116db6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65cd0ace-75a0-4a3b-6056-893968bf4ece`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Memℒp.uniformIntegrable_of_identDistrib_aux {ι : Type*} {f : ι → α → E} {j : ι} {p : ℝ≥0∞}
    (hp : 1 ≤ p) (hp' : p ≠ ∞) (hℒp : Memℒp (f j) p μ) (hfmeas : ∀ i, StronglyMeasurable (f i))
    (hf : ∀ i, IdentDistrib (f i) (f j) μ μ) : UniformIntegrable f p μ := by
  refine' uniformIntegrable_of' hp hp' hfmeas fun ε hε => _
  by_cases hι : Nonempty ι
  swap; · exact ⟨0, fun i => False.elim (hι <| Nonempty.intro i)⟩
  obtain ⟨C, hC₁, hC₂⟩ := hℒp.snorm_indicator_norm_ge_pos_le μ (hfmeas _) hε
  refine' ⟨⟨C, hC₁.le⟩, fun i => le_trans (le_of_eq _) hC₂⟩
  have : {x : α | (⟨C, hC₁.le⟩ : ℝ≥0) ≤ ‖f i x‖₊}.indicator (f i) =
      (fun x : E => if (⟨C, hC₁.le⟩ : ℝ≥0) ≤ ‖x‖₊ then x else 0) ∘ f i := by
    ext x
    simp only [Set.indicator, Set.mem_setOf_eq]; norm_cast
  simp_rw [coe_nnnorm, this]
  rw [← snorm_map_measure _ (hf i).aemeasurable_fst, (hf i).map_eq,
    snorm_map_measure _ (hf j).aemeasurable_fst]
  · rfl
  all_goals
    exact_mod_cast aestronglyMeasurable_id.indicator
      (measurableSet_le measurable_const measurable_nnnorm)
#align probability_theory.mem_ℒp.uniform_integrable_of_ident_distrib_aux ProbabilityTheory.Memℒp.uniformIntegrable_of_identDistrib_aux

/-- A sequence of identically distributed Lᵖ functions is p-uniformly integrable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant43cf158d84f8708bf08392f2af4c63804e181b0d67856c0ca0c34c2980116db6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant43cf158d84f8708bf08392f2af4c63804e181b0d67856c0ca0c34c2980116db6.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a5fa8e12c8473a7c4a35bdad80423e933fb810d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
