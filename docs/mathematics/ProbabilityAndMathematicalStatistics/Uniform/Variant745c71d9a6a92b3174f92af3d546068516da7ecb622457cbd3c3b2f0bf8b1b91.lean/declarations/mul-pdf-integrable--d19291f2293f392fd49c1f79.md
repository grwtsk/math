# mul_pdf_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2a0b2c81c73c3505deaed12d98cfbf89811d55b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 141,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/745c71d9a6a92b3174f92af3d546068516da7ecb622457cbd3c3b2f0bf8b1b91.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a909b48c-f7bf-3fe1-5653-41d44368aa24",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f02cdc38-8d32-a0bd-554f-fe84009170f1",
  "kind": "theorem",
  "lexical_name": "mul_pdf_integrable",
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
  "slug": "mul-pdf-integrable--d19291f2293f392fd49c1f79",
  "source": {
    "blob": "2a0b2c81c73c3505deaed12d98cfbf89811d55b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 141,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/Uniform/Variant745c71d9a6a92b3174f92af3d546068516da7ecb622457cbd3c3b2f0bf8b1b91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d19291f2293f392fd49c1f79924b24752e732d2d45c6abb22d232f79b347e7d0",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/Uniform/Variant745c71d9a6a92b3174f92af3d546068516da7ecb622457cbd3c3b2f0bf8b1b91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f02cdc38-8d32-a0bd-554f-fe84009170f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_pdf_integrable (hcs : IsCompact s) (huX : IsUniform X s P) :
    Integrable fun x : ℝ => x * (pdf X P volume x).toReal := by
  by_cases hnt : volume s = 0 ∨ volume s = ∞
  · have I : Integrable (fun x ↦ x * ENNReal.toReal (0)) := by simp
    apply I.congr
    filter_upwards [pdf_eq_zero_of_measure_eq_zero_or_top huX hnt] with x hx
    simp [hx]
  simp only [not_or] at hnt
  have : IsProbabilityMeasure P := isProbabilityMeasure hnt.1 hnt.2 huX
  constructor
  · exact aestronglyMeasurable_id.mul
      (measurable_pdf X P).aemeasurable.ennreal_toReal.aestronglyMeasurable
  refine hasFiniteIntegral_mul (pdf_eq hcs.measurableSet huX) ?_
  set ind := (volume s)⁻¹ • (1 : ℝ → ℝ≥0∞)
  have : ∀ x, ‖x‖ₑ * s.indicator ind x = s.indicator (fun x => ‖x‖ₑ * ind x) x := fun x =>
    (s.indicator_mul_right (fun x => ↑‖x‖₊) ind).symm
  simp only [ind, this, lintegral_indicator hcs.measurableSet, mul_one, smul_eq_mul,
    Pi.one_apply, Pi.smul_apply]
  rw [lintegral_mul_const _ measurable_enorm]
  exact ENNReal.mul_ne_top (setLIntegral_lt_top_of_isCompact hnt.2 hcs continuous_nnnorm).ne
    (ENNReal.inv_lt_top.2 (pos_iff_ne_zero.mpr hnt.1)).ne

/-- A real uniform random variable `X` with support `s` has expectation
`(λ s)⁻¹ * ∫ x in s, x ∂λ` where `λ` is the Lebesgue measure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/Uniform/Variant745c71d9a6a92b3174f92af3d546068516da7ecb622457cbd3c3b2f0bf8b1b91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/Uniform/Variant745c71d9a6a92b3174f92af3d546068516da7ecb622457cbd3c3b2f0bf8b1b91.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a0b2c81c73c3505deaed12d98cfbf89811d55b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
