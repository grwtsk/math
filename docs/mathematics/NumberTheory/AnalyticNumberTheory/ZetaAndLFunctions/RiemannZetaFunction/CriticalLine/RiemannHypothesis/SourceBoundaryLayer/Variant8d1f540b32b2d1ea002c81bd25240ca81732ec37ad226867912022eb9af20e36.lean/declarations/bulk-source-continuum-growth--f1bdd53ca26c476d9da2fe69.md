# bulk_source_continuum_growth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31f406cd3d13fdc40d5b5030c936f15615749492",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 416,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8d1f540b32b2d1ea002c81bd25240ca81732ec37ad226867912022eb9af20e36.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f13097f4-f315-0e5c-99cf-2661c1ba7650",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0007d8e4-e5dc-237c-3e4b-f0298c6c0d8b",
  "kind": "theorem",
  "lexical_name": "bulk_source_continuum_growth",
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
  "slug": "bulk-source-continuum-growth--f1bdd53ca26c476d9da2fe69",
  "source": {
    "blob": "31f406cd3d13fdc40d5b5030c936f15615749492",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 489,
    "line": 416,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryLayer/Variant8d1f540b32b2d1ea002c81bd25240ca81732ec37ad226867912022eb9af20e36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1bdd53ca26c476d9da2fe6999e84891f807e1f7678710d2864bc6792c720da9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryLayer/Variant8d1f540b32b2d1ea002c81bd25240ca81732ec37ad226867912022eb9af20e36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0007d8e4-e5dc-237c-3e4b-f0298c6c0d8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 416–489.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bulk_source_continuum_growth :
    ∃ c R : ℝ, 0 < c ∧ 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      c * Real.exp A / A ^ 9 ≤ bulkSourceContinuum A := by
  rcases endpoint_zero_polynomial_window_lower_bound with ⟨R, hR, hp⟩
  let c : ℝ := (64 / 315 : ℝ) / (16 * sourceNormalization 1 * Real.exp 1)
  have hZ1 : 0 < sourceNormalization 1 := source_normalization_pos 1 (by norm_num)
  have hc : 0 < c := by unfold c; positivity
  refine ⟨c, R, hc, hR, ?_⟩
  intro A hA
  have hA1 : 1 ≤ A := hR.trans hA
  have hpos : 0 < A := lt_of_lt_of_le (by norm_num) hA1
  have hne : A ≠ 0 := ne_of_gt hpos
  have hAp : 0 < A ^ 9 := pow_pos hpos _
  have hZ := source_normalization_pos A hA1
  have hZle := FullQuadraticObstruction.source_normalization_le_radius_one A hA1
  let f : ℝ → ℝ := fun t ↦ Real.exp (t / 2) * fixedKernel 0 (t / A) /
    (16 * sourceNormalization A)
  have hfc : Continuous f := by
    unfold f
    exact ((Real.continuous_exp.comp (continuous_id.div_const 2)).mul
      ((fixed_kernel_continuous 0 (by norm_num)).comp
        (continuous_id.div_const A))).div_const _
  have hfn (t : ℝ) : 0 ≤ f t := by
    unfold f
    exact div_nonneg (mul_nonneg (Real.exp_nonneg _)
      (GeneralizedPoleMoments.fixed_kernel_zero_nonneg _)) (by positivity)
  have hpt (t : ℝ) (ht : t ∈ Icc (2 * A - 2) (2 * A - 1)) :
      c * Real.exp A / A ^ 9 ≤ f t := by
    have hy : 2 * A - t ∈ Icc (1 : ℝ) 2 := ⟨by linarith [ht.2], by linarith [ht.1]⟩
    have hpoly := hp A hA (2 * A - t) hy
    have hy9 : 1 ≤ (2 * A - t) ^ 9 := one_le_pow₀ hy.1
    have hprod : (64 / 315 : ℝ) ≤ (2 * A - t) ^ 9 *
        endpointPolynomialZero ((2 * A - t) / A) := by
      nlinarith
    have heq : fixedKernel 0 (t / A) = ((2 * A - t) ^ 9 *
        endpointPolynomialZero ((2 * A - t) / A)) / A ^ 9 := by
      rw [show t / A = 2 - (2 * A - t) / A by field_simp; ring]
      rw [fixed_kernel_zero_endpoint _ (div_nonneg (by linarith [hy.1]) (le_of_lt hpos))
        ((div_le_iff₀ hpos).2 (by linarith [hy.2]))]
      field_simp
    have hk : (64 / 315 : ℝ) / A ^ 9 ≤ fixedKernel 0 (t / A) := by
      rw [heq]
      exact div_le_div_of_nonneg_right hprod (le_of_lt hAp)
    have hexp : Real.exp (A - 1) ≤ Real.exp (t / 2) :=
      Real.exp_le_exp.mpr (by linarith [ht.1])
    have hn : Real.exp (A - 1) * ((64 / 315 : ℝ) / A ^ 9) ≤
        Real.exp (t / 2) * fixedKernel 0 (t / A) :=
      mul_le_mul hexp hk (by positivity) (Real.exp_nonneg _)
    have hd : Real.exp (A - 1) * ((64 / 315 : ℝ) / A ^ 9) /
        (16 * sourceNormalization 1) ≤ f t := by
      calc
        _ ≤ Real.exp (A - 1) * ((64 / 315 : ℝ) / A ^ 9) /
            (16 * sourceNormalization A) :=
          div_le_div_of_nonneg_left (by positivity) (by positivity) (by nlinarith)
        _ ≤ f t := div_le_div_of_nonneg_right hn (by positivity)
    convert hd using 1
    unfold c
    rw [Real.exp_sub]
    ring
  have hwindow : c * Real.exp A / A ^ 9 ≤ ∫ t in (2 * A - 2)..(2 * A - 1), f t := by
    have hi := intervalIntegral.integral_mono_on (μ := volume) (by linarith : 2 * A - 2 ≤ 2 * A - 1)
      intervalIntegrable_const (hfc.intervalIntegrable _ _) hpt
    have he : (∫ _ in (2 * A - 2)..(2 * A - 1), c * Real.exp A / A ^ 9) =
        c * Real.exp A / A ^ 9 := by
      rw [intervalIntegral.integral_const]
      simp only [show (2 * A - 1) - (2 * A - 2) = 1 by ring, one_smul]
    rw [he] at hi
    exact hi
  have hwhole : (∫ t in (2 * A - 2)..(2 * A - 1), f t) ≤ ∫ t in (0 : ℝ)..(2 * A), f t :=
    intervalIntegral.integral_mono_interval (by linarith) (by linarith) (by linarith)
      (Eventually.of_forall hfn) (hfc.intervalIntegrable _ _)
  exact hwindow.trans hwhole

/-- The actual bulk weighted continuum diverges; the complete source continuum stays bounded. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryLayer/Variant8d1f540b32b2d1ea002c81bd25240ca81732ec37ad226867912022eb9af20e36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryLayer/Variant8d1f540b32b2d1ea002c81bd25240ca81732ec37ad226867912022eb9af20e36.lean#L416).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31f406cd3d13fdc40d5b5030c936f15615749492` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
