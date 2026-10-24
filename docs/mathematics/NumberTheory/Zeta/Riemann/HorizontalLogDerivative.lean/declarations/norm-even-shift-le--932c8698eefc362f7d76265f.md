# norm_even_shift_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f046700-182c-03c7-e9d7-892c69768d56",
  "kind": "theorem",
  "lexical_name": "norm_even_shift_le",
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
  "slug": "norm-even-shift-le--932c8698eefc362f7d76265f",
  "source": {
    "blob": "673dcccd858866aa66b420141af02e3fbbf80070",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 80,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/HorizontalLogDerivative.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:932c8698eefc362f7d76265fb49512beab58db4275418d9a3282f6598ac271c3",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/HorizontalLogDerivative.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f046700-182c-03c7-e9d7-892c69768d56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_even_shift_le (s : ℂ) (hs : s.re ≤ -1) (hi : s.im ≠ 0) (k : ℕ) :
    ‖-logDeriv riemannZeta (s - 2 * (k : ℂ))‖ ≤
      ‖-logDeriv riemannZeta s‖ + (k : ℝ) + 2 * mangoldtLineMass := by
  have hw : 2 ≤ (1 - s).re := by simp only [Complex.sub_re, Complex.one_re]; linarith
  have hwk : 2 ≤ (1 - (s - 2 * (k : ℂ))).re := by
    simp only [Complex.sub_re, Complex.one_re, Complex.mul_re, show (2 : ℂ).re = 2 by rfl,
      Complex.natCast_re, show (2 : ℂ).im = 0 by rfl, Complex.natCast_im, mul_zero, sub_zero]
    linarith [Nat.cast_nonneg (α := ℝ) k]
  have hr : ‖∑ j ∈ Finset.range (2 * k), (1 - s + (j : ℂ))⁻¹‖ ≤ (k : ℝ) := by
    convert norm_reciprocal_sum_le (1 - s) hw (2 * k) using 1; push_cast; ring
  rw [negative_logDeriv_even_shift s hs hi k]
  have ht1 := norm_sub_le
    (-logDeriv riemannZeta s + (∑ j ∈ Finset.range (2 * k), (1 - s + (j : ℂ))⁻¹) +
      logDeriv riemannZeta (1 - (s - 2 * (k : ℂ))))
    (logDeriv riemannZeta (1 - s))
  have ht2 := norm_add_le
    (-logDeriv riemannZeta s + (∑ j ∈ Finset.range (2 * k), (1 - s + (j : ℂ))⁻¹))
    (logDeriv riemannZeta (1 - (s - 2 * (k : ℂ))))
  have ht3 := norm_add_le (-logDeriv riemannZeta s)
    (∑ j ∈ Finset.range (2 * k), (1 - s + (j : ℂ))⁻¹)
  linarith [norm_logDeriv_right_halfPlane_le _ hw, norm_logDeriv_right_halfPlane_le _ hwk]

/-- Real-part reduction uses a natural floor with its nonnegative-input premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/HorizontalLogDerivative.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/HorizontalLogDerivative.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `673dcccd858866aa66b420141af02e3fbbf80070` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
