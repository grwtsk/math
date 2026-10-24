# freeAdjunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d707b0882f39e3d8145c598df43a9bc82b90b47d906ec7691b714e691af7cab3",
  "kind": "def",
  "lexical_name": "freeAdjunction",
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
  "slug": "freeadjunction--145629405ea28fa97dee457c",
  "source": {
    "blob": "f1d0c27fc194a358d21ac8d637220ccc000d2844",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 111,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantfb6afb4854709ad4e46b3447b81a3b310f21dd128835f397c26dda312623d0a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:145629405ea28fa97dee457ce86da73ae95b9e9309d6a1328bf078e4efc098cf",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantfb6afb4854709ad4e46b3447b81a3b310f21dd128835f397c26dda312623d0a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d707b0882f39e3d8145c598df43a9bc82b90b47d906ec7691b714e691af7cab3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def freeAdjunction :
    free.{u} R ⊣ (toPresheaf R ⋙ (Functor.whiskeringRight _ _ _).obj (forget Ab)) :=
  Adjunction.mkOfHomEquiv
    { homEquiv := fun _ _ ↦ freeHomEquiv
      homEquiv_naturality_left_symm := fun {F₁ F₂ G} f g ↦
        free_hom_ext (by ext; simp [freeHomEquiv, toPresheaf])
      homEquiv_naturality_right := fun {F G₁ G₂} f g ↦ rfl }

set_option backward.isDefEq.respectTransparency.types false in
variable (F G) in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantfb6afb4854709ad4e46b3447b81a3b310f21dd128835f397c26dda312623d0a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantfb6afb4854709ad4e46b3447b81a3b310f21dd128835f397c26dda312623d0a6.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1d0c27fc194a358d21ac8d637220ccc000d2844` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
