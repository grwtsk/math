# actualMiddleZeroHeightHead_gap_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ddff8707-6b4c-0a69-7a11-17668d59c04a",
  "kind": "theorem",
  "lexical_name": "actualMiddleZeroHeightHead_gap_bound",
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
  "slug": "actualmiddlezeroheighthead-gap-bound--10a3167b1d1fbb9f6950efd3",
  "source": {
    "blob": "4c6da6d9168c3594b8762a83d5c64e9cef0208a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 216,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroStretchedRateNative05/Variant3f64519567cbff0afc8c2ad8d6c10d99428c7946c3a95801327f7ac19cbf24d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10a3167b1d1fbb9f6950efd3f92be835967d960ad0a72ba00af04102fc842944",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroStretchedRateNative05/Variant3f64519567cbff0afc8c2ad8d6c10d99428c7946c3a95801327f7ac19cbf24d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddff8707-6b4c-0a69-7a11-17668d59c04a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMiddleZeroHeightHead_gap_bound :
    ∃ a : ℝ, a ∈ Set.Ioc 0 (1 / 2) ∧ ∀ A R : ℝ, 1 ≤ A → 4 ≤ R →
      ‖((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) * actualMiddleZeroHeightHead A R‖ ≤
        (actualZeroTailWeightConstant * actualZeroSixTail 4) *
          Real.exp (-2 * (a / (Real.log R) ^ 9) * A) := by
  classical
  obtain ⟨a,ha,hgap⟩ := actualCarrier_below_height_gap
  have hap : 0 < a := ha.1
  obtain ⟨A0,hA0,hcount⟩ := actualZeroSixTail_count_bound
  obtain ⟨hsm,_⟩ := hcount 4 (by norm_num)
  refine ⟨a,ha,?_⟩
  intro A R hA hR
  let F := (actualZeroHeightHead_finite R).toFinset.filter
    (fun rho : (zetaZeros zetaSeam).carrier => 4 ≤ |(rho : ℂ).im|)
  let coeff : ℝ := actualZeroTailWeightConstant *
    Real.exp (-2 * (a / (Real.log R) ^ 9) * A)
  have hc : 0 ≤ coeff := by dsimp [coeff,actualZeroTailWeightConstant]; positivity
  have hpoint (rho : (zetaZeros zetaSeam).carrier) (hrho : rho ∈ F) :
      ‖((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) *
        (((zetaZeros zetaSeam).mult rho : ℂ) * actualInitialPrimeMellin A rho)‖ ≤
        coeff * (((zetaZeros zetaSeam).mult rho : ℝ) / |(rho : ℂ).im| ^ 6) := by
    have ht := (mem_filter.mp hrho).2
    have hh : |(rho : ℂ).im| < R := by
      simpa only [Set.Finite.mem_toFinset,Set.mem_ofPred_eq] using (mem_filter.mp hrho).1
    have hg := hgap R (by linarith) rho (by linarith) hh
    have hlog : 0 < Real.log R := Real.log_pos (by linarith)
    have hw := actualInitialPrimeMellin_gap_scaled_norm_le A (a / (Real.log R) ^ 9)
      rho hA (by positivity) ⟨hg.1.le,hg.2.le⟩ (by linarith)
    rw [mul_left_comm,norm_mul,Complex.norm_natCast]
    exact (mul_le_mul_of_nonneg_left hw (by positivity)).trans_eq (by dsimp [coeff]; ring)
  have hmass : (∑ rho ∈ F, ((zetaZeros zetaSeam).mult rho : ℝ) / |(rho : ℂ).im| ^ 6) ≤
      actualZeroSixTail 4 := by
    have he : (∑ rho ∈ F, ((zetaZeros zetaSeam).mult rho : ℝ) / |(rho : ℂ).im| ^ 6) =
        ∑ rho ∈ F, if 4 ≤ |(rho : ℂ).im| then
          ((zetaZeros zetaSeam).mult rho : ℝ) / |(rho : ℂ).im| ^ 6 else 0 := by
      apply sum_congr rfl
      intro rho hrho
      rw [if_pos (mem_filter.mp hrho).2]
    rw [he]
    exact Summable.sum_le_tsum _ (fun rho _ => by split_ifs <;> positivity) hsm
  change ‖((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) *
    ∑ rho ∈ F, ((zetaZeros zetaSeam).mult rho : ℂ) * actualInitialPrimeMellin A rho‖ ≤ _
  rw [mul_sum]
  calc
    _ ≤ ∑ rho ∈ F, ‖((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) *
        (((zetaZeros zetaSeam).mult rho : ℂ) * actualInitialPrimeMellin A rho)‖ :=
      norm_sum_le _ _
    _ ≤ ∑ rho ∈ F, coeff *
        (((zetaZeros zetaSeam).mult rho : ℝ) / |(rho : ℂ).im| ^ 6) := sum_le_sum hpoint
    _ = coeff * (∑ rho ∈ F,
        ((zetaZeros zetaSeam).mult rho : ℝ) / |(rho : ℂ).im| ^ 6) := by rw [mul_sum]
    _ ≤ coeff * actualZeroSixTail 4 := mul_le_mul_of_nonneg_left hmass hc
    _ = _ := by dsimp [coeff]; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroStretchedRateNative05/Variant3f64519567cbff0afc8c2ad8d6c10d99428c7946c3a95801327f7ac19cbf24d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroStretchedRateNative05/Variant3f64519567cbff0afc8c2ad8d6c10d99428c7946c3a95801327f7ac19cbf24d9.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c6da6d9168c3594b8762a83d5c64e9cef0208a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
