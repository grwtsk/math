# norm_cell_density_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47d011fa-22a5-076b-2ed8-8b1ff977fe30",
  "kind": "theorem",
  "lexical_name": "norm_cell_density_le",
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
  "slug": "norm-cell-density-le--c4455fe552283a05d47a6c7e",
  "source": {
    "blob": "4b1b60777f2a3a7cbd103273535a4b54075ed7fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 44,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CubicRemainder.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4455fe552283a05d47a6c7eec5ca7132937ddc8f30cd3658bdc0f90bdbf6d6c",
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

Occurrence: `result:47d011fa-22a5-076b-2ed8-8b1ff977fe30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_cell_density_le (q σ₀ : ℝ) (hq : 1 ≤ q) (s : ℂ) (hs : σ₀ ≤ s.re)
    (u : ℝ) (hu : u ∈ Icc (0 : ℝ) 1) :
    ‖(third u : ℂ) * logPower (q + u) (-s - 3)‖ ≤
      Real.exp (-(σ₀ + 3) * Real.log (q + u)) / 48 := by
  have hqu : 1 ≤ q + u := by linarith [hu.1]
  have hlog : 0 ≤ Real.log (q + u) := Real.log_nonneg hqu
  have he : ‖logPower (q + u) (-s - 3)‖ =
      Real.exp ((-s.re - 3) * Real.log (q + u)) := by
    simp [logPower, Complex.norm_exp, Complex.mul_re]
  have hp : ‖logPower (q + u) (-s - 3)‖ ≤
      Real.exp (-(σ₀ + 3) * Real.log (q + u)) := by
    rw [he]
    apply Real.exp_le_exp.mpr
    exact mul_le_mul_of_nonneg_right (by linarith) hlog
  rw [norm_mul, Complex.norm_real, Real.norm_eq_abs]
  have hb := mul_le_mul (abs_third_le u hu) hp (norm_nonneg _)
    (by norm_num : (0 : ℝ) ≤ 1 / 48)
  simpa only [one_div, inv_mul_eq_div] using hb

/-- Bound the integral of the norm, not merely the norm of a cancelled cell. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CubicRemainder.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CubicRemainder.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b1b60777f2a3a7cbd103273535a4b54075ed7fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
