# ObjectProperty.le_isCardinalPresentable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1c3f955950569c02ce9685cd712274ad52ba4f1a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 111,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c8d454d7f1c1072f998f60149cb8b7b0fb829b99e73890dcc8ef13cc9180e202.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ec2813ff-4576-164d-c2cc-56219d1d41ad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9504a394-7aca-39ff-394f-40a37f4c2d91",
  "kind": "lemma",
  "lexical_name": "ObjectProperty.le_isCardinalPresentable",
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
  "slug": "objectproperty-le-iscardinalpresentable--2fb10463b8e3d1e7d9ab4b68",
  "source": {
    "blob": "1c3f955950569c02ce9685cd712274ad52ba4f1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 111,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyPresentable/Variantc8d454d7f1c1072f998f60149cb8b7b0fb829b99e73890dcc8ef13cc9180e202.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2fb10463b8e3d1e7d9ab4b68b93acce53e544a20911d8b9f3ff2b58a28f076e0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyPresentable/Variantc8d454d7f1c1072f998f60149cb8b7b0fb829b99e73890dcc8ef13cc9180e202.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9504a394-7aca-39ff-394f-40a37f4c2d91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ObjectProperty.le_isCardinalPresentable
    {C : Type u} [Category.{v} C] [IsAccessibleCategory.{w} C]
    (P : ObjectProperty C) [ObjectProperty.EssentiallySmall.{w} P] :
    ∃ (κ' : Cardinal.{w}) (_ : Fact κ'.IsRegular),
      P ≤ isCardinalPresentable C κ' := by
  obtain ⟨Q, hQ, h₁, h₂⟩ := EssentiallySmall.exists_small_le.{w} P
  choose κ hκ' hκ using fun (X : Subtype Q) ↦
    Functor.IsAccessible.exists_cardinal (coyoneda.obj (op X.val))
  obtain ⟨κ', h₃, h₄⟩ := HasCardinalLT.exists_regular_cardinal_forall
    (fun i ↦ (κ i).ord.ToType)
  have : Fact κ'.IsRegular := ⟨h₃⟩
  refine ⟨κ', inferInstance, h₂.trans ((isoClosure_le_iff _ _).2 ?_)⟩
  intro X hX
  have := h₄ ⟨X, hX⟩
  simp only [hasCardinalLT_iff_cardinal_mk_lt, Cardinal.mk_toType,
    Cardinal.card_ord] at this
  exact isCardinalPresentable_monotone C this.le _ (hκ ⟨X, hX⟩)

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyPresentable/Variantc8d454d7f1c1072f998f60149cb8b7b0fb829b99e73890dcc8ef13cc9180e202.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyPresentable/Variantc8d454d7f1c1072f998f60149cb8b7b0fb829b99e73890dcc8ef13cc9180e202.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c3f955950569c02ce9685cd712274ad52ba4f1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
