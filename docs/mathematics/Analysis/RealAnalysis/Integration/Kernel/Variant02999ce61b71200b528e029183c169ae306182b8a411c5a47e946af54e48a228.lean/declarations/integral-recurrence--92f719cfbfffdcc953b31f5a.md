# integral_recurrence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "24e62b24c7297f7f0f57df7210664a0383694261",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 87,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e5d625c-ab09-99c6-62e7-93969b6c7518",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1669d675-c4df-33ca-f5ae-038f802d2b2c",
  "kind": "lemma",
  "lexical_name": "integral_recurrence",
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
  "slug": "integral-recurrence--92f719cfbfffdcc953b31f5a",
  "source": {
    "blob": "24e62b24c7297f7f0f57df7210664a0383694261",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 87,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92f719cfbfffdcc953b31f5a55b6ae93e07d434de684aae58aa868e40e241df3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1669d675-c4df-33ca-f5ae-038f802d2b2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integral_recurrence
    (k : ℕ) (w : ℂ) (hw : 0 < w.re) :
    (∫ A in Ioi (1 : ℝ), kernelIntegrand (k + 1) w A) =
      (Complex.exp (-w) +
        ((k + 1 : ℕ) : ℂ) *
          ∫ A in Ioi (1 : ℝ), kernelIntegrand k w A) / w := by
  have h := integral_Ioi_of_hasDerivAt_of_tendsto'
    (a := (1 : ℝ))
    (fun A _ ↦ kernelIntegrand_deriv k w A)
    (((kernelIntegrand_integrable k w hw).const_mul _).sub
      ((kernelIntegrand_integrable (k + 1) w hw).const_mul _))
    (kernelIntegrand_tendsto (k + 1) w hw)
  rw [integral_sub
      ((kernelIntegrand_integrable k w hw).const_mul _)
      ((kernelIntegrand_integrable (k + 1) w hw).const_mul _),
    integral_const_mul, integral_const_mul] at h
  have hw0 : w ≠ 0 := by
    intro he
    simp [he] at hw
  simp only [kernelIntegrand, Complex.ofReal_one, one_pow, mul_one,
    one_mul, zero_sub] at h
  apply (eq_div_iff hw0).mpr
  dsimp only [kernelIntegrand]
  linear_combination -h

/-- Recursive polynomial numerator of the exact tail kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24e62b24c7297f7f0f57df7210664a0383694261` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
