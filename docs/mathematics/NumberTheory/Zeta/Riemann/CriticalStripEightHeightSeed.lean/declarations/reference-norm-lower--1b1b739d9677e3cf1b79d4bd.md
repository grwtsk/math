# reference_norm_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67cc2f7b-07ba-e281-8dd6-29908c4e8500",
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
  "slug": "reference-norm-lower--1b1b739d9677e3cf1b79d4bd",
  "source": {
    "blob": "3472d46896fd15416d4a930929c933cbb85997e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 54,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripEightHeightSeed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b1b739d9677e3cf1b79d4bd378853bc55c23325475b5e6b62626a6cb696b801",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripEightHeightSeed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67cc2f7b-07ba-e281-8dd6-29908c4e8500`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma reference_norm_lower {s : ℂ} (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) :
    (65 / 112 : ℝ) ≤ ‖reference s‖ := by
  have h2 : (5 / 2 : ℝ) ≤ ‖s + 2‖ := by
    have h := Complex.re_le_norm (s + 2)
    simp only [Complex.add_re, Complex.ofNat_re] at h
    linarith
  have h4 : (9 / 2 : ℝ) ≤ ‖s + 4‖ := by
    have h := Complex.re_le_norm (s + 4)
    simp only [Complex.add_re, Complex.ofNat_re] at h
    linarith
  have h6 : (13 / 2 : ℝ) ≤ ‖s + 6‖ := by
    have h := Complex.re_le_norm (s + 6)
    simp only [Complex.add_re, Complex.ofNat_re] at h
    linarith
  have h7 : (15 / 2 : ℝ) ≤ ‖s + 7‖ := by
    have h := Complex.re_le_norm (s + 7)
    simp only [Complex.add_re, Complex.ofNat_re] at h
    linarith
  have hp2 := mul_le_mul h2 h4 (by norm_num : (0 : ℝ) ≤ 9 / 2) (norm_nonneg _)
  have hp3 := mul_le_mul hp2 h6 (by norm_num : (0 : ℝ) ≤ 13 / 2) (by positivity)
  have hp4 := mul_le_mul hp3 h7 (by norm_num : (0 : ℝ) ≤ 15 / 2) (by positivity)
  have hp5 := mul_le_mul hp4 (quadraticFactor_norm_lower hx1)
    (by norm_num : (0 : ℝ) ≤ 32) (by positivity)
  rw [reference_norm]
  unfold referenceFactors
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripEightHeightSeed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripEightHeightSeed.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3472d46896fd15416d4a930929c933cbb85997e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
