# lift_toCoprod_inl_eq_inl_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "76b69e1a328268fca3eaa8c1e900c9b465526387",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 186,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8e/8e7de2ba88577db19f4d3d9562938a3e4ca93342717b6f9e5ec87b6f546a74d5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:adc2363c-21ca-e655-67b5-d18fae3a5d9a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d97156af-51e3-e917-dc15-de4ebf5c5b3b",
  "kind": "lemma",
  "lexical_name": "lift_toCoprod_inl_eq_inl_mk",
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
  "slug": "lift-tocoprod-inl-eq-inl-mk--cee549b0563f6fd1ee7252bd",
  "source": {
    "blob": "76b69e1a328268fca3eaa8c1e900c9b465526387",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 186,
    "path": "GRWTSK/Algebra/GroupTheory/PresentedGroup/Variant8e7de2ba88577db19f4d3d9562938a3e4ca93342717b6f9e5ec87b6f546a74d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cee549b0563f6fd1ee7252bde7d9b93cce3785c05861c09939c84c0a9aa5a49b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/PresentedGroup/Variant8e7de2ba88577db19f4d3d9562938a3e4ca93342717b6f9e5ec87b6f546a74d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d97156af-51e3-e917-dc15-de4ebf5c5b3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lift_toCoprod_inl_eq_inl_mk : (FreeGroup.lift (toCoprod rels₁ rels₂)).comp
    (FreeGroup.map Sum.inl) = Monoid.Coprod.inl.comp (mk rels₁) :=
  FreeGroup.ext_hom _ _ fun _ ↦ rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/PresentedGroup/Variant8e7de2ba88577db19f4d3d9562938a3e4ca93342717b6f9e5ec87b6f546a74d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/PresentedGroup/Variant8e7de2ba88577db19f4d3d9562938a3e4ca93342717b6f9e5ec87b6f546a74d5.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76b69e1a328268fca3eaa8c1e900c9b465526387` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
