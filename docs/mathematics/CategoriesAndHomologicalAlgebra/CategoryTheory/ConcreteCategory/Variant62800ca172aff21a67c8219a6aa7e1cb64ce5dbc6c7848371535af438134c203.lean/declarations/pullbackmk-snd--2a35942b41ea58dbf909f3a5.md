# pullbackMk_snd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "62af924aff9a558ab30b002cbc4ce325a0cde375",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 218,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/62800ca172aff21a67c8219a6aa7e1cb64ce5dbc6c7848371535af438134c203.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:69240d97-8ebc-4a92-4c9a-bb02246c5121",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b0fc4d66-25ec-4d35-f035-0c33eef8a6ea",
  "kind": "lemma",
  "lexical_name": "pullbackMk_snd",
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
  "slug": "pullbackmk-snd--2a35942b41ea58dbf909f3a5",
  "source": {
    "blob": "62af924aff9a558ab30b002cbc4ce325a0cde375",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 218,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant62800ca172aff21a67c8219a6aa7e1cb64ce5dbc6c7848371535af438134c203.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a35942b41ea58dbf909f3a52d0917871234dd436f8628e5a07f516ee6d71ddd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant62800ca172aff21a67c8219a6aa7e1cb64ce5dbc6c7848371535af438134c203.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0fc4d66-25ec-4d35-f035-0c33eef8a6ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pullbackMk_snd (x₁ : ToType X₁) (x₂ : ToType X₂) (h : f₁ x₁ = f₂ x₂) :
    pullback.snd f₁ f₂ (pullbackMk f₁ f₂ x₁ x₂ h) = x₂ :=
  (congr_fun (PreservesPullback.iso_inv_snd (forget C) f₁ f₂) _).trans
    (congr_fun (Types.pullbackIsoPullback_inv_snd ⇑(ConcreteCategory.hom f₁)
      ⇑(ConcreteCategory.hom f₂)) _)

end Pullbacks

section WidePullback

variable {FC : C → C → Type*} {CC : C → Type (max v w)} [∀ X Y, FunLike (FC X Y) (CC X) (CC Y)]
variable [ConcreteCategory.{max v w} C FC]

open WidePullback

open WidePullbackShape

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant62800ca172aff21a67c8219a6aa7e1cb64ce5dbc6c7848371535af438134c203.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant62800ca172aff21a67c8219a6aa7e1cb64ce5dbc6c7848371535af438134c203.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62af924aff9a558ab30b002cbc4ce325a0cde375` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
