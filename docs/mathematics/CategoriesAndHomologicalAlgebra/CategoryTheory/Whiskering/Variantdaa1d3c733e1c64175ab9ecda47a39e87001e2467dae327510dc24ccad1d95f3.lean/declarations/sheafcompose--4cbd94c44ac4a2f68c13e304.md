# sheafCompose

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b080e2849a0f6b80247ce316c3ffe4459a69192abf27745324190b707d16b500",
  "kind": "def",
  "lexical_name": "sheafCompose",
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
  "slug": "sheafcompose--4cbd94c44ac4a2f68c13e304",
  "source": {
    "blob": "071e1b36be904bd8dddadc0b3ece0a267cf6126e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 136,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variantdaa1d3c733e1c64175ab9ecda47a39e87001e2467dae327510dc24ccad1d95f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4cbd94c44ac4a2f68c13e30421ff036eae21f461e4092d6e04472eadaae61dc9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variantdaa1d3c733e1c64175ab9ecda47a39e87001e2467dae327510dc24ccad1d95f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b080e2849a0f6b80247ce316c3ffe4459a69192abf27745324190b707d16b500`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sheafCompose : Sheaf J A ⥤ Sheaf J B where
  obj G := ⟨G.val ⋙ F, Presheaf.IsSheaf.comp _ G.2⟩
  map η := ⟨whiskerRight η.val _⟩
  map_id _ := Sheaf.Hom.ext _ _ <| whiskerRight_id _
  map_comp _ _ := Sheaf.Hom.ext _ _ <| whiskerRight_comp _ _ _
set_option linter.uppercaseLean3 false in
#align category_theory.Sheaf_compose CategoryTheory.sheafCompose

variable {F G}

/--
If `η : F ⟶ G` is a natural transformation then we obtain a morphism of functors
`sheafCompose J F ⟶ sheafCompose J G` by whiskering with `η` on the level of presheaves.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variantdaa1d3c733e1c64175ab9ecda47a39e87001e2467dae327510dc24ccad1d95f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variantdaa1d3c733e1c64175ab9ecda47a39e87001e2467dae327510dc24ccad1d95f3.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `071e1b36be904bd8dddadc0b3ece0a267cf6126e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
