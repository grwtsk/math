# isCoseparator_iff_faithful_preadditiveYonedaObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c6ad070-d86b-488b-f566-27999806aaba",
  "kind": "theorem",
  "lexical_name": "isCoseparator_iff_faithful_preadditiveYonedaObj",
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
  "slug": "iscoseparator-iff-faithful-preadditiveyonedaobj--120ba2b518b1f0e93f9b6e88",
  "source": {
    "blob": "8de606d58c913af9e409b98acbd775d0c78f417c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 76,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant04ec4b45f9606dfc76e8d90626538e55682a878a7d25484795dde42169603cd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:120ba2b518b1f0e93f9b6e887ab8529e7abb332c408a2df0971c85dfa6ee2ec5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant04ec4b45f9606dfc76e8d90626538e55682a878a7d25484795dde42169603cd3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c6ad070-d86b-488b-f566-27999806aaba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCoseparator_iff_faithful_preadditiveYonedaObj (G : C) :
    IsCoseparator G ↔ (preadditiveYonedaObj G).Faithful := by
  rw [isCoseparator_iff_faithful_preadditiveYoneda, preadditiveYoneda_obj]
  exact ⟨fun h => Functor.Faithful.of_comp _ (forget₂ _ AddCommGrp.{v}),
    fun h => Functor.Faithful.comp _ _⟩

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant04ec4b45f9606dfc76e8d90626538e55682a878a7d25484795dde42169603cd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant04ec4b45f9606dfc76e8d90626538e55682a878a7d25484795dde42169603cd3.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8de606d58c913af9e409b98acbd775d0c78f417c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
