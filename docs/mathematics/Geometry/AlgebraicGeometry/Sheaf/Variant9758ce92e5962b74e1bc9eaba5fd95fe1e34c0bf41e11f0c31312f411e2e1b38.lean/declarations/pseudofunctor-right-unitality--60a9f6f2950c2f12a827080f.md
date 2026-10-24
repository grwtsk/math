# pseudofunctor_right_unitality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8745af7611e0d31a11b9e912b41a5ce13546a17a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 296,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/9758ce92e5962b74e1bc9eaba5fd95fe1e34c0bf41e11f0c31312f411e2e1b38.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9e06ee75-d35f-b6b0-dd69-88203d4aa799",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b37ee807-d011-4e8b-4e1a-e063242f2495",
  "kind": "lemma",
  "lexical_name": "pseudofunctor_right_unitality",
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
  "slug": "pseudofunctor-right-unitality--60a9f6f2950c2f12a827080f",
  "source": {
    "blob": "8745af7611e0d31a11b9e912b41a5ce13546a17a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 296,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Sheaf/Variant9758ce92e5962b74e1bc9eaba5fd95fe1e34c0bf41e11f0c31312f411e2e1b38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60a9f6f2950c2f12a827080ffd6da21d7d6e06658e9ba62d8d75c19fc52993f9",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Sheaf/Variant9758ce92e5962b74e1bc9eaba5fd95fe1e34c0bf41e11f0c31312f411e2e1b38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b37ee807-d011-4e8b-4e1a-e063242f2495`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pseudofunctor_right_unitality :
    (pullbackComp (𝟙 X) f).inv ≫
      Functor.whiskerLeft (pullback f) (pullbackId X).hom ≫ (Functor.rightUnitor _).hom =
        eqToHom (by simp) := by
  let e₁ := pullbackComp (𝟙 _) f
  let e₂ := Functor.isoWhiskerLeft (pullback f) (pullbackId _)
  let e₃ := (pullback f).rightUnitor
  change e₁.inv ≫ e₂.hom ≫ e₃.hom = _
  have : e₁.hom = e₂.hom ≫ e₃.hom :=
    congr_arg Iso.hom (SheafOfModules.pullback_comp_id.{u} f.toRingCatSheafHom)
  simp [← this]

set_option backward.defeqAttrib.useBackward true in
attribute [local simp] pseudofunctor_associativity pseudofunctor_left_unitality
  pseudofunctor_right_unitality Bicategory.toNatTrans_conjugateEquiv
  conjugateEquiv_pullbackId_hom Adjunction.ofCat_comp conjugateEquiv_pullbackComp_inv in
/-- The pseudofunctor from `Schemeᵒᵖ` to the bicategory of adjunctions which sends
a scheme `X` to the category `X.Modules` of sheaves of modules over `X`.
(This contains both the covariant and the contravariant functorialities of
these categories.) -/
@[simps! obj_obj map_l map_r map_adj
  mapId_hom_τl mapId_hom_τr mapId_inv_τl mapId_inv_τr
  mapComp_hom_τl mapComp_hom_τr mapComp_inv_τl mapComp_inv_τr]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Sheaf/Variant9758ce92e5962b74e1bc9eaba5fd95fe1e34c0bf41e11f0c31312f411e2e1b38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Sheaf/Variant9758ce92e5962b74e1bc9eaba5fd95fe1e34c0bf41e11f0c31312f411e2e1b38.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8745af7611e0d31a11b9e912b41a5ce13546a17a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
