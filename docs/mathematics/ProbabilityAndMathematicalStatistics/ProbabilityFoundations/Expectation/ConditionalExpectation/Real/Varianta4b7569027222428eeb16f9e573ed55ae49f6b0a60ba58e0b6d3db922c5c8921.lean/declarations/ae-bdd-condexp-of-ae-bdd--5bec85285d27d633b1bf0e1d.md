# ae_bdd_condExp_of_ae_bdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59c038a2-363f-f500-61d7-9e18d911d94a",
  "kind": "theorem",
  "lexical_name": "ae_bdd_condExp_of_ae_bdd",
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
  "slug": "ae-bdd-condexp-of-ae-bdd--5bec85285d27d633b1bf0e1d",
  "source": {
    "blob": "2faccd3760ea9e89ba12318c38af1e476d192eff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 166,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Varianta4b7569027222428eeb16f9e573ed55ae49f6b0a60ba58e0b6d3db922c5c8921.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bec85285d27d633b1bf0e1d8bf38e73d329a08a50a45881f4f599a98327f7c8",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Varianta4b7569027222428eeb16f9e573ed55ae49f6b0a60ba58e0b6d3db922c5c8921.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59c038a2-363f-f500-61d7-9e18d911d94a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_bdd_condExp_of_ae_bdd {R : ℝ≥0} {f : α → ℝ} (hbdd : ∀ᵐ x ∂μ, |f x| ≤ R) :
    ∀ᵐ x ∂μ, |(μ[f | m]) x| ≤ R := by
  by_cases hnm : m ≤ m0
  swap
  · simp_rw [condExp_of_not_le hnm, Pi.zero_apply, abs_zero]
    exact Eventually.of_forall fun _ => R.coe_nonneg
  by_cases hfint : Integrable f μ
  swap
  · simp_rw [condExp_of_not_integrable hfint]
    filter_upwards [hbdd] with x hx
    rw [Pi.zero_apply, abs_zero]
    exact (abs_nonneg _).trans hx
  by_contra h
  change μ _ ≠ 0 at h
  simp only [← pos_iff_ne_zero, Set.compl_def, Set.mem_ofPred_eq, not_le] at h
  suffices μ.real {x | ↑R < |(μ[f|m]) x|} * ↑R < μ.real {x | ↑R < |(μ[f|m]) x|} * ↑R by
    exact this.ne rfl
  refine lt_of_lt_of_le (setIntegral_gt_gt R.coe_nonneg ?_ h.ne') ?_
  · exact integrable_condExp.abs.integrableOn
  refine (setIntegral_abs_condExp_le ?_ _).trans ?_
  · simp_rw [← Real.norm_eq_abs]
    exact @measurableSet_lt _ _ _ _ _ m _ _ _ _ _ measurable_const
      stronglyMeasurable_condExp.norm.measurable
  simp only [← smul_eq_mul, ← setIntegral_const]
  refine setIntegral_mono_ae hfint.abs.integrableOn ?_ hbdd
  refine ⟨aestronglyMeasurable_const, lt_of_le_of_lt ?_
    (integrable_condExp.integrableOn : IntegrableOn (μ[f|m]) {x | ↑R < |(μ[f|m]) x|} μ).2⟩
  refine setLIntegral_mono
    (stronglyMeasurable_condExp.mono hnm).measurable.nnnorm.coe_nnreal_ennreal fun x hx => ?_
  rw [enorm_eq_nnnorm, enorm_eq_nnnorm, coe_le_coe, Real.nnnorm_of_nonneg R.coe_nonneg]
  exact Subtype.mk_le_mk.2 (le_of_lt hx)

end HasSolidNorm

section NormedSpace

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Varianta4b7569027222428eeb16f9e573ed55ae49f6b0a60ba58e0b6d3db922c5c8921.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Varianta4b7569027222428eeb16f9e573ed55ae49f6b0a60ba58e0b6d3db922c5c8921.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2faccd3760ea9e89ba12318c38af1e476d192eff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
