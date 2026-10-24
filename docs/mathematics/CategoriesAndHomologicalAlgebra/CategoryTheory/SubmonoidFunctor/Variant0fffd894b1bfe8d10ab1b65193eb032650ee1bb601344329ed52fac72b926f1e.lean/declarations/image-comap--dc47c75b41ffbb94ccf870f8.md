# image_comap_ι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "644326b2a4d55a9a93133d07cb67f24761c9ee2b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0fffd894b1bfe8d10ab1b65193eb032650ee1bb601344329ed52fac72b926f1e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8ee9d95a-2e29-aaca-8fa9-efe7d88be139",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:81e6fc8e-0fda-19a3-7949-2d511838a55b",
  "kind": "lemma",
  "lexical_name": "image_comap_ι",
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
  "slug": "image-comap--dc47c75b41ffbb94ccf870f8",
  "source": {
    "blob": "644326b2a4d55a9a93133d07cb67f24761c9ee2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 160,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SubmonoidFunctor/Variant0fffd894b1bfe8d10ab1b65193eb032650ee1bb601344329ed52fac72b926f1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc47c75b41ffbb94ccf870f8edecefffd7c79158a94ecf1ad1cdcda137f9460f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SubmonoidFunctor/Variant0fffd894b1bfe8d10ab1b65193eb032650ee1bb601344329ed52fac72b926f1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81e6fc8e-0fda-19a3-7949-2d511838a55b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma image_comap_ι : image S.ι (comap S.ι S) = S := by aesop

end comap

section lift

variable (p : M ⟶ M') (S : SubmonoidFunctor M) (S' : SubmonoidFunctor M')
  (hp : image p ⊤ ≤ S')

set_option backward.defeqAttrib.useBackward true in
/-- If the image of morphism `M' ⟶ M` lands in a submonoid functor `S`,
then the morphism factors through it. -/
@[simps! app]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SubmonoidFunctor/Variant0fffd894b1bfe8d10ab1b65193eb032650ee1bb601344329ed52fac72b926f1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SubmonoidFunctor/Variant0fffd894b1bfe8d10ab1b65193eb032650ee1bb601344329ed52fac72b926f1e.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `644326b2a4d55a9a93133d07cb67f24761c9ee2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
