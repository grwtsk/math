# MemLp.uniformIntegrable_of_identDistrib_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ace37d7-cbf0-fe36-5cbd-f073b922eb0f",
  "kind": "theorem",
  "lexical_name": "MemLp.uniformIntegrable_of_identDistrib_aux",
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
  "slug": "memlp-uniformintegrable-of-identdistrib-aux--ff4168c010626d931a0ab7ff",
  "source": {
    "blob": "91af5cc8a11df1f3e8c87a2201838be0295e560c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 314,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant79551db71d8bb5cf64f6d973e6f4b35f77f158658812ce86f8bb9aa068d85ddb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff4168c010626d931a0ab7ff18c560f5dd9576081f0aff43f10ed1c8ad4b1cd5",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant79551db71d8bb5cf64f6d973e6f4b35f77f158658812ce86f8bb9aa068d85ddb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ace37d7-cbf0-fe36-5cbd-f073b922eb0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MemLp.uniformIntegrable_of_identDistrib_aux {ι : Type*} {f : ι → α → E} {j : ι} {p : ℝ≥0∞}
    (hp : 1 ≤ p) (hp' : p ≠ ∞) (hℒp : MemLp (f j) p μ) (hfmeas : ∀ i, StronglyMeasurable (f i))
    (hf : ∀ i, IdentDistrib (f i) (f j) μ μ) : UniformIntegrable f p μ := by
  refine uniformIntegrable_of' hp hp' hfmeas fun ε hε => ?_
  by_cases hι : Nonempty ι
  swap; · exact ⟨0, fun i => False.elim (hι <| Nonempty.intro i)⟩
  obtain ⟨C, hC, hC₂⟩ := hℒp.eLpNorm_indicator_norm_ge_pos_le (hfmeas _) hε
  refine ⟨C.toNNReal, fun i ↦ le_trans (le_of_eq ?_) hC₂⟩
  have : {x | C.toNNReal ≤ ‖f i x‖₊} = {x | C ≤ ‖f i x‖} := by
    ext x
    simp_rw [← norm_toNNReal]
    change C.toNNReal ≤ ‖f i x‖.toNNReal ↔ C ≤ ‖f i x‖
    simpa only [Real.coe_toNNReal C hC.le] using
      Real.le_toNNReal_iff_coe_le (r := C.toNNReal) (norm_nonneg (f i x))
  have hmi : MeasurableSet {x | C ≤ ‖f i x‖} :=
    measurableSet_le measurable_const (hfmeas i).norm.measurable
  have hmj : MeasurableSet {x | C ≤ (‖f j x‖₊ : ℝ)} :=
    by simpa only [coe_nnnorm] using
      measurableSet_le measurable_const (hfmeas j).norm.measurable
  rw [this, ← eLpNorm_norm
    (f := {x | C ≤ ‖f i x‖}.indicator (f i))
      ((hfmeas i).aestronglyMeasurable.indicator hmi),
    ← eLpNorm_norm (f := {x | C ≤ (‖f j x‖₊ : ℝ)}.indicator (f j))
      ((hfmeas j).aestronglyMeasurable.indicator hmj)]
  simp_rw [norm_indicator_eq_indicator_norm, coe_nnnorm]
  let F : E → ℝ := (fun x : E ↦ if C.toNNReal ≤ ‖x‖₊ then ‖x‖ else 0)
  have F_meas : Measurable F := by
    apply measurable_norm.indicator (measurableSet_le measurable_const measurable_nnnorm)
  have : ∀ k, (fun x ↦ Set.indicator {x | C ≤ ‖f k x‖} (fun a ↦ ‖f k a‖) x) = F ∘ f k := by
    intro k
    ext x
    simp only [F, Set.indicator, Set.mem_ofPred_eq, Function.comp_apply,
      Real.toNNReal_le_iff_le_coe, coe_nnnorm]
  rw [this, this, ← eLpNorm_map_measure F_meas.aestronglyMeasurable (hf i).aemeasurable_fst,
    (hf i).map_eq, eLpNorm_map_measure F_meas.aestronglyMeasurable (hf j).aemeasurable_fst]

/-- A sequence of identically distributed Lᵖ functions is p-uniformly integrable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant79551db71d8bb5cf64f6d973e6f4b35f77f158658812ce86f8bb9aa068d85ddb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant79551db71d8bb5cf64f6d973e6f4b35f77f158658812ce86f8bb9aa068d85ddb.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91af5cc8a11df1f3e8c87a2201838be0295e560c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
