# measure_le_of_isCompact_of_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:421fbc8a-b5d7-5a2a-4287-44e2978bccb0",
  "kind": "lemma",
  "lexical_name": "measure_le_of_isCompact_of_integral",
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
  "slug": "measure-le-of-iscompact-of-integral--56cdc5546a3f5c77262171d2",
  "source": {
    "blob": "76072544280c8e16574e79284f627a921a700291",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 419,
    "line": 379,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Real/Variantd1627ca502c2ba98633f8f6b824e93035e67f83c48f588a7628acb64481ffb52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56cdc5546a3f5c77262171d2dc0e2616d3fa5654b9c58878773ca3b2a519186a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Real/Variantd1627ca502c2ba98633f8f6b824e93035e67f83c48f588a7628acb64481ffb52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:421fbc8a-b5d7-5a2a-4287-44e2978bccb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 379–419.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measure_le_of_isCompact_of_integral [ν.OuterRegular]
    [IsFiniteMeasureOnCompacts ν] [IsFiniteMeasureOnCompacts μ]
    (hμν : ∀ f : C_c(X, ℝ), ∫ x, f x ∂μ ≤ ∫ x, f x ∂ν)
    ⦃K : Set X⦄ (hK : IsCompact K) : μ K ≤ ν K := by
  refine ENNReal.le_of_forall_pos_le_add fun ε hε hν ↦ ?_
  have hνK : ν K ≠ ⊤ := hν.ne
  have hμK : μ K ≠ ⊤ := hK.measure_lt_top.ne
  obtain ⟨V, pV1, pV2, pV3⟩ : ∃ V ⊇ K, IsOpen V ∧ ν V ≤ ν K + ε :=
    exists_isOpen_le_add K ν (ne_of_gt (ENNReal.coe_lt_coe.mpr hε))
  suffices μ.real K ≤ ν.real K + ε by
    rwa [← ENNReal.toReal_le_toReal, ENNReal.toReal_add, ENNReal.coe_toReal]
    all_goals finiteness
  have VltTop : ν V < ⊤ := pV3.trans_lt <| by finiteness
  obtain ⟨f, pf1, pf2, pf3⟩ :
      ∃ f : C_c(X, ℝ), Set.EqOn (⇑f) 1 K ∧ tsupport ⇑f ⊆ V ∧ ∀ (x : X), f x ∈ Set.Icc 0 1 := by
    obtain ⟨f, hf1, hf2, hf3⟩ := exists_continuousMap_one_of_isCompact_subset_isOpen hK pV2 pV1
    exact ⟨⟨f, hasCompactSupport_def.mpr hf2⟩, hf1, hf3⟩
  have hfV (x : X) : f x ≤ V.indicator 1 x := by
    by_cases hx : x ∈ tsupport f
    · simp [(pf2 hx), (pf3 x).2]
    · simp [image_eq_zero_of_notMem_tsupport hx, Set.indicator_nonneg]
  have hfK (x : X) : K.indicator 1 x ≤ f x := by
    by_cases hx : x ∈ K
    · simp [hx, pf1 hx]
    · simp [hx, (pf3 x).1]
  calc
    μ.real K = ∫ x, K.indicator 1 x ∂μ := integral_indicator_one hK.measurableSet |>.symm
    _ ≤ ∫ x, f x ∂μ := by
      refine integral_mono ?_ f.integrable hfK
      exact (continuousOn_const.integrableOn_compact hK).integrable_indicator hK.measurableSet
    _ ≤ ∫ x, f x ∂ν := hμν f
    _ ≤ ∫ x, V.indicator 1 x ∂ν := by
      refine integral_mono f.integrable ?_ hfV
      exact IntegrableOn.integrable_indicator integrableOn_const pV2.measurableSet
    _ ≤ (ν K).toReal + ↑ε := by
      rwa [integral_indicator_one pV2.measurableSet, measureReal_def,
        ← ENNReal.coe_toReal, ← ENNReal.toReal_add, ENNReal.toReal_le_toReal]
      all_goals finiteness

/-- If two regular measures give the same integral for every function in `C_c(X, ℝ)`,
then they are equal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Real/Variantd1627ca502c2ba98633f8f6b824e93035e67f83c48f588a7628acb64481ffb52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Real/Variantd1627ca502c2ba98633f8f6b824e93035e67f83c48f588a7628acb64481ffb52.lean#L379).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76072544280c8e16574e79284f627a921a700291` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
