# toProd_comp_ofProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e06d940aa2396412dcbba58d8895f1d6810bd6c7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 152,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/063528bfe3e7ec7cd466ead90f3e1b255135a62989693d32bc4a41ae75af320f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:71debfb6-1836-6650-8b68-3269e5847baa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c8e9a613-60b0-db94-e4fc-4cdf01082b67",
  "kind": "lemma",
  "lexical_name": "toProd_comp_ofProd",
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
  "slug": "toprod-comp-ofprod--80c95faf3847a4e11a32f9fd",
  "source": {
    "blob": "e06d940aa2396412dcbba58d8895f1d6810bd6c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 152,
    "path": "GRWTSK/Algebra/LinearAlgebra/Prod/Variant063528bfe3e7ec7cd466ead90f3e1b255135a62989693d32bc4a41ae75af320f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80c95faf3847a4e11a32f9fd040151fb2fd8dc672dfeaf34b2e36fc0211b3ce4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Prod/Variant063528bfe3e7ec7cd466ead90f3e1b255135a62989693d32bc4a41ae75af320f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8e9a613-60b0-db94-e4fc-4cdf01082b67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toProd_comp_ofProd : (toProd Q₁ Q₂).comp (ofProd Q₁ Q₂) = AlgHom.id _ _ := by
  ext m <;> dsimp
  · rw [ofProd_ι_mk, map_add, toProd_one_tmul_ι, toProd_ι_tmul_one, Prod.mk_zero_zero,
      LinearMap.map_zero, add_zero]
  · rw [ofProd_ι_mk, map_add, toProd_one_tmul_ι, toProd_ι_tmul_one, Prod.mk_zero_zero,
      LinearMap.map_zero, zero_add]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Prod/Variant063528bfe3e7ec7cd466ead90f3e1b255135a62989693d32bc4a41ae75af320f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Prod/Variant063528bfe3e7ec7cd466ead90f3e1b255135a62989693d32bc4a41ae75af320f.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e06d940aa2396412dcbba58d8895f1d6810bd6c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
