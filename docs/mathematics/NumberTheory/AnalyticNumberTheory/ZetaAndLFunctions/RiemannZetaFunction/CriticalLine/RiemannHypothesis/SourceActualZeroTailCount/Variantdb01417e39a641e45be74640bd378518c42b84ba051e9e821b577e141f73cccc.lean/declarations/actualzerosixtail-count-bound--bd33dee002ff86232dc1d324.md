# actualZeroSixTail_count_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d54592d1-0908-160f-498e-25fc694b4c1c",
  "kind": "theorem",
  "lexical_name": "actualZeroSixTail_count_bound",
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
  "slug": "actualzerosixtail-count-bound--bd33dee002ff86232dc1d324",
  "source": {
    "blob": "4833211007368bac28900198974c89ddd97bced7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 163,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroTailCount/Variantdb01417e39a641e45be74640bd378518c42b84ba051e9e821b577e141f73cccc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd33dee002ff86232dc1d3245b545c88dc68bb2f2e914d1df5e9ccb027a2bfba",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroTailCount/Variantdb01417e39a641e45be74640bd378518c42b84ba051e9e821b577e141f73cccc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d54592d1-0908-160f-498e-25fc694b4c1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualZeroSixTail_count_bound :
    ∃ A0 : ℝ, 1 ≤ A0 ∧ ∀ R : ℝ, 4 ≤ R →
      Summable (fun ρ : (zetaZeros zetaSeam).carrier =>
        if R ≤ |(ρ : ℂ).im| then
          ((zetaZeros zetaSeam).mult ρ : ℝ) / |(ρ : ℂ).im| ^ 6 else 0) ∧
      actualZeroSixTail R ≤ 2 * A0 * (Real.log R + 2) / R ^ 5 := by
  classical
  obtain ⟨A0, hA0, hloc0⟩ := RvM.zeta_local_zero_count
  have hloc := Tail.LocalCount.ofWindowCount (zetaZeros zetaSeam) hA0
    (fun t => by simpa only [zetaZeros_N] using hloc0 t)
  refine ⟨A0, hA0, fun R hR => ?_⟩
  have hp : 0 < R := by linarith
  let f : (zetaZeros zetaSeam).carrier → ℝ := fun ρ =>
    if R ≤ |(ρ : ℂ).im| then
      ((zetaZeros zetaSeam).mult ρ : ℝ) / |(ρ : ℂ).im| ^ 6 else 0
  have hf : ∀ ρ, 0 ≤ f ρ := by intro ρ; dsimp [f]; split_ifs <;> positivity
  have hbound (s : Finset (zetaZeros zetaSeam).carrier) :
      ∑ ρ ∈ s, f ρ ≤ 2 * A0 * (Real.log R + 2) / R ^ 5 := by
    let sp := s.filter (fun ρ : (zetaZeros zetaSeam).carrier => R ≤ (ρ : ℂ).im)
    let sn := s.filter (fun ρ : (zetaZeros zetaSeam).carrier => R ≤ -(ρ : ℂ).im)
    have hsum : ∑ ρ ∈ s, f ρ =
        (∑ ρ ∈ sp, ((zetaZeros zetaSeam).mult ρ : ℝ) / (ρ : ℂ).im ^ 6) +
        ∑ ρ ∈ sn, ((zetaZeros zetaSeam).mult ρ : ℝ) / (-(ρ : ℂ).im) ^ 6 := by
      simp only [sp, sn, sum_filter]
      rw [← sum_add_distrib]
      apply sum_congr rfl
      intro ρ _
      by_cases hpos : R ≤ (ρ : ℂ).im
      · have hneg : ¬ R ≤ -(ρ : ℂ).im := by linarith
        have habs := abs_of_pos (hp.trans_le hpos)
        simp only [f, habs, hpos, hneg, if_true, if_false, add_zero]
      · by_cases hneg : R ≤ -(ρ : ℂ).im
        · have habs := abs_of_neg (show (ρ : ℂ).im < 0 by linarith)
          simp only [f, habs, hpos, hneg, if_true, if_false, zero_add]
        · have hnot : ¬ R ≤ |(ρ : ℂ).im| := by
            exact not_le.mpr (abs_lt.mpr ⟨by linarith, by linarith⟩)
          simp only [f, hnot, hpos, hneg, if_false, zero_add]
    rw [hsum]
    have hsp := positive_six_sum_le A0 R hA0 hR hloc sp
      (fun ρ hρ => (mem_filter.mp hρ).2)
    have hsn := negative_six_sum_le A0 R hA0 hR hloc sn
      (fun ρ hρ => (mem_filter.mp hρ).2)
    exact (add_le_add hsp hsn).trans_eq (by ring)
  exact ⟨summable_of_sum_le hf hbound, Real.tsum_le_of_sum_le hf hbound⟩

end
end FormalResearch.RiemannHypothesis.SourceActualZeroTailCount
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroTailCount/Variantdb01417e39a641e45be74640bd378518c42b84ba051e9e821b577e141f73cccc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroTailCount/Variantdb01417e39a641e45be74640bd378518c42b84ba051e9e821b577e141f73cccc.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4833211007368bac28900198974c89ddd97bced7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
