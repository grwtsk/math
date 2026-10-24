# Submartingale.exists_tendsto_of_abs_bddAbove_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "106ccfa4c6d2f2ddd103ecea98e0869a124795c5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 117,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e759478b7f0fcd030fa0d58c91a189b1277280e87d94aac2152dd8913c1740c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9e5b853d-415b-a75f-5407-385988427c41",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8190c04e-c7a9-234a-2bf4-42c477d70058",
  "kind": "theorem",
  "lexical_name": "Submartingale.exists_tendsto_of_abs_bddAbove_aux",
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
  "slug": "submartingale-exists-tendsto-of-abs-bddabove-aux--d9289dc7b33dad374a8e3e47",
  "source": {
    "blob": "106ccfa4c6d2f2ddd103ecea98e0869a124795c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 117,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variante759478b7f0fcd030fa0d58c91a189b1277280e87d94aac2152dd8913c1740c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9289dc7b33dad374a8e3e470e6dae0a16d3dfe03bcca342133bcb5aef9c614a",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variante759478b7f0fcd030fa0d58c91a189b1277280e87d94aac2152dd8913c1740c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8190c04e-c7a9-234a-2bf4-42c477d70058`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Submartingale.exists_tendsto_of_abs_bddAbove_aux [IsFiniteMeasure μ]
    (hf : Submartingale f ℱ μ) (hf0 : f 0 = 0) (hbdd : ∀ᵐ ω ∂μ, ∀ i, |f (i + 1) ω - f i ω| ≤ R) :
    ∀ᵐ ω ∂μ, BddAbove (Set.range fun n => f n ω) → ∃ c, Tendsto (fun n => f n ω) atTop (𝓝 c) := by
  have ht : ∀ᵐ ω ∂μ, ∀ i : ℕ, ∃ c, Tendsto (fun n => stoppedAbove f i n ω) atTop (𝓝 c) := by
    rw [ae_all_iff]
    exact fun i ↦ Submartingale.exists_ae_tendsto_of_bdd (hf.stoppedAbove i)
      (hf.eLpNorm_stoppedAbove_le' i.cast_nonneg hf0 hbdd)
  filter_upwards [ht] with ω hω hωb
  rw [BddAbove] at hωb
  obtain ⟨i, hi⟩ := exists_nat_gt hωb.some
  have hib : ∀ n, f n ω < i := by
    intro n
    exact lt_of_le_of_lt ((mem_upperBounds.1 hωb.some_mem) _ ⟨n, rfl⟩) hi
  have heq : ∀ n, stoppedAbove f i n ω = f n ω := by
    intro n
    rw [stoppedAbove, stoppedProcess, leastGE, hittingAfter_eq_top_iff.mpr]
    · simp only [le_top, inf_of_le_left]
      congr
    · simp [hib]
  simp only [← heq, hω i]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variante759478b7f0fcd030fa0d58c91a189b1277280e87d94aac2152dd8913c1740c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variante759478b7f0fcd030fa0d58c91a189b1277280e87d94aac2152dd8913c1740c7.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `106ccfa4c6d2f2ddd103ecea98e0869a124795c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
