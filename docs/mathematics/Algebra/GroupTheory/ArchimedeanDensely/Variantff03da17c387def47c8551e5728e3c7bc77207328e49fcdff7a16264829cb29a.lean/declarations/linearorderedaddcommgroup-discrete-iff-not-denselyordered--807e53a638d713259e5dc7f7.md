# LinearOrderedAddCommGroup.discrete_iff_not_denselyOrdered

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2144c65ecf08d5c4a3d68152d38d997816769f90",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 249,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ff03da17c387def47c8551e5728e3c7bc77207328e49fcdff7a16264829cb29a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:71a11b1f-a9e4-ecbd-2094-68995b9e61d6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4e2b00e9-c025-2000-df69-946b3053ede6",
  "kind": "lemma",
  "lexical_name": "LinearOrderedAddCommGroup.discrete_iff_not_denselyOrdered",
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
  "slug": "linearorderedaddcommgroup-discrete-iff-not-denselyordered--807e53a638d713259e5dc7f7",
  "source": {
    "blob": "2144c65ecf08d5c4a3d68152d38d997816769f90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 249,
    "path": "GRWTSK/Algebra/GroupTheory/ArchimedeanDensely/Variantff03da17c387def47c8551e5728e3c7bc77207328e49fcdff7a16264829cb29a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:807e53a638d713259e5dc7f79fbf7902ddef6586f46ad74e78803e7e3490f4b9",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ArchimedeanDensely/Variantff03da17c387def47c8551e5728e3c7bc77207328e49fcdff7a16264829cb29a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e2b00e9-c025-2000-df69-946b3053ede6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LinearOrderedAddCommGroup.discrete_iff_not_denselyOrdered (G : Type*)
    [AddCommGroup G] [LinearOrder G] [IsOrderedAddMonoid G] [Archimedean G] :
    Nonempty (G ≃+o ℤ) ↔ ¬ DenselyOrdered G := by
  suffices ∀ (_ : G ≃+o ℤ), ¬ DenselyOrdered G by
    rcases LinearOrderedAddCommGroup.discrete_or_denselyOrdered G with ⟨⟨h⟩⟩ | h
    · simpa [this h] using ⟨h⟩
    · simp only [h, not_true_eq_false, iff_false, not_nonempty_iff]
      exact ⟨fun H ↦ (this H) h⟩
  intro e H
  rw [denselyOrdered_iff_of_orderIsoClass e] at H
  obtain ⟨_, _⟩ := exists_between (one_pos (α := ℤ))
  lia

/-- Any non-trivial linearly ordered archimedean additive group is either cyclic, or densely
ordered, exclusively. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ArchimedeanDensely/Variantff03da17c387def47c8551e5728e3c7bc77207328e49fcdff7a16264829cb29a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ArchimedeanDensely/Variantff03da17c387def47c8551e5728e3c7bc77207328e49fcdff7a16264829cb29a.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2144c65ecf08d5c4a3d68152d38d997816769f90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
