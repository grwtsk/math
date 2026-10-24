# boundary_kernel_tendsto_uniformly_on

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
      "line": 334,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8d1f540b32b2d1ea002c81bd25240ca81732ec37ad226867912022eb9af20e36.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ff129c08-d3b6-ed83-ef58-e6a0493606da",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a0094d64-3e4b-570e-dbee-6c36516e9bb6",
  "kind": "theorem",
  "lexical_name": "boundary_kernel_tendsto_uniformly_on",
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
  "slug": "boundary-kernel-tendsto-uniformly-on--a15b62ab02cf4d791234db38",
  "source": {
    "blob": "31f406cd3d13fdc40d5b5030c936f15615749492",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 334,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryLayer/Variant8d1f540b32b2d1ea002c81bd25240ca81732ec37ad226867912022eb9af20e36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a15b62ab02cf4d791234db3838a379966f6ee9905158b232681d9dcb55fdf1f9",
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

Occurrence: `result:a0094d64-3e4b-570e-dbee-6c36516e9bb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_kernel_tendsto_uniformly_on (L : ℝ) :
    TendstoUniformlyOn boundaryKernel boundaryProfile atTop (Icc 0 L) := by
  let F : ℝ → ℝ → ℝ := fun q y ↦
    (y ^ 9 / 16 * endpointPolynomialZero (y * q) +
      y ^ 7 / 2 * endpointPolynomialOne (y * q) +
        y ^ 5 * endpointPolynomialTwo (y * q)) /
      ((4096 / 109395 : ℝ) + (65536 / 45045 : ℝ) * q ^ 2 +
        (196608 / 5005 : ℝ) * q ^ 4)
  have hden (q : ℝ) : (4096 / 109395 : ℝ) + (65536 / 45045 : ℝ) * q ^ 2 +
      (196608 / 5005 : ℝ) * q ^ 4 ≠ 0 := ne_of_gt (by positivity)
  have hcont : Continuous (Function.uncurry F) := by
    change Continuous (fun p : ℝ × ℝ ↦
      (p.2 ^ 9 / 16 * endpointPolynomialZero (p.2 * p.1) +
        p.2 ^ 7 / 2 * endpointPolynomialOne (p.2 * p.1) +
          p.2 ^ 5 * endpointPolynomialTwo (p.2 * p.1)) /
      ((4096 / 109395 : ℝ) + (65536 / 45045 : ℝ) * p.1 ^ 2 +
        (196608 / 5005 : ℝ) * p.1 ^ 4))
    apply Continuous.div
    · unfold endpointPolynomialZero endpointPolynomialOne endpointPolynomialTwo
      fun_prop
    · fun_prop
    · intro p
      exact hden p.1
  have huc : UniformContinuousOn (Function.uncurry F) ((Icc (-1) 1) ×ˢ (Icc 0 L)) :=
    (isCompact_Icc.prod isCompact_Icc).uniformContinuousOn_of_continuous hcont.continuousOn
  have huf : TendstoUniformlyOn F (F 0) (nhdsWithin (0 : ℝ) (Icc (-1) 1)) (Icc 0 L) :=
    huc.tendstoUniformlyOn (by norm_num)
  have hq : Tendsto (fun A : ℝ ↦ A⁻¹) atTop (nhdsWithin (0 : ℝ) (Icc (-1) 1)) := by
    apply tendsto_nhdsWithin_iff.mpr
    refine ⟨tendsto_inv_atTop_zero, ?_⟩
    filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
    have hpos : 0 < A := lt_of_lt_of_le (by norm_num) hA
    constructor
    · linarith [inv_nonneg.mpr (le_of_lt hpos)]
    · exact (inv_le_one₀ hpos).mpr hA
  have hu : TendstoUniformlyOn (fun A : ℝ ↦ F A⁻¹) (F 0) atTop (Icc 0 L) :=
    fun u hu ↦ hq.eventually (huf u hu)
  have heq : ∀ᶠ A : ℝ in atTop, EqOn (F A⁻¹) (boundaryKernel A) (Icc 0 L) := by
    filter_upwards [eventually_ge_atTop (max 1 L)] with A hA
    intro y hy
    have hA1 : 1 ≤ A := (le_max_left _ _).trans hA
    have hAL : L ≤ A := (le_max_right _ _).trans hA
    rw [boundary_kernel_exact A y hA1 hy.1 (by linarith [hy.2]),
      source_normalization_inverse_square]
    unfold F
    simp only [div_eq_mul_inv, inv_pow]
    ring
  have hright : EqOn (F 0) boundaryProfile (Icc 0 L) := by
    intro y _
    norm_num [F, endpointPolynomialZero, endpointPolynomialOne, endpointPolynomialTwo,
      boundaryProfile]
    ring
  exact (hu.congr heq).congr_right hright


/-- The actual bulk truncation of the physical weighted source continuum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryLayer/Variant8d1f540b32b2d1ea002c81bd25240ca81732ec37ad226867912022eb9af20e36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryLayer/Variant8d1f540b32b2d1ea002c81bd25240ca81732ec37ad226867912022eb9af20e36.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31f406cd3d13fdc40d5b5030c936f15615749492` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
