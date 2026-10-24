# mem_of_hasInductedTStructure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6e78b84-0d22-1521-5928-d25b4a0ee7c1",
  "kind": "lemma",
  "lexical_name": "mem_of_hasInductedTStructure",
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
  "slug": "mem-of-hasinductedtstructure--ac91c048220f44a15aa18f79",
  "source": {
    "blob": "09661d1b06f2199ee8309d021f36756fabc7ba9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 102,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Variant49a5aaed25bd59245774abd7b0c5ad4536f1721a1e2d396e196b074ee1ee7a7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac91c048220f44a15aa18f79d58ebff06633cc150d253b8385a1a5de008bf7b3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Variant49a5aaed25bd59245774abd7b0c5ad4536f1721a1e2d396e196b074ee1ee7a7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6e78b84-0d22-1521-5928-d25b4a0ee7c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_of_hasInductedTStructure (P : ObjectProperty C) [P.IsTriangulated] (t : TStructure C)
    [P.IsClosedUnderIsomorphisms] [P.HasInducedTStructure t]
    (T : Triangle C) (hT : T ∈ distTriang C)
    (n₀ n₁ : ℤ) (h : n₀ + 1 = n₁) (h₁ : t.IsLE T.obj₁ n₀) (h₂ : P T.obj₂)
    (h₃ : t.IsGE T.obj₃ n₁) :
    P T.obj₁ ∧ P T.obj₃ := by
  obtain ⟨e, _⟩ := t.triangle_iso_exists hT
    (P.ι.map_distinguished _ ((P.tStructure t).triangleLEGE_distinguished n₀ n₁ h ⟨_, h₂⟩))
    (Iso.refl _) n₀ n₁ inferInstance inferInstance
      (by dsimp; rw [← P.tStructure_isLE_iff]; infer_instance)
      (by dsimp; rw [← P.tStructure_isGE_iff]; infer_instance)
  exact ⟨(P.prop_iff_of_iso (Triangle.π₁.mapIso e)).2 (P.prop_ι_obj _),
    (P.prop_iff_of_iso (Triangle.π₃.mapIso e)).2 (P.prop_ι_obj _)⟩

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Variant49a5aaed25bd59245774abd7b0c5ad4536f1721a1e2d396e196b074ee1ee7a7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Variant49a5aaed25bd59245774abd7b0c5ad4536f1721a1e2d396e196b074ee1ee7a7c.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09661d1b06f2199ee8309d021f36756fabc7ba9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
