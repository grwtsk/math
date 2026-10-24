# IndepFun.variance_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:214a2589-ddfa-ce9c-0185-9693eedd6547",
  "kind": "theorem",
  "lexical_name": "IndepFun.variance_sum",
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
  "slug": "indepfun-variance-sum--ef4dabd2e79652f7b0fba1dc",
  "source": {
    "blob": "3d4cd5520e38b284aebe26ceba80cdad6772213d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 448,
    "line": 424,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant216c4c4d4cd97f51c19ab8101eec246b669299eb784fcafa932539514eea38f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef4dabd2e79652f7b0fba1dca88a611f3730e6c02a84a79414f3b879d959e270",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant216c4c4d4cd97f51c19ab8101eec246b669299eb784fcafa932539514eea38f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:214a2589-ddfa-ce9c-0185-9693eedd6547`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 424–448.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec theorem IndepFun.variance_sum {ι : Type*} {X : ι → Ω → ℝ} {s : Finset ι}
    (hs : ∀ i ∈ s, MemLp (X i) 2 μ)
    (h : Set.Pairwise ↑s fun i j => X i ⟂ᵢ[μ] X j) :
    variance (∑ i ∈ s, X i) μ = ∑ i ∈ s, variance (X i) μ := by
  by_cases h'' : ∀ i ∈ s, X i =ᵐ[μ] 0
  · rw [variance_congr (Y := 0), variance_zero]
    · symm
      refine Finset.sum_eq_zero fun i hi ↦ ?_
      simp [variance_congr (h'' i hi)]
    · have := fun (i : s) ↦ h'' i.1 i.2
      filter_upwards [ae_all_iff.2 this] with ω hω
      simp only [Finset.sum_apply, Pi.zero_apply]
      exact Finset.sum_eq_zero fun i hi ↦ hω ⟨i, hi⟩
  obtain ⟨j, hj1, hj2⟩ := not_forall₂.1 h''
  obtain rfl | h' := s.eq_singleton_or_nontrivial hj1
  · simp
  obtain ⟨k, hk1, hk2⟩ := h'.exists_ne j
  have := (hs j hj1).isProbabilityMeasure_of_indepFun (X j) (X k) (by simp) (by simp) hj2
    (h hj1 hk1 hk2.symm)
  rw [variance_sum' hs]
  refine Finset.sum_congr rfl (fun i hi ↦ ?_)
  rw [← covariance_self (hs i hi).aemeasurable]
  refine Finset.sum_eq_single_of_mem i hi fun j hj1 hj2 ↦ ?_
  exact (h hi hj1 hj2.symm).covariance_eq_zero (hs i hi) (hs j hj1)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant216c4c4d4cd97f51c19ab8101eec246b669299eb784fcafa932539514eea38f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant216c4c4d4cd97f51c19ab8101eec246b669299eb784fcafa932539514eea38f1.lean#L424).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d4cd5520e38b284aebe26ceba80cdad6772213d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
