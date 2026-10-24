# Memℒp.uniformIntegrable_of_identDistrib_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7f087d9-2172-7c65-3d1f-c12dcec9a998",
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
  "slug": "mem-p-uniformintegrable-of-identdistrib-aux--cb36fe3a5bbe54d750b541e3",
  "source": {
    "blob": "a344d23c2b3d886fa04ad862a338cab90b98fa07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 321,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant8c1c489ce9c35ad12f7ba1155ac3a0070d7736a95d4cd3cd9c9bbb109faf9853.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb36fe3a5bbe54d750b541e36c2a6ea86c7148a07a5115b3fcf40f5e3a5cd00b",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant8c1c489ce9c35ad12f7ba1155ac3a0070d7736a95d4cd3cd9c9bbb109faf9853.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7f087d9-2172-7c65-3d1f-c12dcec9a998`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–342.

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

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant8c1c489ce9c35ad12f7ba1155ac3a0070d7736a95d4cd3cd9c9bbb109faf9853.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant8c1c489ce9c35ad12f7ba1155ac3a0070d7736a95d4cd3cd9c9bbb109faf9853.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a344d23c2b3d886fa04ad862a338cab90b98fa07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
