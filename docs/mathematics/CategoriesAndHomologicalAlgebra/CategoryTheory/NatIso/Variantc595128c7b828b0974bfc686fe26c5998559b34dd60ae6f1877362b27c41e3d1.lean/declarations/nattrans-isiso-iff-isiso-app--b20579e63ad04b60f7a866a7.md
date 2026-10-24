# NatTrans.isIso_iff_isIso_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8626f4a69400b37d390874f70275efd4086a51e4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 255,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c595128c7b828b0974bfc686fe26c5998559b34dd60ae6f1877362b27c41e3d1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9c296032-1873-ff5c-1010-115dee0923a2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:18279e44-2b93-e082-6506-f5e24a6462a6",
  "kind": "lemma",
  "lexical_name": "NatTrans.isIso_iff_isIso_app",
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
  "slug": "nattrans-isiso-iff-isiso-app--b20579e63ad04b60f7a866a7",
  "source": {
    "blob": "8626f4a69400b37d390874f70275efd4086a51e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 255,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantc595128c7b828b0974bfc686fe26c5998559b34dd60ae6f1877362b27c41e3d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b20579e63ad04b60f7a866a76b808beea39c236455b763f3e6a98de021fe9587",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantc595128c7b828b0974bfc686fe26c5998559b34dd60ae6f1877362b27c41e3d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18279e44-2b93-e082-6506-f5e24a6462a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma NatTrans.isIso_iff_isIso_app {F G : C ⥤ D} (τ : F ⟶ G) :
    IsIso τ ↔ ∀ X, IsIso (τ.app X) :=
  ⟨fun _ ↦ inferInstance, fun _ ↦ NatIso.isIso_of_isIso_app _⟩

namespace Functor

variable (F : C ⥤ D) (obj : C → D) (e : ∀ X, F.obj X ≅ obj X)

/-- Constructor for a functor that is isomorphic to a given functor `F : C ⥤ D`,
while being definitionally equal on objects to a given map `obj : C → D`
such that for all `X : C`, we have an isomorphism `F.obj X ≅ obj X`. -/
@[simps obj]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantc595128c7b828b0974bfc686fe26c5998559b34dd60ae6f1877362b27c41e3d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NatIso/Variantc595128c7b828b0974bfc686fe26c5998559b34dd60ae6f1877362b27c41e3d1.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8626f4a69400b37d390874f70275efd4086a51e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
