# valMinAbs_natCast_of_half_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "75220e7726639638f208b1fd8186b8aaa2b97abb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 177,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0b/0bade970f555cd66666423c37bd00d704520ebd6c761479a5c33415175949056.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d27fb57e-8b2b-e347-f848-b0694620be4f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2c1a74cc-1c12-b69c-5cc2-cdd0c5138b67",
  "kind": "lemma",
  "lexical_name": "valMinAbs_natCast_of_half_lt",
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
  "slug": "valminabs-natcast-of-half-lt--33b7b3f77e055673c7700c08",
  "source": {
    "blob": "75220e7726639638f208b1fd8186b8aaa2b97abb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 177,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant0bade970f555cd66666423c37bd00d704520ebd6c761479a5c33415175949056.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33b7b3f77e055673c7700c08cd3091ba3d549b01f5e6f8712f0072a4a4fad6cc",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant0bade970f555cd66666423c37bd00d704520ebd6c761479a5c33415175949056.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c1a74cc-1c12-b69c-5cc2-cdd0c5138b67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma valMinAbs_natCast_of_half_lt (ha : n / 2 < a) (ha' : a < n) :
    (a : ZMod n).valMinAbs = a - n := by
  cases n
  · cases not_lt_bot ha'
  · simp [valMinAbs_def_pos, val_natCast, Nat.mod_eq_of_lt ha', ha.not_ge]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant0bade970f555cd66666423c37bd00d704520ebd6c761479a5c33415175949056.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant0bade970f555cd66666423c37bd00d704520ebd6c761479a5c33415175949056.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75220e7726639638f208b1fd8186b8aaa2b97abb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
