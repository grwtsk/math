# abs_leftSampleSum_sub_integral_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c15a127c873f991653d137f6c13c88e6cc6f1e20",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 131,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d49cceb1-17bf-f58b-7fe2-b54590a2a79a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:079ae0ad-54d6-7e83-7e78-ece7e9b941fd",
  "kind": "theorem",
  "lexical_name": "abs_leftSampleSum_sub_integral_le",
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
  "slug": "abs-leftsamplesum-sub-integral-le--5e84352b86af62402ae26de5",
  "source": {
    "blob": "c15a127c873f991653d137f6c13c88e6cc6f1e20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 131,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffbaSamplingImportsC/Variant2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e84352b86af62402ae26de5ce749207f7266d8d6712dd4718de5cef7540184b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffbaSamplingImportsC/Variant2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:079ae0ad-54d6-7e83-7e78-ece7e9b941fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_leftSampleSum_sub_integral_le
    (g : ℝ → ℝ)
    (hg : ContDiff ℝ 1 g)
    (N : ℕ) :
    |leftSampleSum g N -
        ∫ u in (1 : ℝ)..(N + 1 : ℝ), g u| ≤
      ∫ u in (1 : ℝ)..(N + 1 : ℝ), |deriv g u| := by
  rw [integral_eq_sum_unit_intervals g hg.continuous N]
  unfold leftSampleSum
  rw [← Finset.sum_sub_distrib]
  calc
    |∑ k ∈ Finset.Icc 1 N,
        (g k -
          ∫ u in (k : ℝ)..(k + 1 : ℝ), g u)| ≤
        ∑ k ∈ Finset.Icc 1 N,
          |g k -
            ∫ u in (k : ℝ)..(k + 1 : ℝ), g u| := by
      exact Finset.abs_sum_le_sum_abs _ _
    _ ≤
        ∑ k ∈ Finset.Icc 1 N,
          ∫ u in (k : ℝ)..(k + 1 : ℝ),
            |deriv g u| := by
      gcongr with k hk
      exact abs_unit_sampling_error_le g hg k
    _ =
        ∫ u in (1 : ℝ)..(N + 1 : ℝ),
          |deriv g u| := by
      symm
      exact integral_eq_sum_unit_intervals
        (fun u => |deriv g u|)
        (hg.continuous_deriv (by norm_num)).abs
        N

/-- A convenient record of the finite sampling theorem used by the
source-specific logarithmic kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffbaSamplingImportsC/Variant2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffbaSamplingImportsC/Variant2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffba.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c15a127c873f991653d137f6c13c88e6cc6f1e20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
