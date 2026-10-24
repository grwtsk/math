# bklnw_lemma_9

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b22c2b3-2410-d34e-8464-07ccb71eefc0",
  "kind": "theorem",
  "lexical_name": "bklnw_lemma_9",
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
  "slug": "bklnw-lemma-9--c2a4ed33dd816f3a563db311",
  "source": {
    "blob": "ffde19a257af38792c1e302adf6bb58acc6c98a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1601,
    "line": 1552,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variantb86fd97d6d3f5a548080bdb3246099e1f385fa14bd7b0cf76a7a9123f00a2831.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2a4ed33dd816f3a563db311513e001908fff41feaac9092691df5974598f3a0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variantb86fd97d6d3f5a548080bdb3246099e1f385fa14bd7b0cf76a7a9123f00a2831.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b22c2b3-2410-d34e-8464-07ccb71eefc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1552–1601.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bklnw_lemma_9 (u v : ℝ) (c C c₀ : ℝ)
  (huv : 1 ≤ u ∧ u < v)
  (hψ_bound : ∀ x ∈ Set.Icc u v, -c ≤ (x - ψ x) / sqrt x ∧ (x - ψ x) / sqrt x ≤ C)
  (hψ_linear : ∀ x > 0, ψ x < c₀ * x) :
  ∀ x ∈ Set.Icc (u ^ 2) v, θ x ≥ x - (C + 1) * x ^ (1 / 2 : ℝ) - c₀ * x ^ (1 / 3 : ℝ) - c * x ^ (1 / 4 : ℝ) - c₀ * x ^ (1 / 5 : ℝ) := by
  intro x hx_mem
  have hx_lb : u ^ 2 ≤ x := hx_mem.1
  have hx_ub : x ≤ v := hx_mem.2
  have hx_pos : (0 : ℝ) < x := by
    have : (0 : ℝ) < u := by linarith [huv.1]
    nlinarith
  have hx_ge_u : u ≤ x := by nlinarith [huv.1, hx_lb]
  have hx_in_uv : x ∈ Set.Icc u v := ⟨hx_ge_u, hx_ub⟩
  have hxhalf_ge_u : u ≤ x ^ (1 / 2 : ℝ) := by
    rw [← Real.sqrt_eq_rpow]
    exact (Real.sqrt_sq (by linarith [huv.1])).symm.trans_le (Real.sqrt_le_sqrt hx_lb)
  have hxhalf_le_v : x ^ (1 / 2 : ℝ) ≤ v := by
    rw [← Real.sqrt_eq_rpow]
    have hv_ge1 : 1 < v := by nlinarith [huv.1]
    have hsqrtv : Real.sqrt v ≤ v := by
      rw [Real.sqrt_le_left (by linarith)]; nlinarith
    exact (Real.sqrt_le_sqrt hx_ub).trans hsqrtv
  have hCP : ψ x - θ x ≤ ψ (x ^ (1 / 2 : ℝ)) + ψ (x ^ (1 / 3 : ℝ)) + ψ (x ^ (1 / 5 : ℝ)) :=
    CostaPereira.theorem_1a hx_pos
  have hψx_lb : x - C * x ^ (1 / 2 : ℝ) ≤ ψ x := by
    have hbound := (hψ_bound x hx_in_uv).2
    rw [div_le_iff₀ (Real.sqrt_pos.mpr hx_pos), Real.sqrt_eq_rpow] at hbound
    linarith
  have hψxhalf_ub : ψ (x ^ (1 / 2 : ℝ)) ≤ x ^ (1 / 2 : ℝ) + c * x ^ (1 / 4 : ℝ) := by
    have hbound := (hψ_bound _ ⟨hxhalf_ge_u, hxhalf_le_v⟩).1
    have hsqrt_rw : Real.sqrt (x ^ (1 / 2 : ℝ)) = x ^ (1 / 4 : ℝ) := by
      rw [Real.sqrt_eq_rpow, ← Real.rpow_mul hx_pos.le]; norm_num
    rw [le_div_iff₀ (Real.sqrt_pos.mpr (Real.rpow_pos_of_pos hx_pos _)),
        hsqrt_rw] at hbound
    linarith
  have hψxthird_ub : ψ (x ^ (1 / 3 : ℝ)) < c₀ * x ^ (1 / 3 : ℝ) :=
    hψ_linear _ (Real.rpow_pos_of_pos hx_pos _)
  have hψxfifth_ub : ψ (x ^ (1 / 5 : ℝ)) < c₀ * x ^ (1 / 5 : ℝ) :=
    hψ_linear _ (Real.rpow_pos_of_pos hx_pos _)
  calc θ x
      ≥ ψ x - ψ (x ^ (1/2 : ℝ)) - ψ (x ^ (1/3 : ℝ)) - ψ (x ^ (1/5 : ℝ)) := by linarith
    _ ≥ (x - C * x ^ (1/2 : ℝ))
          - (x ^ (1/2 : ℝ) + c * x ^ (1/4 : ℝ))
          - c₀ * x ^ (1/3 : ℝ)
          - c₀ * x ^ (1/5 : ℝ)                     := by linarith
    _ = x - (C + 1) * x ^ (1/2 : ℝ)
          - c₀ * x ^ (1/3 : ℝ)
          - c * x ^ (1/4 : ℝ)
          - c₀ * x ^ (1/5 : ℝ)                     := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variantb86fd97d6d3f5a548080bdb3246099e1f385fa14bd7b0cf76a7a9123f00a2831.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variantb86fd97d6d3f5a548080bdb3246099e1f385fa14bd7b0cf76a7a9123f00a2831.lean#L1552).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffde19a257af38792c1e302adf6bb58acc6c98a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
