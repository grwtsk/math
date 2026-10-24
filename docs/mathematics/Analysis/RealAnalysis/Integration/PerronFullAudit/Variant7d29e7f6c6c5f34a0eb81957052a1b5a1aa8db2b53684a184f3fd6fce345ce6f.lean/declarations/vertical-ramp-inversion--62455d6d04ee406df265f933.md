# vertical_ramp_inversion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c035e98c-d128-2aaf-e77a-ba43613c360c",
  "kind": "theorem",
  "lexical_name": "vertical_ramp_inversion",
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
  "slug": "vertical-ramp-inversion--62455d6d04ee406df265f933",
  "source": {
    "blob": "db4c7f7e03284dfaeb049cfac1228ba236e60e9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 147,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PerronFullAudit/Variant7d29e7f6c6c5f34a0eb81957052a1b5a1aa8db2b53684a184f3fd6fce345ce6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62455d6d04ee406df265f93302daae56f73a16bd83cdccd64de09f919b64f70e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PerronFullAudit/Variant7d29e7f6c6c5f34a0eb81957052a1b5a1aa8db2b53684a184f3fd6fce345ce6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c035e98c-d128-2aaf-e77a-ba43613c360c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vertical_ramp_inversion (c L : ℝ) (hc : 0 < c) :
    (1 / (2 * Real.pi) : ℝ) •
      (∫ t : ℝ, Complex.exp ((t : ℂ) * (L : ℂ) * Complex.I) /
        ((c : ℂ) + (t : ℂ) * Complex.I) ^ 2) = dampedRamp c L := by
  have h := (dampedRamp_integrable c hc).fourierInv_fourier_eq
    (v := L) (dampedRamp_fourier_integrable c hc) (dampedRamp_continuous c).continuousAt
  calc
    _ = ∫ ξ : ℝ, Complex.exp (((2 * Real.pi * ξ : ℝ) : ℂ) * (L : ℂ) * Complex.I) /
        ((c : ℂ) + ((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I) ^ 2 := by
      convert (Measure.integral_comp_mul_left
        (fun t : ℝ => Complex.exp ((t : ℂ) * (L : ℂ) * Complex.I) /
          ((c : ℂ) + (t : ℂ) * Complex.I) ^ 2) (2 * Real.pi)).symm using 1
      rw [abs_of_pos (inv_pos.mpr (by positivity : 0 < 2 * Real.pi))]
      simp only [one_div]
    _ = 𝓕⁻ (𝓕 (dampedRamp c)) L := by
      rw [Real.fourierInv_eq']
      apply integral_congr_ae
      filter_upwards [] with ξ
      rw [dampedRamp_fourier c hc]
      simp only [smul_eq_mul, RCLike.inner_apply, conj_trivial, mul_one_div]
      congr 2
      push_cast
      ring
    _ = _ := h

/-- The exact smoothed Perron kernel, including the zero value at the cutoff x=1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PerronFullAudit/Variant7d29e7f6c6c5f34a0eb81957052a1b5a1aa8db2b53684a184f3fd6fce345ce6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PerronFullAudit/Variant7d29e7f6c6c5f34a0eb81957052a1b5a1aa8db2b53684a184f3fd6fce345ce6f.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db4c7f7e03284dfaeb049cfac1228ba236e60e9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
