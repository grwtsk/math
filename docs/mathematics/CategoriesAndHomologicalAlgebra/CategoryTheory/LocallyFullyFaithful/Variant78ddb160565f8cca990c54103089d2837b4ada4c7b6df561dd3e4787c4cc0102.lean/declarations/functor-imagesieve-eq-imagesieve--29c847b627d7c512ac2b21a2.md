# Functor.imageSieve_eq_imageSieve

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8dc9b5db19e40df7a395a0cacd093a7806d21efb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/78/78ddb160565f8cca990c54103089d2837b4ada4c7b6df561dd3e4787c4cc0102.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d1d4040f-924b-2f0d-4a92-546a0e38626e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e8509d34-4e6e-78eb-37ed-160c2383510c",
  "kind": "lemma",
  "lexical_name": "Functor.imageSieve_eq_imageSieve",
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
  "slug": "functor-imagesieve-eq-imagesieve--29c847b627d7c512ac2b21a2",
  "source": {
    "blob": "8dc9b5db19e40df7a395a0cacd093a7806d21efb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 69,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant78ddb160565f8cca990c54103089d2837b4ada4c7b6df561dd3e4787c4cc0102.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29c847b627d7c512ac2b21a2577b82c92842bdeeb55e5f047ac8aaa74a13d63d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant78ddb160565f8cca990c54103089d2837b4ada4c7b6df561dd3e4787c4cc0102.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8509d34-4e6e-78eb-37ed-160c2383510c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Functor.imageSieve_eq_imageSieve {D : Type uD} [Category.{vC} D] (G : C ⥤ D) {U V : C}
    (f : G.obj U ⟶ G.obj V) :
    G.imageSieve f = Presheaf.imageSieve (yonedaMap G V) f := rfl

open Presieve Opposite

namespace Functor

/--
A functor `G : C ⥤ D` is locally full wrt a topology on `D` if for every `f : G.obj U ⟶ G.obj V`,
the set of `G.map fᵢ : G.obj Wᵢ ⟶ G.obj U` such that `G.map fᵢ ≫ f` is
in the image of `G` is a coverage of the topology on `D`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant78ddb160565f8cca990c54103089d2837b4ada4c7b6df561dd3e4787c4cc0102.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant78ddb160565f8cca990c54103089d2837b4ada4c7b6df561dd3e4787c4cc0102.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dc9b5db19e40df7a395a0cacd093a7806d21efb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
