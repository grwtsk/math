# integral_norm_cell_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e682700-75d3-9ed3-96ca-9d6abc297788",
  "kind": "theorem",
  "lexical_name": "integral_norm_cell_le",
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
  "slug": "integral-norm-cell-le--4d36524e0fe8db0091601f97",
  "source": {
    "blob": "4b1b60777f2a3a7cbd103273535a4b54075ed7fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 64,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CubicRemainder.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d36524e0fe8db0091601f9759e6bb7015150c788c1e18639c2b02875346d646",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CubicRemainder.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e682700-75d3-9ed3-96ca-9d6abc297788`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_norm_cell_le (q σ₀ : ℝ) (hq : 1 ≤ q) (hσ : -2 < σ₀)
    (s : ℂ) (hs : σ₀ ≤ s.re) :
    (∫ u in (0 : ℝ)..1, ‖(third u : ℂ) * logPower (q + u) (-s - 3)‖) ≤
      powerCell q (σ₀ + 2) / 48 := by
  have hq0 : 0 < q := lt_of_lt_of_le zero_lt_one hq
  have hp : 0 < σ₀ + 2 := by linarith
  have hc : ContinuousOn (fun u : ℝ => Real.exp (-((σ₀ + 2) + 1) * Real.log (q + u)))
      (Icc (0 : ℝ) 1) := by
    intro u hu
    have ht : q + u ≠ 0 := ne_of_gt (by linarith [hu.1])
    exact (by fun_prop (disch := assumption) : ContinuousAt
      (fun v : ℝ => Real.exp (-((σ₀ + 2) + 1) * Real.log (q + v))) u).continuousWithinAt
  calc
    _ ≤ ∫ u in (0 : ℝ)..1, Real.exp (-((σ₀ + 2) + 1) * Real.log (q + u)) / 48 := by
      apply intervalIntegral.integral_mono_on (by norm_num) (cell_integrable q hq0 s).norm
        ((hc.intervalIntegrable_of_Icc (by norm_num)).div_const 48)
      intro u hu
      simpa only [add_assoc, show (2 : ℝ) + 1 = 3 by norm_num] using
        norm_cell_density_le q σ₀ hq s hs u hu
    _ = _ := by rw [intervalIntegral.integral_div, integral_powerCell q (σ₀ + 2) hq0 hp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CubicRemainder.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CubicRemainder.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b1b60777f2a3a7cbd103273535a4b54075ed7fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
