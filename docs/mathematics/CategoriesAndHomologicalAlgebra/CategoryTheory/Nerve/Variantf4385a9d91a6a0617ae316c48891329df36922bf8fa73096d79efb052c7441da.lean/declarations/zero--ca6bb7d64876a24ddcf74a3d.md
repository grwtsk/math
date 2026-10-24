# δ₂_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d88a7da9f6445119bdec984d0a60ac75b11d05aa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 158,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f4385a9d91a6a0617ae316c48891329df36922bf8fa73096d79efb052c7441da.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7fd94f1e-6358-2d8a-6872-3c55946c1203",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6cdef37c-bcce-e61c-8fad-5a888a8deb95",
  "kind": "lemma",
  "lexical_name": "δ₂_zero",
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
  "slug": "zero--ca6bb7d64876a24ddcf74a3d",
  "source": {
    "blob": "d88a7da9f6445119bdec984d0a60ac75b11d05aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 158,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Nerve/Variantf4385a9d91a6a0617ae316c48891329df36922bf8fa73096d79efb052c7441da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca6bb7d64876a24ddcf74a3d4ca4ee7f0016db6260b6d1774c70be7362fec837",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Nerve/Variantf4385a9d91a6a0617ae316c48891329df36922bf8fa73096d79efb052c7441da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6cdef37c-bcce-e61c-8fad-5a888a8deb95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma δ₂_zero (x : ComposableArrows C 2) :
    (nerve C).δ 0 x = .mk₁ (x.map' 1 2) :=
  ComposableArrows.ext₁ rfl rfl (by cat_disch)

section

attribute [local ext (iff := false)] ComposableArrows.ext₀ ComposableArrows.ext₁

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
/-- Bijection between edges in the nerve of category and morphisms in the category. -/
@[simps -isSimp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Nerve/Variantf4385a9d91a6a0617ae316c48891329df36922bf8fa73096d79efb052c7441da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Nerve/Variantf4385a9d91a6a0617ae316c48891329df36922bf8fa73096d79efb052c7441da.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d88a7da9f6445119bdec984d0a60ac75b11d05aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
