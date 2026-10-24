# evariance_def'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4634dff20022dc3647faa5c663f097a747d0e26d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 244,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/db4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7d9681a5-8a9c-00aa-0dba-967ef592a384",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:84b89230-6885-b060-0498-1b44e2c43582",
  "kind": "theorem",
  "lexical_name": "evariance_def'",
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
  "slug": "evariance-def--a247c16e4c06b384191d65fc",
  "source": {
    "blob": "4634dff20022dc3647faa5c663f097a747d0e26d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 244,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a247c16e4c06b384191d65fce6de08103dcb1571dcb745aa0e4ff334d6add031",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84b89230-6885-b060-0498-1b44e2c43582`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evariance_def' [@IsProbabilityMeasure Ω _ ℙ] {X : Ω → ℝ} (hX : AEStronglyMeasurable X ℙ) :
    eVar[X] = (∫⁻ ω, ‖X ω‖₊ ^ 2) - ENNReal.ofReal (𝔼[X] ^ 2) := by
  by_cases hℒ : Memℒp X 2
  · rw [← hℒ.ofReal_variance_eq, variance_def' hℒ, ENNReal.ofReal_sub _ (sq_nonneg _)]
    congr
    rw [lintegral_coe_eq_integral]
    · congr 2 with ω
      simp only [Pi.pow_apply, NNReal.coe_pow, coe_nnnorm, Real.norm_eq_abs, Even.pow_abs even_two]
    · exact hℒ.abs.integrable_sq
  · symm
    rw [evariance_eq_top hX hℒ, ENNReal.sub_eq_top_iff]
    refine' ⟨_, ENNReal.ofReal_ne_top⟩
    rw [Memℒp, not_and] at hℒ
    specialize hℒ hX
    simp only [snorm_eq_lintegral_rpow_nnnorm two_ne_zero ENNReal.two_ne_top, not_lt, top_le_iff,
      coe_two, one_div, ENNReal.rpow_eq_top_iff, inv_lt_zero, inv_pos, and_true_iff,
      or_iff_not_imp_left, not_and_or, zero_lt_two] at hℒ
    exact_mod_cast hℒ fun _ => zero_le_two
#align probability_theory.evariance_def' ProbabilityTheory.evariance_def'

/-- *Chebyshev's inequality* for `ℝ≥0∞`-valued variance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4634dff20022dc3647faa5c663f097a747d0e26d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
