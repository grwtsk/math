# yonedaAdjunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9db5810fd48535b69956891c9d7f5f958a268c9e80e3f415e2bd895c6f7fb3d3",
  "kind": "def",
  "lexical_name": "yonedaAdjunction",
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
  "slug": "yonedaadjunction--e42fb33d278673d34a23e151",
  "source": {
    "blob": "ac43a287dad7b1a0e1b11331b070f3c64e45d0a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 132,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant29d8cd1d54b5d0e4a122dc5f8d6b8742235e9fbd61a2e47e5c60b81027dc5584.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e42fb33d278673d34a23e15182f236da64adf1eb659e17a944a520ab97f36e07",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant29d8cd1d54b5d0e4a122dc5f8d6b8742235e9fbd61a2e47e5c60b81027dc5584.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9db5810fd48535b69956891c9d7f5f958a268c9e80e3f415e2bd895c6f7fb3d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def yonedaAdjunction : L ⊣ restrictedYoneda A :=
  Adjunction.mkOfHomEquiv
    { homEquiv := restrictedYonedaHomEquiv L α
      homEquiv_naturality_left_symm := fun {P Q X} f g => by
        obtain ⟨g, rfl⟩ := (restrictedYonedaHomEquiv L α Q X).surjective g
        apply (restrictedYonedaHomEquiv L α P X).injective
        simp only [Equiv.apply_symm_apply, Equiv.symm_apply_apply]
        ext Y y
        dsimp [restrictedYonedaHomEquiv, restrictedYonedaHomEquiv', IsColimit.homEquiv]
        rw [assoc, assoc, ← L.map_comp_assoc]
        congr 3
        apply yonedaEquiv.injective
        simp [yonedaEquiv]
      homEquiv_naturality_right := fun {P X Y} f g => by
        apply (restrictedYonedaHomEquiv L α P Y).symm.injective
        simp only [Equiv.symm_apply_apply]
        dsimp [restrictedYonedaHomEquiv, restrictedYonedaHomEquiv', IsColimit.homEquiv]
        apply (Functor.isPointwiseLeftKanExtensionOfIsLeftKanExtension L α P).hom_ext
        intro p
        rw [IsColimit.fac]
        dsimp [restrictedYoneda, yonedaEquiv]
        simp only [assoc]
        congr 3
        apply yonedaEquiv.injective
        simp [yonedaEquiv] }

include α in
/-- Any left Kan extension along the Yoneda embedding preserves colimits. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant29d8cd1d54b5d0e4a122dc5f8d6b8742235e9fbd61a2e47e5c60b81027dc5584.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant29d8cd1d54b5d0e4a122dc5f8d6b8742235e9fbd61a2e47e5c60b81027dc5584.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac43a287dad7b1a0e1b11331b070f3c64e45d0a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
