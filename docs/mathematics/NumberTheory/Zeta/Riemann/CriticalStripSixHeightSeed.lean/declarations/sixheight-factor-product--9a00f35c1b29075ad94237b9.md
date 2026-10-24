# sixHeight_factor_product

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:839b4ed9-8394-5c46-58de-5c916f20dfde",
  "kind": "lemma",
  "lexical_name": "sixHeight_factor_product",
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
  "slug": "sixheight-factor-product--9a00f35c1b29075ad94237b9",
  "source": {
    "blob": "c62cc54111a3e2b186f4a43d34da768bfdd4807a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 43,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a00f35c1b29075ad94237b9a35ac1b2b05c1021e3944840e10f8961ce0aa27b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:839b4ed9-8394-5c46-58de-5c916f20dfde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sixHeight_factor_product {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (6 : ℝ)) :
    ‖s‖ * ‖s - 1‖ ≤ (37 : ℝ) := by
  have hb := sixHeight_coordinate_squares hx hx1 hy
  have hs2 : ‖s‖ ^ 2 ≤ (37 : ℝ) := by
    rw [Complex.sq_norm, Complex.normSq_apply]
    nlinarith [hb.1, hb.2.2]
  have hm2 : ‖s - 1‖ ^ 2 ≤ (37 : ℝ) := by
    rw [Complex.sq_norm, Complex.normSq_apply]
    simp only [Complex.sub_re, Complex.one_re, Complex.sub_im, Complex.one_im, sub_zero]
    nlinarith [hb.2.1, hb.2.2]
  have hprod := mul_le_mul hs2 hm2 (sq_nonneg ‖s - 1‖) (by norm_num : (0 : ℝ) ≤ 37)
  have heq : (‖s‖ * ‖s - 1‖) ^ 2 = ‖s‖ ^ 2 * ‖s - 1‖ ^ 2 := by ring
  have hn : 0 ≤ ‖s‖ * ‖s - 1‖ := mul_nonneg (norm_nonneg _) (norm_nonneg _)
  nlinarith


/-- Shared factors make the comparison effective; independent absolute bounds
would lose the strict margin. Both ratio guards are proved on the whole rectangle. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c62cc54111a3e2b186f4a43d34da768bfdd4807a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
