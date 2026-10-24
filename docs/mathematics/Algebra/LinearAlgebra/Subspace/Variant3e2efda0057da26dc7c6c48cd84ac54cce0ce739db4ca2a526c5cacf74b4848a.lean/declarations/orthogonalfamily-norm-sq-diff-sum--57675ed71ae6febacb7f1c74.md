# OrthogonalFamily.norm_sq_diff_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "193a476e078bc8d5209ee8e0377842a38031ceec",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 169,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3e2efda0057da26dc7c6c48cd84ac54cce0ce739db4ca2a526c5cacf74b4848a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:566536a4-382e-2193-b401-5fd60bc81b73",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6ab31998-d7f3-e885-dfa4-68ee0ad3a9e6",
  "kind": "theorem",
  "lexical_name": "OrthogonalFamily.norm_sq_diff_sum",
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
  "slug": "orthogonalfamily-norm-sq-diff-sum--57675ed71ae6febacb7f1c74",
  "source": {
    "blob": "193a476e078bc8d5209ee8e0377842a38031ceec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 169,
    "path": "GRWTSK/Algebra/LinearAlgebra/Subspace/Variant3e2efda0057da26dc7c6c48cd84ac54cce0ce739db4ca2a526c5cacf74b4848a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57675ed71ae6febacb7f1c74c11d3a007299b72e6079d9666f7270b800236029",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Subspace/Variant3e2efda0057da26dc7c6c48cd84ac54cce0ce739db4ca2a526c5cacf74b4848a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ab31998-d7f3-e885-dfa4-68ee0ad3a9e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem OrthogonalFamily.norm_sq_diff_sum [DecidableEq ι] (f : ∀ i, G i) (s₁ s₂ : Finset ι) :
    ‖(∑ i ∈ s₁, V i (f i)) - ∑ i ∈ s₂, V i (f i)‖ ^ 2 =
      (∑ i ∈ s₁ \ s₂, ‖f i‖ ^ 2) + ∑ i ∈ s₂ \ s₁, ‖f i‖ ^ 2 := by
  rw [← Finset.sum_sdiff_sub_sum_sdiff, sub_eq_add_neg, ← Finset.sum_neg_distrib]
  let F : ∀ i, G i := fun i => if i ∈ s₁ then f i else -f i
  have hF₁ : ∀ i ∈ s₁ \ s₂, F i = f i := fun i hi => if_pos (Finset.sdiff_subset hi)
  have hF₂ : ∀ i ∈ s₂ \ s₁, F i = -f i := fun i hi => if_neg (Finset.mem_sdiff.mp hi).2
  have hF : ∀ i, ‖F i‖ = ‖f i‖ := by
    intro i
    dsimp only [F]
    split_ifs <;> simp only [eq_self_iff_true, norm_neg]
  have :
    ‖(∑ i ∈ s₁ \ s₂, V i (F i)) + ∑ i ∈ s₂ \ s₁, V i (F i)‖ ^ 2 =
      (∑ i ∈ s₁ \ s₂, ‖F i‖ ^ 2) + ∑ i ∈ s₂ \ s₁, ‖F i‖ ^ 2 := by
    have hs : Disjoint (s₁ \ s₂) (s₂ \ s₁) := disjoint_sdiff_sdiff
    simpa only [Finset.sum_union hs] using hV.norm_sum F (s₁ \ s₂ ∪ s₂ \ s₁)
  convert this using 4
  · refine Finset.sum_congr rfl fun i hi => ?_
    simp only [hF₁ i hi]
  · refine Finset.sum_congr rfl fun i hi => ?_
    simp only [hF₂ i hi, LinearIsometry.map_neg]
  · simp only [hF]
  · simp only [hF]

/-- A family `f` of mutually-orthogonal elements of `E` is summable, if and only if
`(fun i ↦ ‖f i‖ ^ 2)` is summable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Subspace/Variant3e2efda0057da26dc7c6c48cd84ac54cce0ce739db4ca2a526c5cacf74b4848a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Subspace/Variant3e2efda0057da26dc7c6c48cd84ac54cce0ce739db4ca2a526c5cacf74b4848a.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `193a476e078bc8d5209ee8e0377842a38031ceec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
