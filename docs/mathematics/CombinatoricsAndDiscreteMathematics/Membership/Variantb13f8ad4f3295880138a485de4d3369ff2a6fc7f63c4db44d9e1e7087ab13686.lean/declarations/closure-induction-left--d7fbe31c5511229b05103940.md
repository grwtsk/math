# closure_induction_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "afe304991e9924cddf5a0eecaf3998608371c530",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 383,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b13f8ad4f3295880138a485de4d3369ff2a6fc7f63c4db44d9e1e7087ab13686.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cf82e07b-f8e7-786c-a73d-261e9b867971",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2d0f1728-2a55-8154-1a48-da296563a501",
  "kind": "theorem",
  "lexical_name": "closure_induction_left",
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
  "slug": "closure-induction-left--d7fbe31c5511229b05103940",
  "source": {
    "blob": "afe304991e9924cddf5a0eecaf3998608371c530",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 383,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Membership/Variantb13f8ad4f3295880138a485de4d3369ff2a6fc7f63c4db44d9e1e7087ab13686.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7fbe31c5511229b05103940b12bd7a43f205d5aba343b9c3faf96d97542f91d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Membership/Variantb13f8ad4f3295880138a485de4d3369ff2a6fc7f63c4db44d9e1e7087ab13686.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d0f1728-2a55-8154-1a48-da296563a501`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 383–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closure_induction_left {s : Set M} {p : M → Prop} {x : M} (h : x ∈ closure s) (H1 : p 1)
    (Hmul : ∀ x ∈ s, ∀ (y), p y → p (x * y)) : p x := by
  rw [closure_eq_mrange] at h
  obtain ⟨l, rfl⟩ := h
  induction' l using FreeMonoid.recOn with x y ih
  · exact H1
  · simpa only [map_mul, FreeMonoid.lift_eval_of] using Hmul _ x.prop _ ih
#align submonoid.closure_induction_left Submonoid.closure_induction_left
#align add_submonoid.closure_induction_left AddSubmonoid.closure_induction_left

@[to_additive (attr := elab_as_elim)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Membership/Variantb13f8ad4f3295880138a485de4d3369ff2a6fc7f63c4db44d9e1e7087ab13686.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Membership/Variantb13f8ad4f3295880138a485de4d3369ff2a6fc7f63c4db44d9e1e7087ab13686.lean#L383).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afe304991e9924cddf5a0eecaf3998608371c530` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
