# extEquiv_symm_naturality_right₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "570b41c44a1931dc8d9425c6635274c44bbda5bb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8f043986474471abb4068a3197f87a4798469a1ac7cd7bf81a7e4d9c65d5d8d7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:84685319-2af1-366e-1ca2-12b603c218a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:862e1648-5b34-ac7c-b53d-ab763b226c53",
  "kind": "lemma",
  "lexical_name": "extEquiv_symm_naturality_right₀",
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
  "slug": "extequiv-symm-naturality-right--9506f27fbdb4109d66c4dd74",
  "source": {
    "blob": "570b41c44a1931dc8d9425c6635274c44bbda5bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 129,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MapAdjunction/Variant8f043986474471abb4068a3197f87a4798469a1ac7cd7bf81a7e4d9c65d5d8d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9506f27fbdb4109d66c4dd74c7fae9718ace9b7f16b52dcf80d3f374a7123366",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MapAdjunction/Variant8f043986474471abb4068a3197f87a4798469a1ac7cd7bf81a7e4d9c65d5d8d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:862e1648-5b34-ac7c-b53d-ab763b226c53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma extEquiv_symm_naturality_right₀ (adj : F ⊣ G) {X : C} {Y₁ Y₂ : D} {n : ℕ}
    (e : Ext X (G.obj Y₁) n) (f : Y₁ ⟶ Y₂) :
    adj.extEquiv.symm (e.comp (Ext.mk₀ (G.map f)) (add_zero n)) =
    (adj.extEquiv.symm e).comp (Ext.mk₀ f) (add_zero n) := by
  simpa [Ext.mapExactFunctor_mk₀] using
    adj.extEquiv_symm_naturality_right e (Ext.mk₀ f) (add_zero n)

/-- The linear equivalence on `Ext`-modules that is induced by an adjunction
between exact linear functors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MapAdjunction/Variant8f043986474471abb4068a3197f87a4798469a1ac7cd7bf81a7e4d9c65d5d8d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MapAdjunction/Variant8f043986474471abb4068a3197f87a4798469a1ac7cd7bf81a7e4d9c65d5d8d7.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `570b41c44a1931dc8d9425c6635274c44bbda5bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
