# toNatTrans_mateEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b839dde35f22a5fe4857a63d03f0b051aad237a1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e3/e39eb07def1d792e19ab51908932b462ca90e015e06116e925302e9c5fbc09df.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:637bf6cc-0dc6-2119-25b1-5eff254ad4a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:41111c36-6e62-dcc4-5a5f-a1f9a006c3b6",
  "kind": "lemma",
  "lexical_name": "toNatTrans_mateEquiv",
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
  "slug": "tonattrans-mateequiv--25c9375aab810bb8ad5ea0f4",
  "source": {
    "blob": "b839dde35f22a5fe4857a63d03f0b051aad237a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 89,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variante39eb07def1d792e19ab51908932b462ca90e015e06116e925302e9c5fbc09df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25c9375aab810bb8ad5ea0f45b4e43ba04e2429466c3a73946ff8677f387613a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variante39eb07def1d792e19ab51908932b462ca90e015e06116e925302e9c5fbc09df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41111c36-6e62-dcc4-5a5f-a1f9a006c3b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toNatTrans_mateEquiv {C D E F : Cat}
    {G : C ⟶ E} {H : D ⟶ F} {L₁ : C ⟶ D} {R₁ : D ⟶ C} {L₂ : E ⟶ F} {R₂ : F ⟶ E}
    (adj₁ : Bicategory.Adjunction L₁ R₁) (adj₂ : Bicategory.Adjunction L₂ R₂)
    (f : G ≫ L₂ ⟶ L₁ ≫ H) :
    (Bicategory.mateEquiv adj₁ adj₂ f).toNatTrans =
      CategoryTheory.mateEquiv (Adjunction.ofCat adj₁) (Adjunction.ofCat adj₂) f.toNatTrans := by
  ext X
  simp [mateEquiv, Adjunction.homEquiv₁, Adjunction.homEquiv₂]

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variante39eb07def1d792e19ab51908932b462ca90e015e06116e925302e9c5fbc09df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variante39eb07def1d792e19ab51908932b462ca90e015e06116e925302e9c5fbc09df.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b839dde35f22a5fe4857a63d03f0b051aad237a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
