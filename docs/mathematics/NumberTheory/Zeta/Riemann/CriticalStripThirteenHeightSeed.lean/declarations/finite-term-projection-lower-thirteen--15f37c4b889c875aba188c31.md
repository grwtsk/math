# finite_term_projection_lower_thirteen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1efa9491-0335-0c3f-2b0e-fabf26c21512",
  "kind": "theorem",
  "lexical_name": "finite_term_projection_lower_thirteen",
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
  "slug": "finite-term-projection-lower-thirteen--15f37c4b889c875aba188c31",
  "source": {
    "blob": "4765a9026e9bb9d90fb014330f16604db81083f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 31,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightSeed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15f37c4b889c875aba188c310ae7a4e70826900816c28ef3cf5663e22585d8e4",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightSeed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1efa9491-0335-0c3f-2b0e-fabf26c21512`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_term_projection_lower_thirteen {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hlo : (12 : ℝ) ≤ |s.im|) (hhi : |s.im| ≤ (13 : ℝ)) :
    -(2 / 5 : ℝ) * ‖s - 1‖ ^ 2 ≤ ((power s * coefficient s) * (starRingEnd ℂ) (s - 1)).re := by
  have hy := thirteen_height_squares hlo hhi
  have hc := ThirteenHeightCertificate.bounds hx hx1 hy.1 hy.2
  have ht := ThirteenPhase.signed_height_bounds hlo hhi
  have hch := ThirteenPhase.height_chord hlo hhi
  have hcos := mul_le_mul_of_nonneg_right ht.1 hc.1
  have hsin := mul_le_mul_of_nonneg_right ht.2 hc.2.1
  have hchQ := mul_le_mul_of_nonneg_right hch hc.2.1
  have hraw : -ThirteenHeightCertificate.adverse s.re (s.im ^ 2) ≤
      Real.cos (s.im * Real.log 2) * projectionReal s.re (s.im ^ 2) +
        s.im * Real.sin (s.im * Real.log 2) * projectionSlope s.re (s.im ^ 2) := by
    unfold ThirteenHeightCertificate.adverse
    nlinarith
  have he := coefficient_projection s
  have hr : (coefficient s * (starRingEnd ℂ) (s - 1)).re =
      projectionReal s.re (s.im ^ 2) / 967680 := by nlinarith [he.1]
  have hi : (coefficient s * (starRingEnd ℂ) (s - 1)).im =
      s.im * projectionSlope s.re (s.im ^ 2) / 967680 := by nlinarith [he.2]
  have hscaled : 967680 * ((power s * coefficient s) * (starRingEnd ℂ) (s - 1)).re =
      ‖power s‖ * (Real.cos (s.im * Real.log 2) * projectionReal s.re (s.im ^ 2) +
        s.im * Real.sin (s.im * Real.log 2) * projectionSlope s.re (s.im ^ 2)) := by
    rw [mul_assoc, Complex.mul_re, Phase.power_re, Phase.power_im,
      ThirteenPhase.amplitude_eq_norm, hr, hi]
    ring
  have hd : ‖s - 1‖ ^ 2 = (s.re - 1) ^ 2 + s.im ^ 2 := by
    simp [Complex.sq_norm, Complex.normSq_apply]
  have h1 := mul_le_mul_of_nonneg_left hraw (norm_nonneg (power s))
  have h2 := mul_le_mul_of_nonneg_left hc.2.2.1 (norm_nonneg (power s))
  have h3 := mul_le_mul_of_nonneg_right (ThirteenPhase.weighted_root hx hx1)
    (show 0 ≤ (2 / 5 : ℝ) * 967680 * ‖s - 1‖ ^ 2 by positivity)
  rw [← hd] at h2
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightSeed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightSeed.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4765a9026e9bb9d90fb014330f16604db81083f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
