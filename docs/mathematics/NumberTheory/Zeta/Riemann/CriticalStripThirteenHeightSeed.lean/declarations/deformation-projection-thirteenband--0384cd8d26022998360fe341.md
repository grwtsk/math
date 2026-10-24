# deformation_projection_thirteenBand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b17bad4-78ca-1723-8d92-945fa8397b4c",
  "kind": "theorem",
  "lexical_name": "deformation_projection_thirteenBand",
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
  "slug": "deformation-projection-thirteenband--0384cd8d26022998360fe341",
  "source": {
    "blob": "4765a9026e9bb9d90fb014330f16604db81083f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 173,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightSeed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0384cd8d26022998360fe341e53252e6105f3490427a1629f412eb721baecf20",
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

Occurrence: `result:0b17bad4-78ca-1723-8d92-945fa8397b4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem deformation_projection_thirteenBand {s : ℂ} {t : ℝ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hlo : (12 : ℝ) ≤ |s.im|) (hhi : |s.im| ≤ (13 : ℝ)) (ht : 0 ≤ t) (ht1 : t ≤ 1) :
    (3 / 280 : ℝ) * ‖s - 1‖ ^ 2 ≤ (deformation t s * (starRingEnd ℂ) (s - 1)).re := by
  have heq : (deformation t s * (starRingEnd ℂ) (s - 1)).re =
      (1 - t) * ‖s - 1‖ ^ 2 + t * (poleNormalizedZeta s * (starRingEnd ℂ) (s - 1)).re := by
    have hc : deformation t s * (starRingEnd ℂ) (s - 1) =
        ((1 - t : ℝ) : ℂ) * ((s - 1) * (starRingEnd ℂ) (s - 1)) +
          (t : ℂ) * (poleNormalizedZeta s * (starRingEnd ℂ) (s - 1)) := by
      unfold deformation
      push_cast
      ring
    rw [hc, Complex.add_re]
    simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero,
      self_projection]
  rw [heq]
  have h := mul_le_mul_of_nonneg_left (thirteen_source_projection hx hx1 hlo hhi) ht
  have hrem := mul_nonneg (sub_nonneg.mpr ht1) (sq_nonneg ‖s - 1‖)
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightSeed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightSeed.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4765a9026e9bb9d90fb014330f16604db81083f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
