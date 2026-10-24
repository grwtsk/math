# quotientFunctor_map_cons

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9a758752854e65a152db9e7334d96af89aa4a9b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 193,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/378e2be4abc7a0224a959257e281bb2abccaa4dfc89a8a276bfa5cb0d8672c73.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bf2908a7-2b1f-b3a5-8fd5-12ac9192e330",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bcf89e82-7bb6-0781-1960-0c070c578e5e",
  "kind": "lemma",
  "lexical_name": "quotientFunctor_map_cons",
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
  "slug": "quotientfunctor-map-cons--562c197bbf03e76bcdbb2a5a",
  "source": {
    "blob": "9a758752854e65a152db9e7334d96af89aa4a9b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 193,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variant378e2be4abc7a0224a959257e281bb2abccaa4dfc89a8a276bfa5cb0d8672c73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:562c197bbf03e76bcdbb2a5a4b67fcd6d848eaff88068840d6eb420da38d98ba",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variant378e2be4abc7a0224a959257e281bb2abccaa4dfc89a8a276bfa5cb0d8672c73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bcf89e82-7bb6-0781-1960-0c070c578e5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma quotientFunctor_map_cons {x y z : Paths V}
    (p : x ⟶ y) (q : Quiver.Hom (V := V) y z) :
    (quotientFunctor V).map (p.cons q : x ⟶ z) =
      (quotientFunctor V).map p ≫ homMk q :=
  rfl

variable (V) in
/-- The property of morphisms in `FreeRefl V` which are of the form `homMk f`
for some morphism `f : x ⟶ y` in `V`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variant378e2be4abc7a0224a959257e281bb2abccaa4dfc89a8a276bfa5cb0d8672c73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variant378e2be4abc7a0224a959257e281bb2abccaa4dfc89a8a276bfa5cb0d8672c73.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a758752854e65a152db9e7334d96af89aa4a9b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
