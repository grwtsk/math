# mk_eq_of_naturality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e07785463b5a9a3260aca17b5e3ca859e1dec7f1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 221,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d2/d25cde2df3f1d4f8127b8e47fee5052c0b1f4f93d172bcbcb3f4f9649a74333a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7c411865-d50a-32b6-0240-c74ad9ebed7f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fdff7b14-db41-38c7-3c09-1b56368aaf6e",
  "kind": "theorem",
  "lexical_name": "mk_eq_of_naturality",
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
  "slug": "mk-eq-of-naturality--34ebfa7480d7d6d4d444d59d",
  "source": {
    "blob": "e07785463b5a9a3260aca17b5e3ca859e1dec7f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 221,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variantd25cde2df3f1d4f8127b8e47fee5052c0b1f4f93d172bcbcb3f4f9649a74333a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34ebfa7480d7d6d4d444d59d64726c64061f3097c8b4cf0235e1bf0d6ae2b05a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variantd25cde2df3f1d4f8127b8e47fee5052c0b1f4f93d172bcbcb3f4f9649a74333a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fdff7b14-db41-38c7-3c09-1b56368aaf6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_eq_of_naturality {f g f' : C} {η θ : f ⟶ g} {η' θ' : f ≅ g}
    (η_f : 𝟙_ C ⊗ f ≅ f') (η_g : 𝟙_ C ⊗ g ≅ f')
    (η_hom : η'.hom = η) (Θ_hom : θ'.hom = θ)
    (Hη : whiskerLeftIso (𝟙_ C) η' ≪≫ η_g = η_f)
    (Hθ : whiskerLeftIso (𝟙_ C) θ' ≪≫ η_g = η_f) : η = θ :=
  calc
    η = η'.hom := η_hom.symm
    _ = (λ_ f).inv ≫ η_f.hom ≫ η_g.inv ≫ (λ_ g).hom := by
      simp [← reassoc_of% (congrArg Iso.hom Hη)]
    _ = θ'.hom := by
      simp [← reassoc_of% (congrArg Iso.hom Hθ)]
    _ = θ := Θ_hom

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variantd25cde2df3f1d4f8127b8e47fee5052c0b1f4f93d172bcbcb3f4f9649a74333a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variantd25cde2df3f1d4f8127b8e47fee5052c0b1f4f93d172bcbcb3f4f9649a74333a.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e07785463b5a9a3260aca17b5e3ca859e1dec7f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
