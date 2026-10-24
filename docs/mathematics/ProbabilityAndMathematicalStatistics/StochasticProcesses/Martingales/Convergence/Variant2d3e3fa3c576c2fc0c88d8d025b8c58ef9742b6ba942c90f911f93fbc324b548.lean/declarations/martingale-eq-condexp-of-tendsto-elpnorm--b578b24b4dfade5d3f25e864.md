# Martingale.eq_condExp_of_tendsto_eLpNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eee61c90e22fc45ce28b0e191e341db83914e3f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 329,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2d3e3fa3c576c2fc0c88d8d025b8c58ef9742b6ba942c90f911f93fbc324b548.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a2bde402-44ab-c3b4-cf28-941b704db9cf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e9583a14-676c-e7c0-f23f-7cb1be048b87",
  "kind": "theorem",
  "lexical_name": "Martingale.eq_condExp_of_tendsto_eLpNorm",
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
  "slug": "martingale-eq-condexp-of-tendsto-elpnorm--b578b24b4dfade5d3f25e864",
  "source": {
    "blob": "eee61c90e22fc45ce28b0e191e341db83914e3f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 329,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2d3e3fa3c576c2fc0c88d8d025b8c58ef9742b6ba942c90f911f93fbc324b548.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b578b24b4dfade5d3f25e86403d0bd4b9229eeadc8b02dcbb2f8f2a63cf49458",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2d3e3fa3c576c2fc0c88d8d025b8c58ef9742b6ba942c90f911f93fbc324b548.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9583a14-676c-e7c0-f23f-7cb1be048b87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Martingale.eq_condExp_of_tendsto_eLpNorm {μ : Measure Ω} (hf : Martingale f ℱ μ)
    (hg : Integrable g μ) (hgtends : Tendsto (fun n => eLpNorm (f n - g) 1 μ) atTop (𝓝 0)) (n : ℕ) :
    f n =ᵐ[μ] μ[g|ℱ n] := by
  rw [← sub_ae_eq_zero, ← eLpNorm_eq_zero_iff (((hf.stronglyMeasurable n).mono (ℱ.le _)).sub
    (stronglyMeasurable_condExp.mono (ℱ.le _))).aestronglyMeasurable one_ne_zero]
  have ht : Tendsto (fun m => eLpNorm (μ[f m - g|ℱ n]) 1 μ) atTop (𝓝 0) :=
    haveI hint : ∀ m, Integrable (f m - g) μ := fun m => (hf.integrable m).sub hg
    tendsto_of_tendsto_of_tendsto_of_le_of_le tendsto_const_nhds hgtends (fun m => zero_le _)
      fun m => eLpNorm_one_condExp_le_eLpNorm _
  have hev : ∀ m ≥ n, eLpNorm (μ[f m - g|ℱ n]) 1 μ = eLpNorm (f n - μ[g|ℱ n]) 1 μ := by
    refine fun m hm => eLpNorm_congr_ae ((condExp_sub (hf.integrable m) hg _).trans ?_)
    filter_upwards [hf.2 n m hm] with x hx
    simp only [hx, Pi.sub_apply]
  exact tendsto_nhds_unique (tendsto_atTop_of_eventually_const hev) ht

@[deprecated (since := "2025-01-21")]
alias Martingale.eq_condexp_of_tendsto_eLpNorm := Martingale.eq_condExp_of_tendsto_eLpNorm

/-- Part b of the **L¹ martingale convergence theorem**: if `f` is a uniformly integrable martingale
adapted to the filtration `ℱ`, then for all `n`, `f n` is almost everywhere equal to the conditional
expectation of its limiting process wrt. `ℱ n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2d3e3fa3c576c2fc0c88d8d025b8c58ef9742b6ba942c90f911f93fbc324b548.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2d3e3fa3c576c2fc0c88d8d025b8c58ef9742b6ba942c90f911f93fbc324b548.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eee61c90e22fc45ce28b0e191e341db83914e3f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
