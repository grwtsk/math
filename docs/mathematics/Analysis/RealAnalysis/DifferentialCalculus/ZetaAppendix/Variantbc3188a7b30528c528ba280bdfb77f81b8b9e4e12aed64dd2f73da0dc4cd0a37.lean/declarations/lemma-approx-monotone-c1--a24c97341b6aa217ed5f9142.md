# lemma_approx_monotone_C1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fae74046-bd51-a3c4-9a60-432a125e6fce",
  "kind": "theorem",
  "lexical_name": "lemma_approx_monotone_C1",
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
  "slug": "lemma-approx-monotone-c1--a24c97341b6aa217ed5f9142",
  "source": {
    "blob": "8d4e5744caad9c4a9cac4d9b39a2102c21fd6987",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 882,
    "line": 849,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantbc3188a7b30528c528ba280bdfb77f81b8b9e4e12aed64dd2f73da0dc4cd0a37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a24c97341b6aa217ed5f91429be2401efe7ca4e2dcf225200910bb2359551432",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantbc3188a7b30528c528ba280bdfb77f81b8b9e4e12aed64dd2f73da0dc4cd0a37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fae74046-bd51-a3c4-9a60-432a125e6fce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 849–882.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lemma_approx_monotone_C1 {a b : ℝ} (hab : a < b) (g : ℝ → ℝ)
    (hg_cont : ContinuousOn g (Set.Icc a b)) (hg_mono : MonotoneOn g (Set.Icc a b)) :
    ∀ ε > 0, ∃ g' : ℝ → ℝ, ContDiffOn ℝ 1 g' (Set.Icc a b) ∧ MonotoneOn g' (Set.Icc a b) ∧
      ∀ x ∈ Set.Icc a b, |g x - g' x| < ε := by
  intro ε hε_pos
  set f := fun t : unitInterval ↦ g (a + t.val * (b - a)) with hf_def
  obtain ⟨P, hP_cont, hP_mono, hP_approx⟩ : ∃ P : ℝ → ℝ, ContDiffOn ℝ 1 P unitInterval ∧
    MonotoneOn P unitInterval ∧ ∀ t : unitInterval, |f t - P t| < ε := by
    have hf_cont : ContinuousOn f (Set.univ : Set unitInterval) :=
      hg_cont.comp (Continuous.continuousOn (by continuity)) fun x hx ↦
        ⟨by nlinarith [x.2.1, x.2.2], by nlinarith [x.2.1, x.2.2]⟩
    have hf_mono : Monotone f :=
      fun x y hxy ↦ hg_mono ⟨by nlinarith [x.2.1, x.2.2], by nlinarith [x.2.1, x.2.2]⟩ ⟨by nlinarith [y.2.1, y.2.2],
        by nlinarith [y.2.1, y.2.2]⟩ (by nlinarith [x.2.1, x.2.2, y.2.1, y.2.2, show (x : ℝ) ≤ y from hxy])
    have := @lemma_approx_monotone_C1_I
    exact this ⟨f, by simpa using hf_cont⟩ hf_mono ε hε_pos
  refine ⟨fun x ↦ P ((x - a) / (b - a)), ?_, ?_, ?_⟩
  · simp_all only [MonotoneOn, Set.mem_Icc, and_imp, gt_iff_lt, Subtype.forall]
    refine hP_cont.comp (ContDiffOn.div_const (contDiffOn_id.sub contDiffOn_const) _)
      fun x hx ↦ ⟨?_, ?_⟩ <;> nlinarith [hx.1, hx.2, mul_div_cancel₀ (x - a) (sub_ne_zero_of_ne hab.ne')]
  · simp_all only [MonotoneOn, Set.mem_Icc, and_imp, gt_iff_lt, Subtype.forall]
    exact fun x hx₁ hx₂ y hy₁ hy₂ hxy ↦ hP_mono (div_nonneg (by linarith) (by linarith))
      (div_le_one_of_le₀ (by linarith) (by linarith)) (div_nonneg (by linarith) (by linarith))
        (div_le_one_of_le₀ (by linarith) (by linarith)) (div_le_div_of_nonneg_right (by linarith) (by linarith))
  · simp_all only [MonotoneOn, Set.mem_Icc, and_imp, gt_iff_lt, Subtype.forall]
    intro x hx₁ hx₂
    convert hP_approx ((x - a) / (b - a)) (div_nonneg (by linarith) (by linarith))
      (div_le_one_of_le₀ (by linarith) (by linarith)) using 1
    congr 1
    rw [div_mul_cancel₀ _ (by linarith)]
    ring_nf

/-- Integration by parts bound for continuous monotone functions.
For continuous monotone `g` and `C¹` `F`, `‖∫ g F' - [gF]‖ ≤ sup ‖F‖ · (g(b) - g(a))`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantbc3188a7b30528c528ba280bdfb77f81b8b9e4e12aed64dd2f73da0dc4cd0a37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantbc3188a7b30528c528ba280bdfb77f81b8b9e4e12aed64dd2f73da0dc4cd0a37.lean#L849).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d4e5744caad9c4a9cac4d9b39a2102c21fd6987` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
