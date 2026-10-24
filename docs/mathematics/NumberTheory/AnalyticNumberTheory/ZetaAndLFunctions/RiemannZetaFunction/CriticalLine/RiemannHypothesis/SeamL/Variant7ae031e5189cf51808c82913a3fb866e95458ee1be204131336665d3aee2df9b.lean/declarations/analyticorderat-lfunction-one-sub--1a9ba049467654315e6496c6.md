# analyticOrderAt_LFunction_one_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a3ea63e64d7797979babbd0b3690aa95ded64f2b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 224,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0adc1df6-94f7-db2f-bd3b-d4f127dfad23",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba85f17c-6a05-eb6b-4e88-8c1b1183ddf0",
  "kind": "theorem",
  "lexical_name": "analyticOrderAt_LFunction_one_sub",
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
  "slug": "analyticorderat-lfunction-one-sub--1a9ba049467654315e6496c6",
  "source": {
    "blob": "a3ea63e64d7797979babbd0b3690aa95ded64f2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 224,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a9ba049467654315e6496c63e9093e6cf75c4e675f125f0ba8cfac18c5e9571",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba85f17c-6a05-eb6b-4e88-8c1b1183ddf0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem analyticOrderAt_LFunction_one_sub (hq : 1 < q) (hprim : χ.IsPrimitive)
    {w : ℂ} (h0 : 0 < w.re) (h1 : w.re < 1) :
    analyticOrderAt χ.LFunction (1 - w) = analyticOrderAt (χ⁻¹).LFunction w := by
  have hχ1 := ne_one_of_primitive hq hprim
  have hχ1' := inv_ne_one hχ1
  have h0' : 0 < (1 - w).re := by simp [Complex.sub_re]; linarith
  -- prefactor e(z) = q^{z−1/2}·W(χ): analytic, nonvanishing
  set e : ℂ → ℂ := fun z => (q : ℂ) ^ (z - 1/2) * rootNumber χ with he
  have hqC : (q : ℂ) ≠ 0 := by exact_mod_cast (by omega : q ≠ 0)
  have hean : ∀ z : ℂ, AnalyticAt ℂ e z := by
    intro z
    rw [analyticAt_iff_eventually_differentiableAt]
    filter_upwards with x
    exact ((differentiableAt_id.sub_const _).const_cpow (Or.inl hqC)).mul_const _
  have hene : ∀ z : ℂ, e z ≠ 0 := fun z => mul_ne_zero
    (by rw [Complex.cpow_def_of_ne_zero hqC]; exact Complex.exp_ne_zero _)
    (rootNumber_ne_zero hq hprim)
  -- orders of L and Λ agree in the right half plane
  have hLΛ : ∀ (ψ : DirichletCharacter ℂ q), ψ ≠ 1 → ∀ {z : ℂ}, 0 < z.re →
      analyticOrderAt (completedLFunction ψ) z = analyticOrderAt ψ.LFunction z := by
    intro ψ hψ z hz
    rw [analyticOrderAt_congr (completed_eq_gamma_mul_L (χ := ψ) hq hz)]
    obtain ⟨hγan, hγne⟩ := gammaFactor_analyticAt (χ := ψ) hz
    have hLan : AnalyticAt ℂ ψ.LFunction z := (differentiable_LFunction hψ).analyticAt z
    simp only [analyticOrderAt_mul hγan hLan, hγan.analyticOrderAt_eq_zero.mpr hγne, zero_add]
  -- FE as an eventual identity near w
  have hev : (completedLFunction χ ∘ fun z : ℂ => 1 - z) =ᶠ[nhds w]
      e * completedLFunction χ⁻¹ := by
    filter_upwards with z
    show completedLFunction χ (1 - z) = e z * completedLFunction χ⁻¹ z
    rw [hprim.completedLFunction_one_sub z, he]
  have hg : AnalyticAt ℂ (fun z : ℂ => 1 - z) w := analyticAt_const.sub analyticAt_id
  have hg' : deriv (fun z : ℂ => 1 - z) w ≠ 0 := by
    have : deriv (fun z : ℂ => 1 - z) w = -1 := by
      rw [deriv_const_sub]; simp
    rw [this]; simp
  have hΛan : AnalyticAt ℂ (completedLFunction χ⁻¹) w :=
    (differentiable_completedLFunction hχ1').analyticAt w
  calc analyticOrderAt χ.LFunction (1 - w)
      = analyticOrderAt (completedLFunction χ) (1 - w) := (hLΛ χ hχ1 h0').symm
    _ = analyticOrderAt (completedLFunction χ ∘ fun z : ℂ => 1 - z) w := by
        rw [analyticOrderAt_comp_of_deriv_ne_zero hg hg']
    _ = analyticOrderAt (e * completedLFunction χ⁻¹) w := analyticOrderAt_congr hev
    _ = analyticOrderAt (completedLFunction χ⁻¹) w := by
        simp only [analyticOrderAt_mul (hean w) hΛan,
          (hean w).analyticOrderAt_eq_zero.mpr (hene w), zero_add]
    _ = analyticOrderAt (χ⁻¹).LFunction w := hLΛ χ⁻¹ hχ1' h0

/-! ### 5. The LSeam fields -/

/-- multiplicity invariance under `ρ ↦ 1 − ρ̄`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3ea63e64d7797979babbd0b3690aa95ded64f2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
