# presheafFiberMap_hom_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "43b925467551ee35ac42fd658a06c0caddf81eb5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/eaa16d353187f218547cfe1c6112e9532bb8287820f568ab3b425acd90b1c241.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a72c2e97-0dd3-cc23-73e5-9f85858505d6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ac244652-5950-7787-9b7e-c8bec2198567",
  "kind": "lemma",
  "lexical_name": "presheafFiberMap_hom_ext",
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
  "slug": "presheaffibermap-hom-ext--cebe6ace38571f0ec13670bd",
  "source": {
    "blob": "43b925467551ee35ac42fd658a06c0caddf81eb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 97,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Varianteaa16d353187f218547cfe1c6112e9532bb8287820f568ab3b425acd90b1c241.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cebe6ace38571f0ec13670bd237e1f014b3fae9583e3a1a78366e2bc66664a38",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Varianteaa16d353187f218547cfe1c6112e9532bb8287820f568ab3b425acd90b1c241.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac244652-5950-7787-9b7e-c8bec2198567`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma presheafFiberMap_hom_ext {P : Dᵒᵖ ⥤ A} {T : A}
    {f g : (Φ.map F K).presheafFiber.obj P ⟶ T}
    (h : ∀ (X : C) (x : Φ.fiber.obj X),
      Φ.toPresheafFiberMap F K P X x ≫ f = Φ.toPresheafFiberMap F K P X x ≫ g) :
    f = g :=
  (Φ.isColimitPresheafFiberMapCocone F K P).hom_ext (fun _ ↦ h _ _)

/-- Relation between the fiber functors on presheaves for the points `Φ.map F K`
and `Φ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Varianteaa16d353187f218547cfe1c6112e9532bb8287820f568ab3b425acd90b1c241.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Varianteaa16d353187f218547cfe1c6112e9532bb8287820f568ab3b425acd90b1c241.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43b925467551ee35ac42fd658a06c0caddf81eb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
