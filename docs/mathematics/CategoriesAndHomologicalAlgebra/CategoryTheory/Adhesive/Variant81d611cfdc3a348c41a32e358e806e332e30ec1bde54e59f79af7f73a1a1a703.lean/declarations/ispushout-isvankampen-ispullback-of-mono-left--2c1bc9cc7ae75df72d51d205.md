# IsPushout.IsVanKampen.isPullback_of_mono_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "359481872780845c029f738342224ea56b3781a4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 191,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/81d611cfdc3a348c41a32e358e806e332e30ec1bde54e59f79af7f73a1a1a703.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c5ec613b-2a02-bf65-c070-9e5ac59aa8d1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b5937639-11d6-8256-8a0c-168b627c23af",
  "kind": "theorem",
  "lexical_name": "IsPushout.IsVanKampen.isPullback_of_mono_left",
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
  "slug": "ispushout-isvankampen-ispullback-of-mono-left--2c1bc9cc7ae75df72d51d205",
  "source": {
    "blob": "359481872780845c029f738342224ea56b3781a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 191,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant81d611cfdc3a348c41a32e358e806e332e30ec1bde54e59f79af7f73a1a1a703.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c1bc9cc7ae75df72d51d205582157841929843ad9ef38fa00801c2403dbcb5d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant81d611cfdc3a348c41a32e358e806e332e30ec1bde54e59f79af7f73a1a1a703.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5937639-11d6-8256-8a0c-168b627c23af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPushout.IsVanKampen.isPullback_of_mono_left [Mono f] {H : IsPushout f g h i}
    (H' : H.IsVanKampen) : IsPullback f g h i :=
  ((H' (𝟙 _) g g (𝟙 Y) (𝟙 _) f (𝟙 _) i (IsKernelPair.id_of_mono f)
      (IsPullback.of_vert_isIso ⟨by simp⟩) H.1.flip ⟨rfl⟩ ⟨by simp⟩).mp
    (IsPushout.of_horiz_isIso ⟨by simp⟩)).1.flip
#align category_theory.is_pushout.is_van_kampen.is_pullback_of_mono_left CategoryTheory.IsPushout.IsVanKampen.isPullback_of_mono_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant81d611cfdc3a348c41a32e358e806e332e30ec1bde54e59f79af7f73a1a1a703.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant81d611cfdc3a348c41a32e358e806e332e30ec1bde54e59f79af7f73a1a1a703.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `359481872780845c029f738342224ea56b3781a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
