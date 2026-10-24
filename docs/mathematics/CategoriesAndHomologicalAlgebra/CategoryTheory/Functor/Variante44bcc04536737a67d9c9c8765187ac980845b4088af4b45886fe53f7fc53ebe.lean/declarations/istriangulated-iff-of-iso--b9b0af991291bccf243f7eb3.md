# isTriangulated_iff_of_iso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bf51ae4fe7ed4c486653a298be21989e62b5f267",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 229,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e44bcc04536737a67d9c9c8765187ac980845b4088af4b45886fe53f7fc53ebe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:58adf0ea-6aef-a9b4-ff7a-1ab60f65e1a4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bf173b21-6841-5630-a4a8-e58e49f7923f",
  "kind": "lemma",
  "lexical_name": "isTriangulated_iff_of_iso",
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
  "slug": "istriangulated-iff-of-iso--b9b0af991291bccf243f7eb3",
  "source": {
    "blob": "bf51ae4fe7ed4c486653a298be21989e62b5f267",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 229,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variante44bcc04536737a67d9c9c8765187ac980845b4088af4b45886fe53f7fc53ebe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9b0af991291bccf243f7eb31a018fa6076f6470b221b3d8232371a0f06a8838",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variante44bcc04536737a67d9c9c8765187ac980845b4088af4b45886fe53f7fc53ebe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf173b21-6841-5630-a4a8-e58e49f7923f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isTriangulated_iff_of_iso {F₁ F₂ : C ⥤ D} (e : F₁ ≅ F₂) [F₁.CommShift ℤ] [F₂.CommShift ℤ]
    [NatTrans.CommShift e.hom ℤ] : F₁.IsTriangulated ↔ F₂.IsTriangulated := by
  constructor
  · intro
    exact isTriangulated_of_iso e
  · intro
    have : NatTrans.CommShift e.symm.hom ℤ := inferInstanceAs (NatTrans.CommShift e.inv ℤ)
    exact isTriangulated_of_iso e.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variante44bcc04536737a67d9c9c8765187ac980845b4088af4b45886fe53f7fc53ebe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variante44bcc04536737a67d9c9c8765187ac980845b4088af4b45886fe53f7fc53ebe.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf51ae4fe7ed4c486653a298be21989e62b5f267` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
