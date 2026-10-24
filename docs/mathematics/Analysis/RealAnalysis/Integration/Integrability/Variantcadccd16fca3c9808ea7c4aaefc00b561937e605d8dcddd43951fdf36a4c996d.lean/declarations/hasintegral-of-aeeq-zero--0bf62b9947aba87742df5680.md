# HasIntegral.of_aeEq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:91d3785d-33bd-2b2b-75b3-f693fa5fd605",
  "kind": "theorem",
  "lexical_name": "HasIntegral.of_aeEq_zero",
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
  "slug": "hasintegral-of-aeeq-zero--0bf62b9947aba87742df5680",
  "source": {
    "blob": "b73046230ca8be0ac9dc15f8496fada5287e3e6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 109,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integrability/Variantcadccd16fca3c9808ea7c4aaefc00b561937e605d8dcddd43951fdf36a4c996d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0bf62b9947aba87742df56809f7e5f3599933b466e4b7c221903be14354eddb0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integrability/Variantcadccd16fca3c9808ea7c4aaefc00b561937e605d8dcddd43951fdf36a4c996d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91d3785d-33bd-2b2b-75b3-f693fa5fd605`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasIntegral.of_aeEq_zero {l : IntegrationParams} {I : Box ι} {f : (ι → ℝ) → E}
    {μ : Measure (ι → ℝ)} [IsLocallyFiniteMeasure μ] (hf : f =ᵐ[μ.restrict I] 0)
    (hl : l.bRiemann = false) : HasIntegral.{u, v, v} I l f μ.toBoxAdditive.toSMul 0 := by
  /- Each set `{x | n < ‖f x‖ ≤ n + 1}`, `n : ℕ`, has measure zero. We cover it by an open set of
    measure less than `ε / 2 ^ n / (n + 1)`. Then the norm of the integral sum is less than `ε`. -/
  refine hasIntegral_iff.2 fun ε ε0 => ?_
  lift ε to ℝ≥0 using ε0.lt.le; rw [gt_iff_lt, NNReal.coe_pos] at ε0
  rcases NNReal.exists_pos_sum_of_countable ε0.ne' ℕ with ⟨δ, δ0, c, hδc, hcε⟩
  haveI := Fact.mk (I.measure_coe_lt_top μ)
  change μ.restrict I {x | f x ≠ 0} = 0 at hf
  set N : (ι → ℝ) → ℕ := fun x => ⌈‖f x‖⌉₊
  have N0 : ∀ {x}, N x = 0 ↔ f x = 0 := by simp [N]
  have : ∀ n, ∃ U, N ⁻¹' {n} ⊆ U ∧ IsOpen U ∧ μ.restrict I U < δ n / n := fun n ↦ by
    refine (N ⁻¹' {n}).exists_isOpen_lt_of_lt _ ?_
    rcases n with - | n
    · simp [ENNReal.div_zero (ENNReal.coe_pos.2 (δ0 _)).ne']
    · refine (measure_mono_null ?_ hf).le.trans_lt ?_
      · exact fun x hxN hxf => n.succ_ne_zero ((Eq.symm hxN).trans <| N0.2 hxf)
      · simp [(δ0 _).ne']
  choose U hNU hUo hμU using this
  have : ∀ x, ∃ r : Ioi (0 : ℝ), closedBall x r ⊆ U (N x) := fun x => by
    obtain ⟨r, hr₀, hr⟩ := nhds_basis_closedBall.mem_iff.1 ((hUo _).mem_nhds (hNU _ rfl))
    exact ⟨⟨r, hr₀⟩, hr⟩
  choose r hrU using this
  refine ⟨fun _ => r, fun c => l.rCond_of_bRiemann_eq_false hl, fun c π hπ _ => ?_⟩
  rw [dist_eq_norm, sub_zero, ← integralSum_fiberwise fun J => N (π.tag J)]
  refine le_trans ?_ (NNReal.coe_lt_coe.2 hcε).le
  refine (norm_sum_le_of_le _ ?_).trans
    (sum_le_hasSum _ (fun n _ => (δ n).2) (NNReal.hasSum_coe.2 hδc))
  rintro n -
  dsimp [integralSum]
  have : ∀ J ∈ π.filter fun J => N (π.tag J) = n,
      ‖μ.real ↑J • f (π.tag J)‖ ≤ μ.real J * n := fun J hJ ↦ by
    rw [TaggedPrepartition.mem_filter] at hJ
    rw [norm_smul, Real.norm_eq_abs, abs_of_nonneg measureReal_nonneg]
    gcongr
    exact hJ.2 ▸ Nat.le_ceil _
  refine (norm_sum_le_of_le _ this).trans ?_; clear this
  rw [← sum_mul, ← Prepartition.measure_iUnion_toReal]
  let m := μ (π.filter fun J => N (π.tag J) = n).iUnion
  show m.toReal * ↑n ≤ ↑(δ n)
  have : m < δ n / n := by
    simp only [Measure.restrict_apply (hUo _).measurableSet] at hμU
    refine (measure_mono ?_).trans_lt (hμU _)
    simp only [Set.subset_def, TaggedPrepartition.mem_iUnion, TaggedPrepartition.mem_filter]
    rintro x ⟨J, ⟨hJ, rfl⟩, hx⟩
    exact ⟨hrU _ (hπ.1 _ hJ (Box.coe_subset_Icc hx)), π.le_of_mem' J hJ hx⟩
  clear_value m
  lift m to ℝ≥0 using ne_top_of_lt this
  rw [ENNReal.coe_toReal, ← NNReal.coe_natCast, ← NNReal.coe_mul, NNReal.coe_le_coe, ←
    ENNReal.coe_le_coe, ENNReal.coe_mul, ENNReal.coe_natCast, mul_comm]
  exact (mul_le_mul_left' this.le _).trans ENNReal.mul_div_le

/-- If `f` has integral `y` on a box `I` with respect to a locally finite measure `μ` and `g` is
a.e. equal to `f` on `I`, then `g` has the same integral on `I`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integrability/Variantcadccd16fca3c9808ea7c4aaefc00b561937e605d8dcddd43951fdf36a4c996d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integrability/Variantcadccd16fca3c9808ea7c4aaefc00b561937e605d8dcddd43951fdf36a4c996d.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b73046230ca8be0ac9dc15f8496fada5287e3e6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
