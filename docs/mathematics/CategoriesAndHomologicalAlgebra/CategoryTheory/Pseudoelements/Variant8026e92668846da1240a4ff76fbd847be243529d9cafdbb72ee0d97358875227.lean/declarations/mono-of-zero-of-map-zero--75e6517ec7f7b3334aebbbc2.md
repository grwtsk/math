# mono_of_zero_of_map_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2bd508d07b5808a2aa284f679425a46b1be2f01d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 321,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5490b89f-cb0f-816f-3fa2-e6b2fff407f3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b5156578-78da-e756-2349-0da6cafd2d55",
  "kind": "theorem",
  "lexical_name": "mono_of_zero_of_map_zero",
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
  "slug": "mono-of-zero-of-map-zero--75e6517ec7f7b3334aebbbc2",
  "source": {
    "blob": "2bd508d07b5808a2aa284f679425a46b1be2f01d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 321,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75e6517ec7f7b3334aebbbc2f68ba37a32abe53fff0c611d3590a844c8663329",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5156578-78da-e756-2349-0da6cafd2d55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mono_of_zero_of_map_zero {P Q : C} (f : P ⟶ Q) : (∀ a, f a = 0 → a = 0) → Mono f :=
  fun h => (mono_iff_cancel_zero _).2 fun _ g hg =>
    (pseudoZero_iff (g : Over P)).1 <|
      h _ <| show f g = 0 from (pseudoZero_iff (g ≫ f : Over Q)).2 hg
#align category_theory.abelian.pseudoelement.mono_of_zero_of_map_zero CategoryTheory.Abelian.Pseudoelement.mono_of_zero_of_map_zero

section

/-- An epimorphism is surjective on pseudoelements. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bd508d07b5808a2aa284f679425a46b1be2f01d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
