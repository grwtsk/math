# integral_finite_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "920b06c4bc947dbe5ac6ccb55a03169f4628a123",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/071459a33ab8f1fc595fd9240973b00aac3e9f9c1e67da7f1f26b40f2efff99f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d7137f1e-67f3-e469-4f2c-738727e7a264",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:87e3c2f5-9952-e458-2ef3-61f5b88db88b",
  "kind": "theorem",
  "lexical_name": "integral_finite_square",
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
  "slug": "integral-finite-square--f564ff7202e13b330562c84e",
  "source": {
    "blob": "920b06c4bc947dbe5ac6ccb55a03169f4628a123",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 86,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceMixedCurvatureGram/Variant071459a33ab8f1fc595fd9240973b00aac3e9f9c1e67da7f1f26b40f2efff99f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f564ff7202e13b330562c84e8c327a6dd2046f6453e92195d729a4ed77db20d2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceMixedCurvatureGram/Variant071459a33ab8f1fc595fd9240973b00aac3e9f9c1e67da7f1f26b40f2efff99f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87e3c2f5-9952-e458-2ef3-61f5b88db88b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem integral_finite_square {ι : Type*} (s : Finset ι) (c : ι → ℝ)
    (g : ι → ℝ → ℝ)
    (hprod : ∀ i ∈ s, ∀ j ∈ s, Integrable (fun v : ℝ => g i v * g j v)) :
    (∫ v : ℝ, (∑ i ∈ s, c i * g i v) ^ 2) =
      ∑ i ∈ s, ∑ j ∈ s, c i * c j * (∫ v : ℝ, g i v * g j v) := by
  have hexpand : (fun v : ℝ => (∑ i ∈ s, c i * g i v) ^ 2) =
      (fun v : ℝ => ∑ i ∈ s, ∑ j ∈ s, c i * c j * (g i v * g j v)) := by
    funext v
    rw [pow_two, Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro i _
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro j _
    ring
  rw [hexpand, integral_finsetSum s]
  · apply Finset.sum_congr rfl
    intro i hi
    rw [integral_finsetSum s]
    · apply Finset.sum_congr rfl
      intro j hj
      exact integral_const_mul (c i * c j) _
    · intro j hj
      exact (hprod i hi j hj).const_mul (c i * c j)
  · intro i hi
    exact integrable_finsetSum s (fun j hj =>
      (hprod i hi j hj).const_mul (c i * c j))

/-- Exact two-square representation of the actual finite stationary mixed-curvature kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceMixedCurvatureGram/Variant071459a33ab8f1fc595fd9240973b00aac3e9f9c1e67da7f1f26b40f2efff99f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceMixedCurvatureGram/Variant071459a33ab8f1fc595fd9240973b00aac3e9f9c1e67da7f1f26b40f2efff99f.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `920b06c4bc947dbe5ac6ccb55a03169f4628a123` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
