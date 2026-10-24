# tendsto_zero_testAgainstNN_of_tendsto_zero_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04fc7f1b-76d4-1a1a-d6e2-8455606c1c29",
  "kind": "theorem",
  "lexical_name": "tendsto_zero_testAgainstNN_of_tendsto_zero_mass",
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
  "slug": "tendsto-zero-testagainstnn-of-tendsto-zero-mass--e170162f8c0b4a1649a3bf68",
  "source": {
    "blob": "f5405a22a971e968ce8d9812ee76cf9654c04e3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 541,
    "line": 525,
    "path": "GRWTSK/Analysis/MeasureTheory/FiniteMeasure/Variant4fe91d74fcbe4d82e9858b16042a100bdcbccc57595245c64cffe60c6dce0b2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e170162f8c0b4a1649a3bf68d8957042b0acb5ebadb3ba2f1f9203e7caf37961",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/FiniteMeasure/Variant4fe91d74fcbe4d82e9858b16042a100bdcbccc57595245c64cffe60c6dce0b2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04fc7f1b-76d4-1a1a-d6e2-8455606c1c29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 525–541.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_zero_testAgainstNN_of_tendsto_zero_mass {γ : Type*} {F : Filter γ}
    {μs : γ → FiniteMeasure Ω} (mass_lim : Tendsto (fun i => (μs i).mass) F (𝓝 0)) (f : Ω →ᵇ ℝ≥0) :
    Tendsto (fun i => (μs i).testAgainstNN f) F (𝓝 0) := by
  apply tendsto_iff_dist_tendsto_zero.mpr
  have obs := fun i => (μs i).testAgainstNN_lipschitz_estimate f 0
  simp_rw [testAgainstNN_zero, zero_add] at obs
  simp_rw [show ∀ i, dist ((μs i).testAgainstNN f) 0 = (μs i).testAgainstNN f by
      simp only [dist_nndist, NNReal.nndist_zero_eq_val', eq_self_iff_true, imp_true_iff]]
  refine' squeeze_zero (fun i => NNReal.coe_nonneg _) obs _
  have lim_pair : Tendsto (fun i => (⟨nndist f 0, (μs i).mass⟩ : ℝ × ℝ)) F (𝓝 ⟨nndist f 0, 0⟩) := by
    refine' (Prod.tendsto_iff _ _).mpr ⟨tendsto_const_nhds, _⟩
    exact (NNReal.continuous_coe.tendsto 0).comp mass_lim
  have key := tendsto_mul.comp lim_pair
  rwa [mul_zero] at key
#align measure_theory.finite_measure.tendsto_zero_test_against_nn_of_tendsto_zero_mass MeasureTheory.FiniteMeasure.tendsto_zero_testAgainstNN_of_tendsto_zero_mass

/-- If the total masses of finite measures tend to zero, then the measures tend to zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/FiniteMeasure/Variant4fe91d74fcbe4d82e9858b16042a100bdcbccc57595245c64cffe60c6dce0b2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/FiniteMeasure/Variant4fe91d74fcbe4d82e9858b16042a100bdcbccc57595245c64cffe60c6dce0b2d.lean#L525).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5405a22a971e968ce8d9812ee76cf9654c04e3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
