# symm_p

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7c61eec814ef0cd3459c83d65751399da42d1a7a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 157,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/ebf931a0780eb886577ff0d3b4a5ddf05e5c6b92d8ab5089ea7e05becc37ddd7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:53769e63-3864-2cab-481e-8b51bb91bea3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c730389a-6296-bd2f-b6cb-283fd407b05d",
  "kind": "lemma",
  "lexical_name": "symm_p",
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
  "slug": "symm-p--35fdab7adf723bbf23b0f798",
  "source": {
    "blob": "7c61eec814ef0cd3459c83d65751399da42d1a7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 157,
    "path": "GRWTSK/Topology/AlgebraicTopology/PathObject/Variantebf931a0780eb886577ff0d3b4a5ddf05e5c6b92d8ab5089ea7e05becc37ddd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35fdab7adf723bbf23b0f798e3c431bf7fcf602cf6e808e30ce22dbbe7ada953",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/PathObject/Variantebf931a0780eb886577ff0d3b4a5ddf05e5c6b92d8ab5089ea7e05becc37ddd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c730389a-6296-bd2f-b6cb-283fd407b05d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma symm_p [HasBinaryProducts C] :
    P.symm.p = P.p ≫ (prod.braiding A A).hom :=
  P.toPrepathObject.symm_p

section

variable [(weakEquivalences C).HasTwoOutOfThreeProperty]
  [(weakEquivalences C).ContainsIdentities]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/PathObject/Variantebf931a0780eb886577ff0d3b4a5ddf05e5c6b92d8ab5089ea7e05becc37ddd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/PathObject/Variantebf931a0780eb886577ff0d3b4a5ddf05e5c6b92d8ab5089ea7e05becc37ddd7.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c61eec814ef0cd3459c83d65751399da42d1a7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
