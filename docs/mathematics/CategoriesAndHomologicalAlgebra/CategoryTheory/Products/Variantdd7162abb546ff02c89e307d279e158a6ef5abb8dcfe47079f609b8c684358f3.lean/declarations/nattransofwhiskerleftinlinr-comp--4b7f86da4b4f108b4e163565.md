# natTransOfWhiskerLeftInlInr_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9fdc68d5-dae1-313b-c88b-33ea14befd31",
  "kind": "lemma",
  "lexical_name": "natTransOfWhiskerLeftInlInr_comp",
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
  "slug": "nattransofwhiskerleftinlinr-comp--4b7f86da4b4f108b4e163565",
  "source": {
    "blob": "ce20d7659ae1a013b73e1b3918adc475044fe813",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 138,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantdd7162abb546ff02c89e307d279e158a6ef5abb8dcfe47079f609b8c684358f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b7f86da4b4f108b4e163565e1859ed8eafb515a3d4d5c5cbcc130ede811c17c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantdd7162abb546ff02c89e307d279e158a6ef5abb8dcfe47079f609b8c684358f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9fdc68d5-dae1-313b-c88b-33ea14befd31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma natTransOfWhiskerLeftInlInr_comp {F G H : A ⊕ A' ⥤ B}
    (η₁ : Sum.inl_ A A' ⋙ F ⟶ Sum.inl_ A A' ⋙ G) (η₂ : Sum.inr_ A A' ⋙ F ⟶ Sum.inr_ A A' ⋙ G)
    (ν₁ : Sum.inl_ A A' ⋙ G ⟶ Sum.inl_ A A' ⋙ H) (ν₂ : Sum.inr_ A A' ⋙ G ⟶ Sum.inr_ A A' ⋙ H) :
    natTransOfWhiskerLeftInlInr (η₁ ≫ ν₁) (η₂ ≫ ν₂) = natTransOfWhiskerLeftInlInr η₁ η₂ ≫
      natTransOfWhiskerLeftInlInr ν₁ ν₂ := by
  cat_disch

set_option backward.isDefEq.respectTransparency false in
/-- A consequence of `functorEquiv`: we can construct a natural isomorphism of functors
`A ⊕ A' ⥤ B` from the data of natural isomorphisms of their whiskering with `inl_` and `inr_`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantdd7162abb546ff02c89e307d279e158a6ef5abb8dcfe47079f609b8c684358f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantdd7162abb546ff02c89e307d279e158a6ef5abb8dcfe47079f609b8c684358f3.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce20d7659ae1a013b73e1b3918adc475044fe813` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
