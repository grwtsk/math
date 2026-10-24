# actualCenteredMangoldtLogError_isBigO

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1c923f3-fdb9-d1b7-25d2-7fd79a963c83",
  "kind": "theorem",
  "lexical_name": "actualCenteredMangoldtLogError_isBigO",
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
  "slug": "actualcenteredmangoldtlogerror-isbigo--2391a8881af177d739e36c4e",
  "source": {
    "blob": "9580b6bf2c0233862571810fad613bd4a8f9dacc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 98,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMertensPntRate/Variant0f1acc4bcc6968ea44e1a61214a2e70068d278fa8e35169f109f8a2309f3c76b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2391a8881af177d739e36c4e346256b44ad215334e8762c192799f722f5f29b0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualMertensPntRate/Variant0f1acc4bcc6968ea44e1a61214a2e70068d278fa8e35169f109f8a2309f3c76b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1c923f3-fdb9-d1b7-25d2-7fd79a963c83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCenteredMangoldtLogError_isBigO :
    ∃ c > 0, actualCenteredMangoldtLogError =O[atTop]
      fun t : ℝ => Real.exp (-c * t ^ ((1 : ℝ) / 10)) := by
  obtain ⟨c, hc, hp⟩ := actualRelativePsiTimeError_isBigO
  obtain ⟨C, hC, hbound⟩ := hp.exists_pos
  obtain ⟨T, hT⟩ := eventually_atTop.1 hbound.bound
  let B : ℝ := ∫ r in Ioi 0, Real.exp (-(c / 2) * r ^ ((1 : ℝ) / 10))
  refine ⟨c / 2, half_pos hc, isBigO_iff.mpr ⟨C * (1 + B), ?_⟩⟩
  filter_upwards [eventually_ge_atTop (max 0 T)] with t ht
  have ht0 : 0 ≤ t := (le_max_left 0 T).trans ht
  have hdt : ∀ r ≥ t, |actualRelativePsiTimeError r| ≤
      C * Real.exp (-c * r ^ ((1 : ℝ) / 10)) := by
    intro r hr
    simpa only [Real.norm_eq_abs, Real.abs_exp] using
      hT r ((le_max_right 0 T).trans (ht.trans hr))
  have htail := actualRelativePsiTimeError_tail_abs_le hc hC.le ht0 hdt
  have hex : Real.exp (-c * t ^ ((1 : ℝ) / 10)) ≤
      Real.exp (-(c / 2) * t ^ ((1 : ℝ) / 10)) := by
    apply Real.exp_le_exp.mpr
    have hz := Real.rpow_nonneg ht0 ((1 : ℝ) / 10)
    nlinarith
  rw [Real.norm_eq_abs, Real.norm_eq_abs, Real.abs_exp,
    actualCenteredMangoldtLogError_eq_delta_sub_tail ht0]
  calc
    _ ≤ |actualRelativePsiTimeError t| +
        |∫ r in Ioi t, actualRelativePsiTimeError r| := abs_sub _ _
    _ ≤ C * Real.exp (-c * t ^ ((1 : ℝ) / 10)) +
        C * Real.exp (-(c / 2) * t ^ ((1 : ℝ) / 10)) * B :=
      add_le_add (hdt t le_rfl) htail
    _ ≤ C * Real.exp (-(c / 2) * t ^ ((1 : ℝ) / 10)) +
        C * Real.exp (-(c / 2) * t ^ ((1 : ℝ) / 10)) * B :=
      add_le_add_right (mul_le_mul_of_nonneg_left hex hC.le) _
    _ = _ := by ring

end
end FormalResearch.RiemannHypothesis.SourceActualMertensPntRate
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualMertensPntRate/Variant0f1acc4bcc6968ea44e1a61214a2e70068d278fa8e35169f109f8a2309f3c76b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMertensPntRate/Variant0f1acc4bcc6968ea44e1a61214a2e70068d278fa8e35169f109f8a2309f3c76b.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9580b6bf2c0233862571810fad613bd4a8f9dacc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
