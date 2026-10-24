# oneThirdSeed_factor_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3920a327-3ade-61e6-20b7-b32981c15b60",
  "kind": "lemma",
  "lexical_name": "oneThirdSeed_factor_norm",
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
  "slug": "onethirdseed-factor-norm--0c73f9a018faaec515c53e47",
  "source": {
    "blob": "75222568f79145d34e68d7fc218c3d17398ef691",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 41,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripOneThirdSeed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c73f9a018faaec515c53e477e6f28ff0cd33f76e57a71b1af6622736a14fe4b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripOneThirdSeed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3920a327-3ade-61e6-20b7-b32981c15b60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma oneThirdSeed_factor_norm {s : ℂ}
    (hleft : (1 / 2 : ℝ) ≤ s.re) (hright : s.re ≤ 1)
    (hheight : |s.im| ≤ (1 / 3 : ℝ)) : ‖s - 1‖ ≤ (5 / 8 : ℝ) := by
  have hre : |s.re - 1| ≤ (1 / 2 : ℝ) := by
    rw [abs_of_nonpos (sub_nonpos.mpr hright)]
    linarith
  have hrprod := mul_le_mul hre hre (abs_nonneg (s.re - 1))
    (by norm_num : (0 : ℝ) ≤ 1 / 2)
  have hiprod := mul_le_mul hheight hheight (abs_nonneg s.im)
    (by norm_num : (0 : ℝ) ≤ 1 / 3)
  have hre2 : (s.re - 1) ^ 2 ≤ (1 / 2 : ℝ) ^ 2 := by
    nlinarith [sq_abs (s.re - 1)]
  have him2 : s.im ^ 2 ≤ (1 / 3 : ℝ) ^ 2 := by
    nlinarith [sq_abs s.im]
  have hsq : ‖s - 1‖ ^ 2 ≤ (13 / 36 : ℝ) := by
    rw [Complex.sq_norm, Complex.normSq_apply]
    simp only [Complex.sub_re, Complex.one_re, Complex.sub_im,
      Complex.one_im, sub_zero]
    nlinarith
  apply (sq_le_sq₀ (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 5 / 8)).mp
  exact hsq.trans (by norm_num)

/-- Real positivity is used ONLY at s.re; its complex displacement is charged.
No target-zero assumption is needed for this quantitative right-half estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripOneThirdSeed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripOneThirdSeed.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75222568f79145d34e68d7fc218c3d17398ef691` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
