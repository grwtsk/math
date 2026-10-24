# Martingale.eq_condexp_of_tendsto_snorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eebd1fa6bca1141983c8ed822e9c77f36c54e6c3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 340,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cb36350bbdc31315ef830f07f055554b20aca296d8928bb355e8f346d5680565.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:98bbd5e3-1c3a-85d9-a4ae-e71556c88a86",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:91f31bf6-aa89-051f-b96c-b6dc8a98acc5",
  "kind": "theorem",
  "lexical_name": "Martingale.eq_condexp_of_tendsto_snorm",
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
  "slug": "martingale-eq-condexp-of-tendsto-snorm--c1bdced18887c64797418e94",
  "source": {
    "blob": "eebd1fa6bca1141983c8ed822e9c77f36c54e6c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 340,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variantcb36350bbdc31315ef830f07f055554b20aca296d8928bb355e8f346d5680565.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1bdced18887c64797418e9409ce82cddcbc3e4e57f0091f90fd5891741c5d66",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variantcb36350bbdc31315ef830f07f055554b20aca296d8928bb355e8f346d5680565.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91f31bf6-aa89-051f-b96c-b6dc8a98acc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Martingale.eq_condexp_of_tendsto_snorm {μ : Measure Ω} (hf : Martingale f ℱ μ)
    (hg : Integrable g μ) (hgtends : Tendsto (fun n => snorm (f n - g) 1 μ) atTop (𝓝 0)) (n : ℕ) :
    f n =ᵐ[μ] μ[g|ℱ n] := by
  rw [← sub_ae_eq_zero, ← snorm_eq_zero_iff (((hf.stronglyMeasurable n).mono (ℱ.le _)).sub
    (stronglyMeasurable_condexp.mono (ℱ.le _))).aestronglyMeasurable one_ne_zero]
  have ht : Tendsto (fun m => snorm (μ[f m - g|ℱ n]) 1 μ) atTop (𝓝 0) :=
    haveI hint : ∀ m, Integrable (f m - g) μ := fun m => (hf.integrable m).sub hg
    tendsto_of_tendsto_of_tendsto_of_le_of_le tendsto_const_nhds hgtends (fun m => zero_le _)
      fun m => snorm_one_condexp_le_snorm _
  have hev : ∀ m ≥ n, snorm (μ[f m - g|ℱ n]) 1 μ = snorm (f n - μ[g|ℱ n]) 1 μ := by
    refine' fun m hm => snorm_congr_ae ((condexp_sub (hf.integrable m) hg).trans _)
    filter_upwards [hf.2 n m hm] with x hx
    simp only [hx, Pi.sub_apply]
  exact tendsto_nhds_unique (tendsto_atTop_of_eventually_const hev) ht
#align measure_theory.martingale.eq_condexp_of_tendsto_snorm MeasureTheory.Martingale.eq_condexp_of_tendsto_snorm

/-- Part b of the **L¹ martingale convergence theorem**: if `f` is a uniformly integrable martingale
adapted to the filtration `ℱ`, then for all `n`, `f n` is almost everywhere equal to the conditional
expectation of its limiting process wrt. `ℱ n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variantcb36350bbdc31315ef830f07f055554b20aca296d8928bb355e8f346d5680565.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variantcb36350bbdc31315ef830f07f055554b20aca296d8928bb355e8f346d5680565.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eebd1fa6bca1141983c8ed822e9c77f36c54e6c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
