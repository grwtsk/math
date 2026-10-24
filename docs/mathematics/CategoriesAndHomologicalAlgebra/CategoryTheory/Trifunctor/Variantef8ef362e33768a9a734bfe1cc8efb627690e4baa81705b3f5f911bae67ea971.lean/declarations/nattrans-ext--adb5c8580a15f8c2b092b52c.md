# natTrans₃_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2bea970ec5cc0f4d609582250893a507021735e1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 135,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/ef8ef362e33768a9a734bfe1cc8efb627690e4baa81705b3f5f911bae67ea971.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dd8f5650-df18-8740-134a-08f3b5a98845",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c2dbb508-f6d0-16f3-1c83-bcbe0d239ed7",
  "kind": "theorem",
  "lexical_name": "natTrans₃_ext",
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
  "slug": "nattrans-ext--adb5c8580a15f8c2b092b52c",
  "source": {
    "blob": "2bea970ec5cc0f4d609582250893a507021735e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 135,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantef8ef362e33768a9a734bfe1cc8efb627690e4baa81705b3f5f911bae67ea971.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:adb5c8580a15f8c2b092b52c9bf328e97ce4a13de0f5801b066f9b459d289ec5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantef8ef362e33768a9a734bfe1cc8efb627690e4baa81705b3f5f911bae67ea971.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2dbb508-f6d0-16f3-1c83-bcbe0d239ed7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natTrans₃_ext {τ τ' : F₁' ⟶ F₂'}
    (h : ∀ (X₁ : C₁) (X₂ : C₂) (X₃ : C₃), ((τ.app (L₁.obj X₁)).app (L₂.obj X₂)).app (L₃.obj X₃) =
      ((τ'.app (L₁.obj X₁)).app (L₂.obj X₂)).app (L₃.obj X₃)) : τ = τ' :=
  uncurry₃.map_injective (natTrans_ext (L₁.prod (L₂.prod L₃)) (W₁.prod (W₂.prod W₃))
    (fun _ ↦ h _ _ _))

/-- The natural isomorphism `F₁' ≅ F₂'` of trifunctors induced by a
natural isomorphism `e : F₁ ≅ F₂` when `Lifting₃ L₁ L₂ L₃ W₁ W₂ W₃ F₁ F₁'`
and `Lifting₃ L₁ L₂ L₃ W₁ W₂ W₃ F₂ F₂'` hold. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantef8ef362e33768a9a734bfe1cc8efb627690e4baa81705b3f5f911bae67ea971.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantef8ef362e33768a9a734bfe1cc8efb627690e4baa81705b3f5f911bae67ea971.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bea970ec5cc0f4d609582250893a507021735e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
