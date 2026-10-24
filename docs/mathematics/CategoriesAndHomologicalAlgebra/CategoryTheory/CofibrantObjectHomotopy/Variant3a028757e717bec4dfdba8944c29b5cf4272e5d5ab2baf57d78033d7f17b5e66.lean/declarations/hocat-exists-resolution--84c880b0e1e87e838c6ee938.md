# HoCat.exists_resolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5bd190755f8047ef5bd51664ecbc0c76343170c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 127,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3a028757e717bec4dfdba8944c29b5cf4272e5d5ab2baf57d78033d7f17b5e66.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fdcad670-7023-4525-b5c0-0393feaebeaa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0c1ed6f8-6ad3-c8e5-47de-2e621d627892",
  "kind": "lemma",
  "lexical_name": "HoCat.exists_resolution",
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
  "slug": "hocat-exists-resolution--84c880b0e1e87e838c6ee938",
  "source": {
    "blob": "5bd190755f8047ef5bd51664ecbc0c76343170c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 127,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CofibrantObjectHomotopy/Variant3a028757e717bec4dfdba8944c29b5cf4272e5d5ab2baf57d78033d7f17b5e66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84c880b0e1e87e838c6ee938c00836649b373bf1e1ed1f4397bd00c1cbd23f81",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CofibrantObjectHomotopy/Variant3a028757e717bec4dfdba8944c29b5cf4272e5d5ab2baf57d78033d7f17b5e66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c1ed6f8-6ad3-c8e5-47de-2e621d627892`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma HoCat.exists_resolution (X : C) :
    ∃ (X' : C) (_ : IsCofibrant X') (p : X' ⟶ X), Fibration p ∧ WeakEquivalence p := by
  have h := MorphismProperty.factorizationData (cofibrations C) (trivialFibrations C)
    (initial.to X)
  refine ⟨h.Z, ?_, h.p, inferInstance, inferInstance⟩
  rw [isCofibrant_iff_of_isInitial h.i initialIsInitial]
  infer_instance

/-- Given `X : C`, this is a cofibrant object `X'` equipped with a
trivial fibration `X' ⟶ X` (see `HoCat.pResolutionObj`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CofibrantObjectHomotopy/Variant3a028757e717bec4dfdba8944c29b5cf4272e5d5ab2baf57d78033d7f17b5e66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CofibrantObjectHomotopy/Variant3a028757e717bec4dfdba8944c29b5cf4272e5d5ab2baf57d78033d7f17b5e66.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bd190755f8047ef5bd51664ecbc0c76343170c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
