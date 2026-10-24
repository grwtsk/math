# shellGrowth_sphere_of_endpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5cf18643d7e88d88eaed8b1dd2a6d6c3d1052b8b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 246,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/34dda3643680c9b7c6c2c33de1d3ccd67791e865d7660e108acabb6ab9d9468b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c50eeaa7-71ca-621e-692a-3ed8f792cd52",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:30a0a99d-d93a-0d13-13be-e5396bdecb1d",
  "kind": "lemma",
  "lexical_name": "shellGrowth_sphere_of_endpoint",
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
  "slug": "shellgrowth-sphere-of-endpoint--ccb174dd4793531676f22199",
  "source": {
    "blob": "5cf18643d7e88d88eaed8b1dd2a6d6c3d1052b8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 246,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Combined/Variant34dda3643680c9b7c6c2c33de1d3ccd67791e865d7660e108acabb6ab9d9468b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ccb174dd4793531676f22199ccf5cf335f9a3184a2a293765fffa0a160d3afea",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Combined/Variant34dda3643680c9b7c6c2c33de1d3ccd67791e865d7660e108acabb6ab9d9468b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30a0a99d-d93a-0d13-13be-e5396bdecb1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma shellGrowth_sphere_of_endpoint (C : ℝ) (hC : 0 < C)
    (hbound : ∀ m : ℕ, 2 ≤ m →
      (completedRiemannZeta₀ (2 * m)).re ≤ C * Real.exp ((m : ℝ) ^ 2)) :
    ∃ A : ℝ, 0 < A ∧ ∀ r : ℝ, 1 ≤ r → ∀ z : ℂ, z ∈ Metric.sphere 0 (2 * r) →
      ‖z * (z - 1) * completedRiemannZeta₀ z + 1‖ ≤ Real.exp (A * r ^ 4) := by
  refine ⟨12 * C + 25, by positivity, ?_⟩
  intro r hr z hz
  have hr0 : 0 < r := by linarith
  have hzNorm : ‖z‖ = 2 * r := by simpa [Metric.mem_sphere, dist_eq_norm] using hz
  let m : ℕ := ⌈2 * r⌉₊ + 2
  have hm2 : 2 ≤ m := by dsimp [m]; omega
  have hrm : 2 * r ≤ (m : ℝ) := by
    have := Nat.le_ceil (2 * r)
    dsimp [m]
    push_cast
    linarith
  have hmr : (m : ℝ) ≤ 5 * r := by
    have := Nat.ceil_lt_add_one (show 0 ≤ 2 * r by positivity)
    dsimp [m]
    push_cast
    linarith
  have hzre : |z.re| ≤ 2 * r := hzNorm ▸ Complex.abs_re_le_norm z
  have hstrip := shellGrowth_integer_endpoint_bound z m (by
    have := (abs_le.mp hzre).1
    have : (2 : ℝ) ≤ m := by exact_mod_cast hm2
    linarith) (by linarith [(abs_le.mp hzre).2])
  have hL : ‖completedRiemannZeta₀ z‖ ≤ 2 * C * Real.exp (25 * r ^ 2) := by
    apply hstrip.trans
    have hmexp : Real.exp ((m : ℝ) ^ 2) ≤ Real.exp (25 * r ^ 2) := by
      apply Real.exp_le_exp.mpr
      nlinarith [show (0 : ℝ) ≤ m from Nat.cast_nonneg m]
    nlinarith [hbound m hm2, mul_le_mul_of_nonneg_left hmexp hC.le]
  have hzm : ‖z - 1‖ ≤ 3 * r := by
    calc
      ‖z - 1‖ ≤ ‖z‖ + ‖(1 : ℂ)‖ := norm_sub_le _ _
      _ ≤ 3 * r := by rw [hzNorm, norm_one]; linarith
  have hf : ‖z * (z - 1) * completedRiemannZeta₀ z + 1‖ ≤
      (12 * C * r ^ 2 + 1) * Real.exp (25 * r ^ 2) := by
    calc
      ‖z * (z - 1) * completedRiemannZeta₀ z + 1‖ ≤
          ‖z‖ * ‖z - 1‖ * ‖completedRiemannZeta₀ z‖ + 1 := by
        simpa only [norm_mul, norm_one] using norm_add_le
          (z * (z - 1) * completedRiemannZeta₀ z) 1
      _ ≤ (2 * r) * (3 * r) * (2 * C * Real.exp (25 * r ^ 2)) + 1 := by
        rw [hzNorm]
        gcongr
      _ ≤ _ := by
        have he : 1 ≤ Real.exp (25 * r ^ 2) := Real.one_le_exp (by positivity)
        nlinarith
  apply hf.trans
  calc
    (12 * C * r ^ 2 + 1) * Real.exp (25 * r ^ 2) ≤
        Real.exp (12 * C * r ^ 2) * Real.exp (25 * r ^ 2) := by
      gcongr
      exact Real.add_one_le_exp _
    _ = Real.exp ((12 * C + 25) * r ^ 2) := by rw [← Real.exp_add]; congr 1; ring
    _ ≤ Real.exp ((12 * C + 25) * r ^ 4) := by
      apply Real.exp_le_exp.mpr
      have hr2 : r ^ 2 ≤ r ^ 4 := by nlinarith [sq_nonneg (r ^ 2 - 1)]
      exact mul_le_mul_of_nonneg_left hr2 (by positivity)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Combined/Variant34dda3643680c9b7c6c2c33de1d3ccd67791e865d7660e108acabb6ab9d9468b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Combined/Variant34dda3643680c9b7c6c2c33de1d3ccd67791e865d7660e108acabb6ab9d9468b.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cf18643d7e88d88eaed8b1dd2a6d6c3d1052b8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
