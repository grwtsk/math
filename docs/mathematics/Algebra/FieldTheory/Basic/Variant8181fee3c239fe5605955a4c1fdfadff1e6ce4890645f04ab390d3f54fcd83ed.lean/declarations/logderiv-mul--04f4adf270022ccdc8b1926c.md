# logDeriv_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c986a3b8a28245a0cae2016b82d2b84a4ef6e9dc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 35,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/8181fee3c239fe5605955a4c1fdfadff1e6ce4890645f04ab390d3f54fcd83ed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8a15d8a9-2fc8-d5dc-38c2-dcf8f8041d3d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df9784c3-daa9-2239-29a4-8d546d5c8812",
  "kind": "lemma",
  "lexical_name": "logDeriv_mul",
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
  "slug": "logderiv-mul--04f4adf270022ccdc8b1926c",
  "source": {
    "blob": "c986a3b8a28245a0cae2016b82d2b84a4ef6e9dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 35,
    "path": "GRWTSK/Algebra/FieldTheory/Basic/Variant8181fee3c239fe5605955a4c1fdfadff1e6ce4890645f04ab390d3f54fcd83ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04f4adf270022ccdc8b1926c338b23ff555f3c61afb4e85fd85977e3fac890c3",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/Basic/Variant8181fee3c239fe5605955a4c1fdfadff1e6ce4890645f04ab390d3f54fcd83ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df9784c3-daa9-2239-29a4-8d546d5c8812`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma logDeriv_mul (ha : a ≠ 0) (hb : b ≠ 0) : logDeriv (a * b) = logDeriv a + logDeriv b := by
  unfold logDeriv
  field_simp
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/FieldTheory/Basic/Variant8181fee3c239fe5605955a4c1fdfadff1e6ce4890645f04ab390d3f54fcd83ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FieldTheory/Basic/Variant8181fee3c239fe5605955a4c1fdfadff1e6ce4890645f04ab390d3f54fcd83ed.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c986a3b8a28245a0cae2016b82d2b84a4ef6e9dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
