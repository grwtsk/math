# support_C_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "60240011f2bc8dddc179bdd51a0df4c1cba8ffe7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 451,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4c614f4ad0750fe2817f5c7e19829567062524932ec8422dc6b2cafcf295a922.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d4f81548-cb16-7046-24f3-1f8f09b23cc1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a025257a-d1e8-3dfa-67f9-eb1a402bbc04",
  "kind": "lemma",
  "lexical_name": "support_C_subset",
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
  "slug": "support-c-subset--136010b5ed48c419d3155ac6",
  "source": {
    "blob": "60240011f2bc8dddc179bdd51a0df4c1cba8ffe7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 452,
    "line": 451,
    "path": "GRWTSK/Algebra/Basic/Variant4c614f4ad0750fe2817f5c7e19829567062524932ec8422dc6b2cafcf295a922.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:136010b5ed48c419d3155ac6d169ee88a210131a266f0d4b4573d74329e4062b",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant4c614f4ad0750fe2817f5c7e19829567062524932ec8422dc6b2cafcf295a922.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a025257a-d1e8-3dfa-67f9-eb1a402bbc04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 451–452.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma support_C_subset (a : R) : (C a).support ⊆ singleton 0 := support_monomial_subset 0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant4c614f4ad0750fe2817f5c7e19829567062524932ec8422dc6b2cafcf295a922.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant4c614f4ad0750fe2817f5c7e19829567062524932ec8422dc6b2cafcf295a922.lean#L451).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60240011f2bc8dddc179bdd51a0df4c1cba8ffe7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
