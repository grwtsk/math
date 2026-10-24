# abs_unit_sampling_error_le

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
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:03296cc7-ae07-0144-ae9a-a92743bddedb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a58f9483-e536-7a9b-43a7-79adfc0a2825",
  "kind": "theorem",
  "lexical_name": "abs_unit_sampling_error_le",
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
  "slug": "abs-unit-sampling-error-le--29081b69c5dc8148121cfa13",
  "source": {
    "blob": "c15a127c873f991653d137f6c13c88e6cc6f1e20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 72,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffbaSamplingImportsC/Variant2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29081b69c5dc8148121cfa13071d7c20b7277a10c0caf6c3aa2565f1aefc31e4",
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

Occurrence: `result:a58f9483-e536-7a9b-43a7-79adfc0a2825`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_unit_sampling_error_le
    (g : ℝ → ℝ)
    (hg : ContDiff ℝ 1 g)
    (k : ℕ) :
    |g k - ∫ u in (k : ℝ)..(k + 1 : ℝ), g u| ≤
      ∫ u in (k : ℝ)..(k + 1 : ℝ), |deriv g u| := by
  rw [unit_sampling_error_identity g hg k, abs_neg]
  have hInt :
      IntervalIntegrable
        (fun u : ℝ => |deriv g u|)
        volume (k : ℝ) (k + 1 : ℝ) :=
    ((hg.continuous_deriv (by norm_num)).abs).intervalIntegrable _ _
  have h :=
    intervalIntegral.norm_integral_le_of_norm_le
      (a := (k : ℝ)) (b := (k + 1 : ℝ))
      (by norm_num : (k : ℝ) ≤ k + 1)
      (f := fun u : ℝ =>
        ((k + 1 : ℝ) - u) * deriv g u)
      (g := fun u : ℝ => |deriv g u|)
      ?_ hInt
  · simpa [Real.norm_eq_abs] using h
  · filter_upwards with u hu
    have hu' : (k : ℝ) < u ∧ u ≤ k + 1 := hu
    have hw0 : 0 ≤ (k + 1 : ℝ) - u := by linarith
    have hw1 : (k + 1 : ℝ) - u ≤ 1 := by linarith
    rw [Real.norm_eq_abs, abs_mul, abs_of_nonneg hw0]
    nlinarith [abs_nonneg (deriv g u)]

/-- Integral additivity across an integer partition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffbaSamplingImportsC/Variant2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffbaSamplingImportsC/Variant2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffba.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c15a127c873f991653d137f6c13c88e6cc6f1e20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
