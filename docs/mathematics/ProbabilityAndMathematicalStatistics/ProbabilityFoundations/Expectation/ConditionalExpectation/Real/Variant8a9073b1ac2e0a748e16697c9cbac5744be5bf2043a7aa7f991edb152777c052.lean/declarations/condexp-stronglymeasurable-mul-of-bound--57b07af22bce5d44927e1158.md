# condExp_stronglyMeasurable_mul_of_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0ea5e02-a81c-4256-7272-a083d5838e0e",
  "kind": "theorem",
  "lexical_name": "condExp_stronglyMeasurable_mul_of_bound",
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
  "slug": "condexp-stronglymeasurable-mul-of-bound--57b07af22bce5d44927e1158",
  "source": {
    "blob": "b235c9258850a66d1d5c442b2d864d98c1788c2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 271,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant8a9073b1ac2e0a748e16697c9cbac5744be5bf2043a7aa7f991edb152777c052.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57b07af22bce5d44927e115828d7a517a1ac8f6ff9012b95d276f5e39256cce8",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant8a9073b1ac2e0a748e16697c9cbac5744be5bf2043a7aa7f991edb152777c052.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0ea5e02-a81c-4256-7272-a083d5838e0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem condExp_stronglyMeasurable_mul_of_bound (hm : m ≤ m0) [IsFiniteMeasure μ] {f g : α → ℝ}
    (hf : StronglyMeasurable[m] f) (hg : Integrable g μ) (c : ℝ) (hf_bound : ∀ᵐ x ∂μ, ‖f x‖ ≤ c) :
    μ[f * g|m] =ᵐ[μ] f * μ[g|m] := by
  let fs := hf.approxBounded c
  have hfs_tendsto : ∀ᵐ x ∂μ, Tendsto (fs · x) atTop (𝓝 (f x)) :=
    hf.tendsto_approxBounded_ae hf_bound
  by_cases hμ : μ = 0
  · simp only [hμ, ae_zero]; norm_cast
  have : (ae μ).NeBot := ae_neBot.2 hμ
  have hc : 0 ≤ c := by
    rcases hf_bound.exists with ⟨_x, hx⟩
    exact (norm_nonneg _).trans hx
  have hfs_bound : ∀ n x, ‖fs n x‖ ≤ c := hf.norm_approxBounded_le hc
  have : μ[f * μ[g|m]|m] = f * μ[g|m] := by
    refine condExp_of_stronglyMeasurable hm (hf.mul stronglyMeasurable_condExp) ?_
    exact integrable_condExp.bdd_mul' (hf.mono hm).aestronglyMeasurable hf_bound
  rw [← this]
  refine tendsto_condExp_unique (fun n x => fs n x * g x) (fun n x => fs n x * (μ[g|m]) x) (f * g)
    (f * μ[g|m]) ?_ ?_ ?_ ?_ (c * ‖g ·‖) ?_ (c * ‖(μ[g|m]) ·‖) ?_ ?_ ?_ ?_
  · exact fun n => hg.bdd_mul' ((SimpleFunc.stronglyMeasurable (fs n)).mono hm).aestronglyMeasurable
      (Eventually.of_forall (hfs_bound n))
  · exact fun n => integrable_condExp.bdd_mul'
      ((SimpleFunc.stronglyMeasurable (fs n)).mono hm).aestronglyMeasurable
      (Eventually.of_forall (hfs_bound n))
  · filter_upwards [hfs_tendsto] with x hx
    exact hx.mul tendsto_const_nhds
  · filter_upwards [hfs_tendsto] with x hx
    exact hx.mul tendsto_const_nhds
  · exact hg.norm.const_mul c
  · fun_prop
  · refine fun n => Eventually.of_forall fun x => ?_
    exact (norm_mul_le _ _).trans (mul_le_mul_of_nonneg_right (hfs_bound n x) (norm_nonneg _))
  · refine fun n => Eventually.of_forall fun x => ?_
    exact (norm_mul_le _ _).trans (mul_le_mul_of_nonneg_right (hfs_bound n x) (norm_nonneg _))
  · intro n
    simp_rw [← Pi.mul_apply]
    refine (condExp_stronglyMeasurable_simpleFunc_mul hm _ hg).trans ?_
    rw [condExp_of_stronglyMeasurable hm
      ((SimpleFunc.stronglyMeasurable _).mul stronglyMeasurable_condExp) _]
    exact integrable_condExp.bdd_mul'
      ((SimpleFunc.stronglyMeasurable (fs n)).mono hm).aestronglyMeasurable
      (Eventually.of_forall (hfs_bound n))

@[deprecated (since := "2025-01-21")]
alias condexp_stronglyMeasurable_mul_of_bound := condExp_stronglyMeasurable_mul_of_bound

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant8a9073b1ac2e0a748e16697c9cbac5744be5bf2043a7aa7f991edb152777c052.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant8a9073b1ac2e0a748e16697c9cbac5744be5bf2043a7aa7f991edb152777c052.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b235c9258850a66d1d5c442b2d864d98c1788c2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
