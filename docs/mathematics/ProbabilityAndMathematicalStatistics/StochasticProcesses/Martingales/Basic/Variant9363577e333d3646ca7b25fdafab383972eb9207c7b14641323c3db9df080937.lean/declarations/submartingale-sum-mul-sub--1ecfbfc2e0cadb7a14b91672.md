# Submartingale.sum_mul_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "72478573d588bd76d79803a61ee66ca1d44d3f48",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 481,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/9363577e333d3646ca7b25fdafab383972eb9207c7b14641323c3db9df080937.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8f7775f5-0d52-021e-ce54-dd49d51c323a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:de2ae094-66b7-408a-9459-1ab8750b990f",
  "kind": "theorem",
  "lexical_name": "Submartingale.sum_mul_sub",
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
  "slug": "submartingale-sum-mul-sub--1ecfbfc2e0cadb7a14b91672",
  "source": {
    "blob": "72478573d588bd76d79803a61ee66ca1d44d3f48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 508,
    "line": 481,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Basic/Variant9363577e333d3646ca7b25fdafab383972eb9207c7b14641323c3db9df080937.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ecfbfc2e0cadb7a14b91672477b2dcd9c7abe0a571fea457166da3e2c0b795e",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Basic/Variant9363577e333d3646ca7b25fdafab383972eb9207c7b14641323c3db9df080937.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de2ae094-66b7-408a-9459-1ab8750b990f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 481–508.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Submartingale.sum_mul_sub [IsFiniteMeasure μ] {R : ℝ} {ξ f : ℕ → Ω → ℝ}
    (hf : Submartingale f 𝒢 μ) (hξ : Adapted 𝒢 ξ) (hbdd : ∀ n ω, ξ n ω ≤ R)
    (hnonneg : ∀ n ω, 0 ≤ ξ n ω) :
    Submartingale (fun n => ∑ k ∈ Finset.range n, ξ k * (f (k + 1) - f k)) 𝒢 μ := by
  have hξbdd : ∀ i, ∃ C, ∀ ω, |ξ i ω| ≤ C := fun i =>
    ⟨R, fun ω => (abs_of_nonneg (hnonneg i ω)).trans_le (hbdd i ω)⟩
  have hint : ∀ m, Integrable (∑ k ∈ Finset.range m, ξ k * (f (k + 1) - f k)) μ := fun m =>
    integrable_finset_sum' _ fun i _ => Integrable.bdd_mul ((hf.integrable _).sub (hf.integrable _))
      hξ.stronglyMeasurable.aestronglyMeasurable (hξbdd _)
  have hadp : Adapted 𝒢 fun n => ∑ k ∈ Finset.range n, ξ k * (f (k + 1) - f k) := by
    intro m
    refine Finset.stronglyMeasurable_sum' _ fun i hi => ?_
    rw [Finset.mem_range] at hi
    exact (hξ.stronglyMeasurable_le hi.le).mul
      ((hf.adapted.stronglyMeasurable_le (Nat.succ_le_of_lt hi)).sub
        (hf.adapted.stronglyMeasurable_le hi.le))
  refine submartingale_of_condExp_sub_nonneg_nat hadp hint fun i => ?_
  simp only [← Finset.sum_Ico_eq_sub _ (Nat.le_succ _), Finset.sum_apply, Pi.mul_apply,
    Pi.sub_apply, Nat.Ico_succ_singleton, Finset.sum_singleton]
  exact EventuallyLE.trans (EventuallyLE.mul_nonneg (Eventually.of_forall (hnonneg _))
    (hf.condExp_sub_nonneg (Nat.le_succ _))) (condExp_mul_of_stronglyMeasurable_left (hξ _)
    (((hf.integrable _).sub (hf.integrable _)).bdd_mul
      hξ.stronglyMeasurable.aestronglyMeasurable (hξbdd _))
    ((hf.integrable _).sub (hf.integrable _))).symm.le

/-- Given a discrete submartingale `f` and a predictable process `ξ` (i.e. `ξ (n + 1)` is adapted)
the process defined by `fun n => ∑ k ∈ Finset.range n, ξ (k + 1) * (f (k + 1) - f k)` is also a
submartingale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Basic/Variant9363577e333d3646ca7b25fdafab383972eb9207c7b14641323c3db9df080937.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Basic/Variant9363577e333d3646ca7b25fdafab383972eb9207c7b14641323c3db9df080937.lean#L481).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72478573d588bd76d79803a61ee66ca1d44d3f48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
