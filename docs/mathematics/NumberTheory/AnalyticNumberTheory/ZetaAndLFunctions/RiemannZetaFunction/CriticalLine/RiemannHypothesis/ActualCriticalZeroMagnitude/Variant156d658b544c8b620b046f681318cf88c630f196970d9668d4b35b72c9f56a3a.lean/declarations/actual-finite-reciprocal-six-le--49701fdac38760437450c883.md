# actual_finite_reciprocal_six_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b20ea61-14ea-ffce-4563-bef447a474b3",
  "kind": "theorem",
  "lexical_name": "actual_finite_reciprocal_six_le",
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
  "slug": "actual-finite-reciprocal-six-le--49701fdac38760437450c883",
  "source": {
    "blob": "0da2c906c0a9386387283c7e91ff94ada87f64d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 36,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalZeroMagnitude/Variant156d658b544c8b620b046f681318cf88c630f196970d9668d4b35b72c9f56a3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49701fdac38760437450c88335cc259de2d1c5720aff455be56847b2a9b9a9ff",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalZeroMagnitude/Variant156d658b544c8b620b046f681318cf88c630f196970d9668d4b35b72c9f56a3a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b20ea61-14ea-ffce-4563-bef447a474b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_finite_reciprocal_six_le (F : Finset (zetaZeros zetaSeam).carrier) :
    (∑ ρ ∈ F, ((zetaZeros zetaSeam).mult ρ : ℝ) / |(ρ : ℂ).im| ^ 6) ≤
      actualZeroSixMass := by
  classical
  obtain ⟨A0, hA0, hc⟩ := actualZeroSixTail_count_bound
  obtain ⟨hsm, _⟩ := hc 4 (by norm_num)
  let f : (zetaZeros zetaSeam).carrier → ℝ := fun ρ =>
    ((zetaZeros zetaSeam).mult ρ : ℝ) / |(ρ : ℂ).im| ^ 6
  have hf (ρ : (zetaZeros zetaSeam).carrier) : 0 ≤ f ρ := by dsimp [f]; positivity
  have hlo : (∑ ρ ∈ F.filter (fun ρ : (zetaZeros zetaSeam).carrier => |(ρ : ℂ).im| < 4), f ρ) ≤
      ∑ ρ ∈ (actualZeroHeightHead_finite 4).toFinset, f ρ := by
    apply sum_le_sum_of_subset_of_nonneg
    · intro ρ hρ
      simpa only [Set.Finite.mem_toFinset, Set.mem_ofPred_eq] using (mem_filter.mp hρ).2
    · intro ρ _ _
      exact hf ρ
  have hhi : (∑ ρ ∈ F.filter (fun ρ : (zetaZeros zetaSeam).carrier => ¬ |(ρ : ℂ).im| < 4), f ρ) ≤
      actualZeroSixTail 4 := by
    have he : (∑ ρ ∈ F.filter (fun ρ : (zetaZeros zetaSeam).carrier => ¬ |(ρ : ℂ).im| < 4), f ρ) =
        ∑ ρ ∈ F.filter (fun ρ : (zetaZeros zetaSeam).carrier => ¬ |(ρ : ℂ).im| < 4),
          if 4 ≤ |(ρ : ℂ).im| then f ρ else 0 := by
      apply sum_congr rfl
      intro ρ hρ
      rw [if_pos (le_of_not_gt (mem_filter.mp hρ).2)]
    rw [he]
    exact Summable.sum_le_tsum _ (fun ρ _ => by split_ifs <;> positivity) hsm
  have he := sum_filter_add_sum_filter_not F (fun ρ : (zetaZeros zetaSeam).carrier => |(ρ : ℂ).im| < 4) f
  change (∑ ρ ∈ F, f ρ) ≤ _
  rw [← he]
  exact add_le_add hlo hhi

/-- One fixed actual radius and constant bound every critical head at every real height. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalZeroMagnitude/Variant156d658b544c8b620b046f681318cf88c630f196970d9668d4b35b72c9f56a3a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalZeroMagnitude/Variant156d658b544c8b620b046f681318cf88c630f196970d9668d4b35b72c9f56a3a.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0da2c906c0a9386387283c7e91ff94ada87f64d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
