# u_eq_sub_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:530e5bec-8c7c-77da-3ea7-e77a9dfb3c44",
  "kind": "lemma",
  "lexical_name": "u_eq_sub_integral",
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
  "slug": "u-eq-sub-integral--f1db6dc39f9629b8e230ca59",
  "source": {
    "blob": "96412d1ff7921d8348f589fce58fc9abd41397e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3246,
    "line": 3215,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1db6dc39f9629b8e230ca5953d984b43ecbfdce5325e2f7b48315680911b65a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:530e5bec-8c7c-77da-3ea7-e77a9dfb3c44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3215–3246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma u_eq_sub_integral {x₁ t : ℝ} (hx₁ : 14 ≤ x₁) (ht : t ∈ Set.Icc x₁ (x₁ * Real.log x₁)) :
    t / Real.log t - (Real.log t - 1) * (∫ s in x₁..t, 1 / (Real.log s) ^ 2) =
      x₁ / Real.log x₁ - ∫ s in x₁..t, (∫ u in x₁..s, 1 / (Real.log u) ^ 2) / s := by
  set I : ℝ → ℝ := fun t => ∫ s in x₁..t, 1 / (Real.log s) ^ 2;
  have h_integral : ∫ s in x₁..t, (I s) / s = ((Real.log t - 1) * I t - t / Real.log t) - ((Real.log x₁ - 1) * I x₁ - x₁ / Real.log x₁) := by
    apply intervalIntegral.integral_eq_sub_of_hasDerivAt
    · intro x hx
      have hI_deriv : HasDerivAt I (1 / (Real.log x) ^ 2) x := by
        apply_rules [ intervalIntegral.integral_hasDerivAt_right ];
        · apply_rules [ ContinuousOn.intervalIntegrable ];
          exact continuousOn_of_forall_continuousAt fun y hy => ContinuousAt.div continuousAt_const ( ContinuousAt.pow ( Real.continuousAt_log ( by cases Set.mem_uIcc.mp hy <;> linarith [ Set.mem_Icc.mp ( show x ∈ Set.Icc x₁ ( x₁ * Real.log x₁ ) from by cases Set.mem_uIcc.mp hx <;> constructor <;> linarith [ ht.1, ht.2 ] ) ] ) ) _ ) ( ne_of_gt ( sq_pos_of_pos ( Real.log_pos ( by cases Set.mem_uIcc.mp hy <;> linarith [ Set.mem_Icc.mp ( show x ∈ Set.Icc x₁ ( x₁ * Real.log x₁ ) from by cases Set.mem_uIcc.mp hx <;> constructor <;> linarith [ ht.1, ht.2 ] ) ] ) ) ) );
        · exact Measurable.stronglyMeasurable ( by exact Measurable.div measurable_const ( by exact Measurable.pow_const ( Real.measurable_log ) _ ) ) |> fun h => h.stronglyMeasurableAtFilter;
        · exact ContinuousAt.div continuousAt_const ( ContinuousAt.pow ( Real.continuousAt_log ( by cases Set.mem_uIcc.mp hx <;> linarith [ ht.1, ht.2 ] ) ) _ ) ( ne_of_gt ( sq_pos_of_pos ( Real.log_pos ( by cases Set.mem_uIcc.mp hx <;> linarith [ ht.1, ht.2 ] ) ) ) );
      convert HasDerivAt.sub ( HasDerivAt.mul ( HasDerivAt.sub ( Real.hasDerivAt_log ( show x ≠ 0 by cases Set.mem_uIcc.mp hx <;> linarith [ ht.1, ht.2 ] ) ) ( hasDerivAt_const _ _ ) ) hI_deriv ) ( HasDerivAt.div ( hasDerivAt_id x ) ( Real.hasDerivAt_log ( show x ≠ 0 by cases Set.mem_uIcc.mp hx <;> linarith [ ht.1, ht.2 ] ) ) ( ne_of_gt ( Real.log_pos ( show x > 1 by cases Set.mem_uIcc.mp hx <;> linarith [ ht.1, ht.2 ] ) ) ) ) using 1 ; ring_nf;
      by_cases h : x = 0
      · simp [h]
      simp +decide [h, sq, mul_comm]; ring;
    · apply_rules [ ContinuousOn.intervalIntegrable ];
      apply ContinuousOn.div
      · intro u hu; apply_rules [ intervalIntegral.continuousWithinAt_primitive ]
        · aesop
        · apply_rules [ ContinuousOn.intervalIntegrable ];
          simp +zetaDelta only [Set.mem_Icc, one_div, inf_le_left, inf_of_le_right, le_sup_left,
            sup_of_le_right, le_sup_iff, inf_le_right, or_self, Set.uIcc_of_le] at *;
          exact continuousOn_of_forall_continuousAt fun x hx => ContinuousAt.inv₀ ( ContinuousAt.pow ( Real.continuousAt_log ( by cases min_cases x₁ t <;> cases max_cases x₁ t <;> linarith [ hx.1, hx.2 ] ) ) _ ) ( ne_of_gt ( sq_pos_of_pos ( Real.log_pos ( by cases min_cases x₁ t <;> cases max_cases x₁ t <;> linarith [ hx.1, hx.2 ] ) ) ) );
      · exact continuousOn_id
      · intro s hs; cases Set.mem_uIcc.mp hs <;> linarith [ ht.1, ht.2 ];
  have h_I_x₁ : I x₁ = 0 := intervalIntegral.integral_same
  change t / Real.log t - (Real.log t - 1) * I t = x₁ / Real.log x₁ - ∫ s in x₁..t, (I s) / s
  rw [ h_integral, h_I_x₁ ]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean#L3215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96412d1ff7921d8348f589fce58fc9abd41397e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
