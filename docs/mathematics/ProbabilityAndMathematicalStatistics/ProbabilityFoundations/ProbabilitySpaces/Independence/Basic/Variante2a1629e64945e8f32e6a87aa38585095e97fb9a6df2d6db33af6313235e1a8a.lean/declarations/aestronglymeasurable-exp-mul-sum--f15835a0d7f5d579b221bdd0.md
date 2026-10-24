# aestronglyMeasurable_exp_mul_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "17f19e29a104382b33c6b64c5a3099841eef1c44",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 324,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e2a1629e64945e8f32e6a87aa38585095e97fb9a6df2d6db33af6313235e1a8a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:066d605a-6166-b976-7c46-89ea731c0dbb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e10574c5-6a15-1575-978f-353f70ef31b8",
  "kind": "theorem",
  "lexical_name": "aestronglyMeasurable_exp_mul_sum",
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
  "slug": "aestronglymeasurable-exp-mul-sum--f15835a0d7f5d579b221bdd0",
  "source": {
    "blob": "17f19e29a104382b33c6b64c5a3099841eef1c44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 324,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variante2a1629e64945e8f32e6a87aa38585095e97fb9a6df2d6db33af6313235e1a8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f15835a0d7f5d579b221bdd096fb65d6aff38eba81736e9254046f288e3ef611",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variante2a1629e64945e8f32e6a87aa38585095e97fb9a6df2d6db33af6313235e1a8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e10574c5-6a15-1575-978f-353f70ef31b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aestronglyMeasurable_exp_mul_sum {X : ι → Ω → ℝ} {s : Finset ι}
    (h_int : ∀ i ∈ s, AEStronglyMeasurable (fun ω => exp (t * X i ω)) μ) :
    AEStronglyMeasurable (fun ω => exp (t * (∑ i ∈ s, X i) ω)) μ := by
  classical
  induction s using Finset.induction_on with
  | empty =>
    simp only [Finset.sum_apply, sum_empty, mul_zero, exp_zero]
    exact aestronglyMeasurable_const
  | insert i s hi_notin_s h_rec =>
    have : ∀ i : ι, i ∈ s → AEStronglyMeasurable (fun ω : Ω => exp (t * X i ω)) μ := fun i hi =>
      h_int i (mem_insert_of_mem hi)
    specialize h_rec this
    rw [sum_insert hi_notin_s]
    apply aestronglyMeasurable_exp_mul_add (h_int i (mem_insert_self _ _)) h_rec

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variante2a1629e64945e8f32e6a87aa38585095e97fb9a6df2d6db33af6313235e1a8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variante2a1629e64945e8f32e6a87aa38585095e97fb9a6df2d6db33af6313235e1a8a.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17f19e29a104382b33c6b64c5a3099841eef1c44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
