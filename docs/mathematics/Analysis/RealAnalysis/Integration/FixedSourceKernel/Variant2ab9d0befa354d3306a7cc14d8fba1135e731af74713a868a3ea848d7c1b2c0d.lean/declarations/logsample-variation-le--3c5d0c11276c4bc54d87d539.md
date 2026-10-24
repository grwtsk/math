# logSample_variation_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f5c2c661a43aef27b50627acad91c3d3a2909dbb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 127,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2ab9d0befa354d3306a7cc14d8fba1135e731af74713a868a3ea848d7c1b2c0d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4ddca72f-ce22-f539-a8bb-d0d78d0590bb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f64d6c7b-a9d1-3c25-09de-4e6d6aaa8b41",
  "kind": "theorem",
  "lexical_name": "logSample_variation_le",
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
  "slug": "logsample-variation-le--3c5d0c11276c4bc54d87d539",
  "source": {
    "blob": "f5c2c661a43aef27b50627acad91c3d3a2909dbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 127,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variant2ab9d0befa354d3306a7cc14d8fba1135e731af74713a868a3ea848d7c1b2c0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c5d0c11276c4bc54d87d539a317a25f9a21199691abdad098f9dfbd9fab6111",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variant2ab9d0befa354d3306a7cc14d8fba1135e731af74713a868a3ea848d7c1b2c0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f64d6c7b-a9d1-3c25-09de-4e6d6aaa8b41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logSample_variation_le (t : ℝ) :
    (∫ x in Ioi (1 : ℝ), |deriv (logSample t) x|) ≤
      Real.exp ((1 - t) / 2) * derivativeBudget := by
  have hchange := integral_comp_exp_Ioi (fun x => |deriv (logSample t) x|) 0
  simp only [smul_eq_mul, Real.exp_zero] at hchange
  rw [← hchange]
  simp_rw [logSample_deriv_exp, derivative_translate]
  rw [integral_const_mul]
  apply mul_le_mul_of_nonneg_left _ (Real.exp_pos _).le
  have hi := derivativeBudget_integrable.comp_sub_left (t - 1)
  calc
    _ ≤ ∫ r : ℝ, Real.exp ((t - 1 - r) / 2) *
        |sampleDerivativeProfile (t - 1 - r)| :=
      setIntegral_le_integral hi (Filter.Eventually.of_forall
        (fun _ => mul_nonneg (Real.exp_pos _).le (abs_nonneg _)))
    _ = derivativeBudget := integral_sub_left_eq_self
      (fun y => Real.exp (y / 2) * |sampleDerivativeProfile y|) volume (t - 1)

/-- The sample vanishes at and beyond the exact causal endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variant2ab9d0befa354d3306a7cc14d8fba1135e731af74713a868a3ea848d7c1b2c0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FixedSourceKernel/Variant2ab9d0befa354d3306a7cc14d8fba1135e731af74713a868a3ea848d7c1b2c0d.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5c2c661a43aef27b50627acad91c3d3a2909dbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
