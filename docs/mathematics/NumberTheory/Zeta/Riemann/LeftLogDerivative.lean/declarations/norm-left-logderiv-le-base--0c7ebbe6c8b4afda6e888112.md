# norm_left_logDeriv_le_base

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06782511-7327-73ef-deda-a2561c442576",
  "kind": "theorem",
  "lexical_name": "norm_left_logDeriv_le_base",
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
  "slug": "norm-left-logderiv-le-base--0c7ebbe6c8b4afda6e888112",
  "source": {
    "blob": "78ceb9569e89f20c2868e9dd6e6e6b459a3bd5f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 164,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/LeftLogDerivative.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c7ebbe6c8b4afda6e888112d81eb6abf0fe5ef94e33828fbe50e21d36fdd733",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/LeftLogDerivative.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06782511-7327-73ef-deda-a2561c442576`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_left_logDeriv_le_base (N : ℕ) (t : ℝ) :
    ‖-logDeriv riemannZeta (leftPoint N t)‖ ≤
      ‖-logDeriv riemannZeta (leftPoint 0 t)‖ + (N : ℝ) + 2 * mangoldtLineMass := by
  have hs (k : ℕ) : 2 ≤ (1 - leftPoint k t).re := by
    rw [leftPoint_reflected]
    simp only [Complex.add_re, Complex.sub_re,  Complex.mul_re,
      Complex.ofReal_re, Complex.ofReal_im, Complex.I_re, Complex.I_im, Complex.natCast_re,
      show (2 : ℂ).re = 2 by rfl, mul_zero, zero_mul, sub_zero]
    nlinarith [Nat.cast_nonneg (α := ℝ) (2 * k)]
  have hrec : ‖∑ j ∈ Finset.range (2 * N),
      (2 - (t : ℂ) * Complex.I + (j : ℂ))⁻¹‖ ≤ (N : ℝ) := by
    have hc := norm_reciprocal_sum_le (2 - (t : ℂ) * Complex.I) (by simp) (2 * N)
    norm_num only [Nat.cast_mul, Nat.cast_ofNat] at hc
    convert hc using 1; ring
  rw [negative_logDeriv_left_recurrence]
  calc
    _ ≤ ‖-logDeriv riemannZeta (leftPoint 0 t) +
          (∑ j ∈ Finset.range (2 * N), (2 - (t : ℂ) * Complex.I + (j : ℂ))⁻¹) +
          logDeriv riemannZeta (1 - leftPoint N t)‖ +
          ‖logDeriv riemannZeta (1 - leftPoint 0 t)‖ := norm_sub_le _ _
    _ ≤ (‖-logDeriv riemannZeta (leftPoint 0 t)‖ +
          ‖∑ j ∈ Finset.range (2 * N), (2 - (t : ℂ) * Complex.I + (j : ℂ))⁻¹‖) +
          ‖logDeriv riemannZeta (1 - leftPoint N t)‖ +
          ‖logDeriv riemannZeta (1 - leftPoint 0 t)‖ :=
      add_le_add ((norm_add_le _ _).trans (add_le_add (norm_add_le _ _) le_rfl)) le_rfl
    _ ≤ _ := by linarith [norm_logDeriv_right_halfPlane_le _ (hs N),
      norm_logDeriv_right_halfPlane_le _ (hs 0)]

/-- Continuity is for the actual entire negative-odd parameter line, not a sampled list. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/LeftLogDerivative.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/LeftLogDerivative.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78ceb9569e89f20c2868e9dd6e6e6b459a3bd5f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
