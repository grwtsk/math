# bind_pure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9dc064b6904848060e323f3e07b87f61b519aa7a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 621,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/883caa41f4811ef16e869bba99216ed1df6d6699a3c0d621629e2aa0d1e8522e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:761c3cf2-8383-4c84-9b76-d74aadf3a4f0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9fe2bbe3-6ede-0035-04a2-7f41431a6bbd",
  "kind": "theorem",
  "lexical_name": "bind_pure",
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
  "slug": "bind-pure--484db0c6bd8228e0efe9450c",
  "source": {
    "blob": "9dc064b6904848060e323f3e07b87f61b519aa7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 632,
    "line": 621,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Computation/Variant883caa41f4811ef16e869bba99216ed1df6d6699a3c0d621629e2aa0d1e8522e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:484db0c6bd8228e0efe9450cad39d641a5915699a717ba5cef8665693d7e9b10",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Computation/Variant883caa41f4811ef16e869bba99216ed1df6d6699a3c0d621629e2aa0d1e8522e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9fe2bbe3-6ede-0035-04a2-7f41431a6bbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 621–632.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bind_pure (f : α → β) (s) : bind s (pure ∘ f) = map f s := by
  apply eq_of_bisim fun c₁ c₂ => c₁ = c₂ ∨ ∃ s, c₁ = bind s (pure ∘ f) ∧ c₂ = map f s
  · intro c₁ c₂ h
    match c₁, c₂, h with
    | _, c₂, Or.inl (Eq.refl _) => rcases destruct c₂ with b | cb <;> simp
    | _, _, Or.inr ⟨s, rfl, rfl⟩ =>
      induction s using recOn with
      | pure s => simp
      | think s => simpa using Or.inr ⟨s, rfl, rfl⟩
  · exact Or.inr ⟨s, rfl, rfl⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Computation/Variant883caa41f4811ef16e869bba99216ed1df6d6699a3c0d621629e2aa0d1e8522e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Computation/Variant883caa41f4811ef16e869bba99216ed1df6d6699a3c0d621629e2aa0d1e8522e.lean#L621).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9dc064b6904848060e323f3e07b87f61b519aa7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
