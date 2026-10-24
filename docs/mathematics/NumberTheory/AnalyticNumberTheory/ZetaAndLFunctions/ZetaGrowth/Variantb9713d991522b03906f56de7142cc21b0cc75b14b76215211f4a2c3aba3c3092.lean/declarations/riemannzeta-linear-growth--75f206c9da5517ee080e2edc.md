# riemannZeta_linear_growth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:abdb80a6-3de6-6ff0-eaff-89b338b061c9",
  "kind": "theorem",
  "lexical_name": "riemannZeta_linear_growth",
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
  "slug": "riemannzeta-linear-growth--75f206c9da5517ee080e2edc",
  "source": {
    "blob": "5f5b1040a01ad9dbbd3a4919942e5830fbedf6b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 86,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variantb9713d991522b03906f56de7142cc21b0cc75b14b76215211f4a2c3aba3c3092.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75f206c9da5517ee080e2edcc78ed0547247cd137b44464aefd4bca90ce8de3e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variantb9713d991522b03906f56de7142cc21b0cc75b14b76215211f4a2c3aba3c3092.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abdb80a6-3de6-6ff0-eaff-89b338b061c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem riemannZeta_linear_growth {δ : ℝ} (hδ : 0 < δ) {s : ℂ} (hσ : δ ≤ s.re)
    (ht : 1 ≤ |s.im|) : ‖riemannZeta s‖ ≤ (5 / 2 + δ⁻¹) * |s.im| := by
  have hσpos : 0 < s.re := lt_of_lt_of_le hδ hσ
  have hs1 : s ≠ 1 := by
    rintro rfl
    norm_num at ht
  have h := norm_riemannZeta_le_of_re_pos hσpos hs1
  have him : |s.im| ≤ ‖1 - s‖ := by
    simpa using Complex.abs_im_le_norm (1 - s)
  have h1 : 1 / ‖1 - s‖ ≤ 1 := by
    rw [div_le_one (by linarith)]
    linarith
  have h2 : ‖s‖ / s.re ≤ 1 + δ⁻¹ * |s.im| := by
    have hn : ‖s‖ ≤ |s.re| + |s.im| := Complex.norm_le_abs_re_add_abs_im s
    rw [abs_of_pos hσpos] at hn
    calc ‖s‖ / s.re ≤ (s.re + |s.im|) / s.re := by gcongr
      _ = 1 + |s.im| / s.re := by field_simp
      _ ≤ 1 + |s.im| / δ := by gcongr
      _ = 1 + δ⁻¹ * |s.im| := by rw [div_eq_inv_mul]
  have h3 : (5 / 2 : ℝ) ≤ 5 / 2 * |s.im| := by nlinarith
  nlinarith [h, h1, h2, h3]

/-- ∃-constant form: for every δ > 0 there is C > 0 with
‖ζ(s)‖ ≤ C·|Im s| whenever Re s ≥ δ and |Im s| ≥ 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variantb9713d991522b03906f56de7142cc21b0cc75b14b76215211f4a2c3aba3c3092.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variantb9713d991522b03906f56de7142cc21b0cc75b14b76215211f4a2c3aba3c3092.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f5b1040a01ad9dbbd3a4919942e5830fbedf6b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
