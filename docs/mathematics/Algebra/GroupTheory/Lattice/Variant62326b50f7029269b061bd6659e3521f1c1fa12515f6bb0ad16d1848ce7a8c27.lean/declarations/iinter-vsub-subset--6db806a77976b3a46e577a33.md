# iInter₂_vsub_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1607b82cf68afe5fd8cd30c7bff456fcc8a9ae6a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 329,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5b24d734-ebca-c5d7-4556-8a7b8aba2acc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3f39f70f-3b76-9af8-414a-02da42cd5067",
  "kind": "lemma",
  "lexical_name": "iInter₂_vsub_subset",
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
  "slug": "iinter-vsub-subset--6db806a77976b3a46e577a33",
  "source": {
    "blob": "1607b82cf68afe5fd8cd30c7bff456fcc8a9ae6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 329,
    "path": "GRWTSK/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6db806a77976b3a46e577a339aa2a4079ccafb1b6d117ea387a339e4c4d4935f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f39f70f-3b76-9af8-414a-02da42cd5067`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iInter₂_vsub_subset (s : ∀ i, κ i → Set β) (t : Set β) :
    (⋂ i, ⋂ j, s i j) -ᵥ t ⊆ ⋂ i, ⋂ j, s i j -ᵥ t := image2_iInter₂_subset_left ..

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Lattice/Variant62326b50f7029269b061bd6659e3521f1c1fa12515f6bb0ad16d1848ce7a8c27.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1607b82cf68afe5fd8cd30c7bff456fcc8a9ae6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
