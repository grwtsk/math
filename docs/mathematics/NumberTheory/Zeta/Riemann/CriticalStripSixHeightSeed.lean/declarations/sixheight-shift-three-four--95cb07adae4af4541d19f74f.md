# sixHeight_shift_three_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7573b335-348a-527e-4943-3413cc88a887",
  "kind": "lemma",
  "lexical_name": "sixHeight_shift_three_four",
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
  "slug": "sixheight-shift-three-four--95cb07adae4af4541d19f74f",
  "source": {
    "blob": "c62cc54111a3e2b186f4a43d34da768bfdd4807a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 76,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95cb07adae4af4541d19f74f95798b4224936453cb864cb8842bcb3fc8fde45c",
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

Occurrence: `result:7573b335-348a-527e-4943-3413cc88a887`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sixHeight_shift_three_four {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (6 : ℝ)) :
    ‖s + 3‖ ≤ (13 / 14 : ℝ) * ‖s + 4‖ := by
  have hb := sixHeight_coordinate_squares hx hx1 hy
  have h3 : ‖s + 3‖ ^ 2 = (s.re + 3) ^ 2 + s.im ^ 2 := by
    simpa using CubicPrimitive.norm_add_real_sq s 3
  have h4 : ‖s + 4‖ ^ 2 = (s.re + 4) ^ 2 + s.im ^ 2 := by
    simpa using CubicPrimitive.norm_add_real_sq s 4
  have hgap : (29 : ℝ) ≤ 169 * ‖s + 4‖ ^ 2 - 196 * ‖s + 3‖ ^ 2 := by
    rw [h3, h4]
    nlinarith [hb.1, hb.2.2]
  apply (sq_le_sq₀ (norm_nonneg _) (mul_nonneg (by norm_num) (norm_nonneg _))).mp
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c62cc54111a3e2b186f4a43d34da768bfdd4807a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
