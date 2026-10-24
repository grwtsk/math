# shortLog_error_le_of_sampling_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f61c14513fd27af629b5eb5743bc018a120fd7fc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/aa/aae9748591a531cfc7ac81b06d14dd9f086ae0f91fe75d58f94dc165a63fd817.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5cd890d1-cca5-7238-e7a9-c2614703eb92",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:697330b9-cda9-7457-a5ca-fd5040dc9d9e",
  "kind": "theorem",
  "lexical_name": "shortLog_error_le_of_sampling_error",
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
  "slug": "shortlog-error-le-of-sampling-error--30fcfc9bee360f54871c9abf",
  "source": {
    "blob": "f61c14513fd27af629b5eb5743bc018a120fd7fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 120,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceShortSamplingInventory/Variantaae9748591a531cfc7ac81b06d14dd9f086ae0f91fe75d58f94dc165a63fd817.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30fcfc9bee360f54871c9abf5c289f0f3acbd5be970b6d31fb3a0aadac44c9b1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceShortSamplingInventory/Variantaae9748591a531cfc7ac81b06d14dd9f086ae0f91fe75d58f94dc165a63fd817.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:697330b9-cda9-7457-a5ca-fd5040dc9d9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shortLog_error_le_of_sampling_error {A E : ℝ} (hA : 1 ≤ A) (hE : 0 ≤ E)
    (J₁ : ℝ → ℝ)
    (herr : ∀ d ∈ Finset.Icc 1 (vaughanCutoff A),
      |sourceMobiusKernel A d - J₁ d| ≤ E / (A ^ 2 * Real.sqrt d)) :
    |shortLogSource A - shortLogMainTerm A J₁| ≤ 2 * E / A := by
  have hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
  unfold shortLogSource shortLogMainTerm
  rw [← Finset.sum_sub_distrib]
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
      |realMoebius d * sourceMobiusKernel A d - realMoebius d * J₁ d| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), E / A ^ 2 * (1 / Real.sqrt d) := by
      apply Finset.sum_le_sum
      intro d hd
      rw [← mul_sub, abs_mul]
      calc
        _ ≤ 1 * (E / (A ^ 2 * Real.sqrt d)) :=
          mul_le_mul (realMoebius_abs_le_one d) (herr d hd) (abs_nonneg _) (by norm_num)
        _ = _ := by ring
    _ = E / A ^ 2 * ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), 1 / Real.sqrt d :=
      (Finset.mul_sum _ _ _).symm
    _ ≤ E / A ^ 2 * (2 * Real.sqrt (vaughanCutoff A)) :=
      mul_le_mul_of_nonneg_left (sum_reciprocal_sqrt_le _) (by positivity)
    _ ≤ E / A ^ 2 * (2 * A) := by
      gcongr
      exact sqrt_vaughanCutoff_le A hA
    _ = _ := by field_simp [hp.ne']

/-- The logarithmic sampling error is uniformly bounded for the actual scale domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceShortSamplingInventory/Variantaae9748591a531cfc7ac81b06d14dd9f086ae0f91fe75d58f94dc165a63fd817.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceShortSamplingInventory/Variantaae9748591a531cfc7ac81b06d14dd9f086ae0f91fe75d58f94dc165a63fd817.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f61c14513fd27af629b5eb5743bc018a120fd7fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
