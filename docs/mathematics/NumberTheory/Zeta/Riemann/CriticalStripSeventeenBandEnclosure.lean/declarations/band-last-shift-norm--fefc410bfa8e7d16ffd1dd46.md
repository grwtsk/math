# band_last_shift_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2c5a9f7-8916-b82c-83e3-6575fd0307c2",
  "kind": "lemma",
  "lexical_name": "band_last_shift_norm",
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
  "slug": "band-last-shift-norm--fefc410bfa8e7d16ffd1dd46",
  "source": {
    "blob": "02dbef260f6bc08ed237b835c7522210e175ad4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 49,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandEnclosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fefc410bfa8e7d16ffd1dd46f84fc400db4782fc340eb4c3f4798899913da3b2",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandEnclosure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2c5a9f7-8916-b82c-83e3-6575fd0307c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma band_last_shift_norm {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (16 : ℝ) ≤ s.im) (ht1 : s.im ≤ 17) : ‖s+5‖ ≤ (19 : ℝ) := by
  have hr : 0 ≤ s.re+5 := by linarith
  have hr1 : s.re+5 ≤ 6 := by linarith
  have hr2 := mul_le_mul hr1 hr1 hr (by norm_num : (0 : ℝ) ≤ 6)
  have ht2 : s.im^2 ≤ (289 : ℝ) := by
    have h := mul_le_mul ht1 ht1 (by linarith : 0 ≤ s.im) (by norm_num : (0 : ℝ) ≤ 17)
    nlinarith
  apply (sq_le_sq₀ (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 19)).mp
  rw [Complex.sq_norm,Complex.normSq_apply]
  simp only [Complex.add_re,Complex.add_im,Complex.ofNat_re,Complex.ofNat_im,add_zero]
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandEnclosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandEnclosure.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02dbef260f6bc08ed237b835c7522210e175ad4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
