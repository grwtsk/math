# sUnion_union_sUnion_disjointOfDiffUnion_of_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5abf9756273ac0d26ebfc8191816b6a108bf7177",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 301,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/cc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3f65efa3-2f4b-1a6f-d75e-f83658778915",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d42bc92-39c2-659d-f3e7-fc14f3ebd99a",
  "kind": "lemma",
  "lexical_name": "sUnion_union_sUnion_disjointOfDiffUnion_of_subset",
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
  "slug": "sunion-union-sunion-disjointofdiffunion-of-subset--8b4c4b262a00fb77c2d8b23a",
  "source": {
    "blob": "5abf9756273ac0d26ebfc8191816b6a108bf7177",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 301,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b4c4b262a00fb77c2d8b23af28edb916a95fd9226e335dbf65cb71c9090c890",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d42bc92-39c2-659d-f3e7-fc14f3ebd99a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sUnion_union_sUnion_disjointOfDiffUnion_of_subset (hC : IsSetSemiring C)
    (hs : s ∈ C) (hI : ↑I ⊆ C) (hI_ss : ∀ t ∈ I, t ⊆ s) :
    ⋃₀ I ∪ ⋃₀ hC.disjointOfDiffUnion hs hI = s := by
  conv_rhs => rw [← union_diff_cancel (Set.sUnion_subset hI_ss : ⋃₀ ↑I ⊆ s),
    hC.diff_sUnion_eq_sUnion_disjointOfDiffUnion hs hI]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5abf9756273ac0d26ebfc8191816b6a108bf7177` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
