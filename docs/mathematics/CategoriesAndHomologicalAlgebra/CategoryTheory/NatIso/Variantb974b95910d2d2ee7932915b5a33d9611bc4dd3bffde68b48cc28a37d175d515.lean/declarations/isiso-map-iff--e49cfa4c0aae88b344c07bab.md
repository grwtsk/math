# isIso_map_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f109013b3bf27dc89850e9508778cfce1dc3fd30",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 209,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b974b95910d2d2ee7932915b5a33d9611bc4dd3bffde68b48cc28a37d175d515.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0185f580-e5f2-4c24-2573-497d0c97e8a7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c3dbfdd9-7fcb-4946-6e2e-7e8480e48e16",
  "kind": "theorem",
  "lexical_name": "isIso_map_iff",
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
  "slug": "isiso-map-iff--e49cfa4c0aae88b344c07bab",
  "source": {
    "blob": "f109013b3bf27dc89850e9508778cfce1dc3fd30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 209,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantb974b95910d2d2ee7932915b5a33d9611bc4dd3bffde68b48cc28a37d175d515.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e49cfa4c0aae88b344c07bab57a2f971081b13140bf8007f69e5a88664540d6b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantb974b95910d2d2ee7932915b5a33d9611bc4dd3bffde68b48cc28a37d175d515.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3dbfdd9-7fcb-4946-6e2e-7e8480e48e16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isIso_map_iff {F₁ F₂ : C ⥤ D} (e : F₁ ≅ F₂) {X Y : C} (f : X ⟶ Y) :
    IsIso (F₁.map f) ↔ IsIso (F₂.map f) := by
  revert F₁ F₂
  suffices ∀ {F₁ F₂ : C ⥤ D} (_ : F₁ ≅ F₂) (_ : IsIso (F₁.map f)), IsIso (F₂.map f) from
    fun F₁ F₂ e => ⟨this e, this e.symm⟩
  intro F₁ F₂ e hf
  exact IsIso.mk ⟨e.inv.app Y ≫ inv (F₁.map f) ≫ e.hom.app X, by cat_disch⟩

end NatIso

@[to_dual self]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantb974b95910d2d2ee7932915b5a33d9611bc4dd3bffde68b48cc28a37d175d515.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantb974b95910d2d2ee7932915b5a33d9611bc4dd3bffde68b48cc28a37d175d515.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f109013b3bf27dc89850e9508778cfce1dc3fd30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
