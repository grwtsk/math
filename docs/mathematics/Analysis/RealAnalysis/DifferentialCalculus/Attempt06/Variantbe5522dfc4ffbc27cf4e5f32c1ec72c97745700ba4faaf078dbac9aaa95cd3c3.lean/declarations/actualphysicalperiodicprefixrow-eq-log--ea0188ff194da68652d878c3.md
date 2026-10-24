# actualPhysicalPeriodicPrefixRow_eq_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a3069684-3d4f-d8c2-bdc9-d07dabc3f50b",
  "kind": "theorem",
  "lexical_name": "actualPhysicalPeriodicPrefixRow_eq_log",
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
  "slug": "actualphysicalperiodicprefixrow-eq-log--ea0188ff194da68652d878c3",
  "source": {
    "blob": "c1aaae606503f84f5c9583f0aff91e8b95366d89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 178,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variantbe5522dfc4ffbc27cf4e5f32c1ec72c97745700ba4faaf078dbac9aaa95cd3c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea0188ff194da68652d878c3a9e546de4e49777554ff167a66586957502056c6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variantbe5522dfc4ffbc27cf4e5f32c1ec72c97745700ba4faaf078dbac9aaa95cd3c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3069684-3d4f-d8c2-bdc9-d07dabc3f50b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPhysicalPeriodicPrefixRow_eq_log {A t l b : ℝ}
    (hl : 0 < l) (hlb : l ≤ b) :
    actualPhysicalPeriodicPrefixRow A t l b =
      ∫ s in Real.log l..Real.log b,
        (actualLogColumnPrefix A s - actualCenteredPrefixPeriodMean (vaughanCutoff A)) *
          actualTwistedTimeDensity A t s := by
  let g : ℝ → ℝ := fun s =>
    (actualLogColumnPrefix A s - actualCenteredPrefixPeriodMean (vaughanCutoff A)) *
      actualTwistedTimeDensity A t s
  have hp (x : ℝ) (hx : x ∈ uIcc l b) : 0 < x := by
    rw [uIcc_of_le hlb] at hx
    exact hl.trans_le hx.1
  have hlog : ContinuousOn Real.log (uIcc l b) :=
    Real.continuousOn_log.mono (fun x hx => (hp x hx).ne')
  have hd (x : ℝ) (hx : x ∈ Ioo (min l b) (max l b)) :
      HasDerivAt Real.log x⁻¹ x := by
    rw [min_eq_left hlb, max_eq_right hlb] at hx
    exact Real.hasDerivAt_log (hl.trans hx.1).ne'
  have hn (x : ℝ) (hx : x ∈ Ioo (min l b) (max l b)) : 0 ≤ x⁻¹ := by
    rw [min_eq_left hlb, max_eq_right hlb] at hx
    exact (inv_pos.mpr (hl.trans hx.1)).le
  have he := intervalIntegral.integral_comp_mul_deriv_of_deriv_nonneg (g := g) hlog hd hn
  have hh : (∫ x in l..b, (g ∘ Real.log) x * x⁻¹) =
      actualPhysicalPeriodicPrefixRow A t l b := by
    unfold actualPhysicalPeriodicPrefixRow
    apply intervalIntegral.integral_congr
    intro x hx
    dsimp only [Function.comp_apply, g]
    unfold actualLogColumnPrefix actualPeriodicPhysicalCellProfile
    rw [Real.exp_log (hp x hx)]
    ring
  rw [hh] at he
  exact he

end
end FormalResearch.RiemannHypothesis.SourceActualFarPeriodicBudget
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variantbe5522dfc4ffbc27cf4e5f32c1ec72c97745700ba4faaf078dbac9aaa95cd3c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variantbe5522dfc4ffbc27cf4e5f32c1ec72c97745700ba4faaf078dbac9aaa95cd3c3.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1aaae606503f84f5c9583f0aff91e8b95366d89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
