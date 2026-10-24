# grothendieckTypeToCat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:66964b06d60eca0e1535ea8a817b46f7dafeff9fb9e1baa11d3bdc9f56e40e6a",
  "kind": "def",
  "lexical_name": "grothendieckTypeToCat",
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
  "slug": "grothendiecktypetocat--17c71d52acc664f280a96ab6",
  "source": {
    "blob": "06aac56f15140744f3cd3a5a1ba3c222d0dc5a05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 187,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantafc0663db51fad3930d699a00add2b7b252b7a7876966ac570cc293e20a133a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:17c71d52acc664f280a96ab6dbc1226a92e0c900ab5c29be840e6d1e91744803",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantafc0663db51fad3930d699a00add2b7b252b7a7876966ac570cc293e20a133a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:66964b06d60eca0e1535ea8a817b46f7dafeff9fb9e1baa11d3bdc9f56e40e6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def grothendieckTypeToCat : Grothendieck (G ⋙ typeToCat) ≌ G.Elements where
  functor := grothendieckTypeToCatFunctor G
  inverse := grothendieckTypeToCatInverse G
  unitIso :=
    NatIso.ofComponents
      (fun X => by
        rcases X with ⟨_, ⟨⟩⟩
        exact Iso.refl _)
      (by
        rintro ⟨_, ⟨⟩⟩ ⟨_, ⟨⟩⟩ ⟨base, ⟨⟨f⟩⟩⟩
        dsimp at *
        simp
        rfl )
  counitIso :=
    NatIso.ofComponents
      (fun X => by
        cases X
        exact Iso.refl _)
      (by
        rintro ⟨⟩ ⟨⟩ ⟨f, e⟩
        dsimp at *
        simp
        rfl)
  functor_unitIso_comp := by
    rintro ⟨_, ⟨⟩⟩
    dsimp
    simp
    rfl
set_option linter.uppercaseLean3 false in
#align category_theory.grothendieck.grothendieck_Type_to_Cat CategoryTheory.Grothendieck.grothendieckTypeToCat

end Grothendieck

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantafc0663db51fad3930d699a00add2b7b252b7a7876966ac570cc293e20a133a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantafc0663db51fad3930d699a00add2b7b252b7a7876966ac570cc293e20a133a9.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06aac56f15140744f3cd3a5a1ba3c222d0dc5a05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
