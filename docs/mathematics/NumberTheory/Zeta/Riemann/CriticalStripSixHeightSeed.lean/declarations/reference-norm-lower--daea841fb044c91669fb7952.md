# reference_norm_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:14e52701-9f0a-339f-8df7-56ca1bb20bd5",
  "kind": "lemma",
  "lexical_name": "reference_norm_lower",
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
  "slug": "reference-norm-lower--daea841fb044c91669fb7952",
  "source": {
    "blob": "c62cc54111a3e2b186f4a43d34da768bfdd4807a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 148,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:daea841fb044c91669fb7952aa1884b6ec208919e5012efd083c4d375e4689fe",
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

Occurrence: `result:14e52701-9f0a-339f-8df7-56ca1bb20bd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma reference_norm_lower {s : ℂ} (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) :
    (11 / 16 : ℝ) ≤ ‖reference s‖ := by
  have h2 : (5 / 2 : ℝ) ≤ ‖s + 2‖ := by
    have h := Complex.re_le_norm (s + 2)
    simp only [Complex.add_re, Complex.ofNat_re] at h
    linarith
  have h4 : (9 / 2 : ℝ) ≤ ‖s + 4‖ := by
    have h := Complex.re_le_norm (s + 4)
    simp only [Complex.add_re, Complex.ofNat_re] at h
    linarith
  have h5 : (11 / 2 : ℝ) ≤ ‖s + 5‖ := by
    have h := Complex.re_le_norm (s + 5)
    simp only [Complex.add_re, Complex.ofNat_re] at h
    linarith
  have h24 := mul_le_mul h2 h4 (by norm_num : (0 : ℝ) ≤ 9 / 2) (norm_nonneg _)
  have h245 := mul_le_mul h24 h5 (by norm_num : (0 : ℝ) ≤ 11 / 2)
    (mul_nonneg (norm_nonneg _) (norm_nonneg _))
  have hprod := mul_le_mul h245 (nine_sub_norm_lower hx1) (by norm_num : (0 : ℝ) ≤ 8)
    (by positivity : 0 ≤ ‖s + 2‖ * ‖s + 4‖ * ‖s + 5‖)
  rw [reference_norm]
  dsimp only [referenceFactors]
  nlinarith

/-- A relative error strictly below one excludes zero; the positive margin is explicit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c62cc54111a3e2b186f4a43d34da768bfdd4807a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
