# literal_badly_approximable_prefix_deficit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9cd2fd1c-71a1-3f62-022c-bda0e754a7c7",
  "kind": "theorem",
  "lexical_name": "literal_badly_approximable_prefix_deficit",
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
  "slug": "literal-badly-approximable-prefix-deficit--5eaf581b226151b8db221714",
  "source": {
    "blob": "aeaac330f4c3782ca8d01090ef12d05062a149c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 47,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalTwoModeDeficit/Variant90c546bee3ca2f0cb4b82f1003a913ce5da8e561cddf58f45c6a250118169226.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5eaf581b226151b8db221714b32a0a7863dade145c78353dc7984605f6a2903b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalTwoModeDeficit/Variant90c546bee3ca2f0cb4b82f1003a913ce5da8e561cddf58f45c6a250118169226.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9cd2fd1c-71a1-3f62-022c-bda0e754a7c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_badly_approximable_prefix_deficit {α t₀ : ℝ}
    (hα : BadlyApproximable α) (ht₀ : 0 < t₀) :
    ∃ k : ℝ, 0 < k ∧ ∀ T : ℝ, 1 ≤ T →
      ∀ t : ℝ, t ∈ Icc t₀ T → k/T^2 ≤ 2-twoMode α t := by
  obtain ⟨c, hc, hbad⟩ := hα
  have hi : Irrational α := badly_approximable_is_irrational ⟨c,hc,hbad⟩
  obtain ⟨δ,hδ,hd⟩ := literal_compact_prefix_has_positive_deficit hi ht₀
    (le_max_left t₀ (2*Real.pi))
  let k : ℝ := min (4*c^2/(α^2+1)) δ
  have hk : 0 < k := lt_min (by positivity) hδ
  refine ⟨k,hk,?_⟩
  intro T hT t ht
  by_cases hm : nearestPeriod t = 0
  · have hr := literal_period_residual_abs_le_pi t
    have he : periodResidual t = t := by simp [periodResidual,hm]
    rw [he,abs_of_pos (ht₀.trans_le ht.1)] at hr
    have htU : t ∈ Icc t₀ (max t₀ (2*Real.pi)) :=
      ⟨ht.1, hr.trans (by linarith [le_max_right t₀ (2*Real.pi),Real.pi_pos])⟩
    have hd' := hd t htU
    have hkδ : k ≤ δ := min_le_right _ _
    have hdiv : k/T^2 ≤ k := div_le_self hk.le (one_le_pow₀ hT)
    linarith
  · have hl := literal_nonzero_period_deficit_lower hc hbad
      (ht₀.trans_le ht.1).le ht.2 hT hm
    have hcomp : k/T^2 ≤ (4*c^2/(α^2+1))/T^2 :=
      div_le_div_of_nonneg_right (min_le_left _ _) (sq_nonneg T)
    exact hcomp.trans hl

end
end GRWTSK.RiemannHypothesis.Conversation.CriticalTwoModeDeficit
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalTwoModeDeficit/Variant90c546bee3ca2f0cb4b82f1003a913ce5da8e561cddf58f45c6a250118169226.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalTwoModeDeficit/Variant90c546bee3ca2f0cb4b82f1003a913ce5da8e561cddf58f45c6a250118169226.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aeaac330f4c3782ca8d01090ef12d05062a149c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
