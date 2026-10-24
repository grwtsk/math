# cokernel_π_imageSubobject_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "267388e04f1fe1c99c27406e56c42bd1f2ea5917",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 110,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/92/922ece31e5708086e91d44d2f0fde45e1a0467c805dfa16961c752b64520c3c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:33d14592-68fb-3926-5e07-ddb5290f53ab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ab159e58-ce9e-4b1c-dc58-32483a8e2a73",
  "kind": "theorem",
  "lexical_name": "cokernel_π_imageSubobject_ext",
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
  "slug": "cokernel-imagesubobject-ext--545253bccd81dcc938e1f264",
  "source": {
    "blob": "267388e04f1fe1c99c27406e56c42bd1f2ea5917",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 110,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant922ece31e5708086e91d44d2f0fde45e1a0467c805dfa16961c752b64520c3c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:545253bccd81dcc938e1f264247e62896b622fa58f3d65d3a77795950440c8f8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant922ece31e5708086e91d44d2f0fde45e1a0467c805dfa16961c752b64520c3c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab159e58-ce9e-4b1c-dc58-32483a8e2a73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cokernel_π_imageSubobject_ext {L M N : ModuleCat.{v} R} (f : L ⟶ M) [HasImage f]
    (g : (imageSubobject f : ModuleCat.{v} R) ⟶ N) [HasCokernel g] {x y : N} (l : L)
    (w : x = y + g (factorThruImageSubobject f l)) : cokernel.π g x = cokernel.π g y := by
  subst w
  -- Porting note: The proof from here used to just be `simp`.
  simp only [map_add, add_right_eq_self]
  change ((cokernel.π g) ∘ (g) ∘ (factorThruImageSubobject f)) l = 0
  rw [← coe_comp, ← coe_comp, Category.assoc]
  simp only [cokernel.condition, comp_zero]
  rfl
#align Module.cokernel_π_image_subobject_ext ModuleCat.cokernel_π_imageSubobject_ext

end ModuleCat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant922ece31e5708086e91d44d2f0fde45e1a0467c805dfa16961c752b64520c3c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant922ece31e5708086e91d44d2f0fde45e1a0467c805dfa16961c752b64520c3c1.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `267388e04f1fe1c99c27406e56c42bd1f2ea5917` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
