# actualDampedXiFinitePrimitive_half_pnt_majorant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9bd04482-f8cb-8043-5bff-b2f083e99d00",
  "kind": "theorem",
  "lexical_name": "actualDampedXiFinitePrimitive_half_pnt_majorant",
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
  "slug": "actualdampedxifiniteprimitive-half-pnt-majorant--867d824b9855034648cd1dde",
  "source": {
    "blob": "ebba0679768ea565a95e7f0aa144ad5415face9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 39,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceActualCriticalHalfPntConsumer/Variant8aa5fcb431f4c9033e30fc02b93cb8ef09bfa4c92e123e42513e61e80499113a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:867d824b9855034648cd1dde218f34120f39373c3385f70fbbc535c2cfac557b",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SourceActualCriticalHalfPntConsumer/Variant8aa5fcb431f4c9033e30fc02b93cb8ef09bfa4c92e123e42513e61e80499113a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9bd04482-f8cb-8043-5bff-b2f083e99d00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualDampedXiFinitePrimitive_half_pnt_majorant :
    ∃ c > 0, ∃ C > 0, ∃ T : ℝ, Real.log 7 ≤ T ∧ ∀ t ≥ T,
      |(1 / 2 : ℝ) * actualDampedXiFinitePrimitive t - actualXiErrorConvolutionSevenValue -
        actualMangoldtErrorConvolution (1 / 2) t -
          actualXiErrorConvolutionHalfHead * Real.exp (-t / 2)| ≤
        C * Real.exp (-(c / 2) * t ^ ((1 : ℝ) / 10)) *
          (∫ u in Ioi (0 : ℝ), Real.exp (-(c / 2) * u ^ ((1 : ℝ) / 10))) +
            |2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)| * Real.exp (-t) := by
  obtain ⟨c, hc, hp⟩ := actualRelativePsiTimeError_isBigO
  obtain ⟨C, hC, hbound⟩ := hp.exists_pos
  obtain ⟨T, hT⟩ := eventually_atTop.1 hbound.bound
  refine ⟨c, hc, C, hC, max (Real.log 7) T, le_max_left _ _, ?_⟩
  intro t ht
  have ht7 : Real.log 7 ≤ t := (le_max_left _ _).trans ht
  have ht0 : 0 ≤ t := (Real.log_nonneg (by norm_num)).trans ht7
  have hdelta : ∀ u ≥ t, |actualRelativePsiTimeError u| ≤
      C * Real.exp (-c * u ^ ((1 : ℝ) / 10)) := by
    intro u hu
    simpa only [Real.norm_eq_abs, Real.abs_exp] using
      hT u ((le_max_right (Real.log 7) T).trans (ht.trans hu))
  have htail := actualRelativePsiTimeError_tail_abs_le hc hC.le ht0 hdelta
  have he := actualDampedXiFinitePrimitive_eq_half_convolution_pnt_tail ht7
  have hrecover :
      (1 / 2 : ℝ) * actualDampedXiFinitePrimitive t - actualXiErrorConvolutionSevenValue -
        actualMangoldtErrorConvolution (1 / 2) t -
          actualXiErrorConvolutionHalfHead * Real.exp (-t / 2) =
      (∫ u in Ioi t, actualRelativePsiTimeError u) +
        2 * (Real.eulerMascheroniConstant + 1 - Real.log 2) * Real.exp (-t) := by
    linarith only [he]
  rw [hrecover]
  calc
    _ ≤ |∫ u in Ioi t, actualRelativePsiTimeError u| +
        |2 * (Real.eulerMascheroniConstant + 1 - Real.log 2) * Real.exp (-t)| :=
      abs_add_le _ _
    _ = |∫ u in Ioi t, actualRelativePsiTimeError u| +
        |2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)| * Real.exp (-t) := by
      rw [abs_mul, Real.abs_exp]
    _ ≤ _ := add_le_add htail le_rfl

end RH16ActualCriticalHalfPntConsumer
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SourceActualCriticalHalfPntConsumer/Variant8aa5fcb431f4c9033e30fc02b93cb8ef09bfa4c92e123e42513e61e80499113a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SourceActualCriticalHalfPntConsumer/Variant8aa5fcb431f4c9033e30fc02b93cb8ef09bfa4c92e123e42513e61e80499113a.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebba0679768ea565a95e7f0aa144ad5415face9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
