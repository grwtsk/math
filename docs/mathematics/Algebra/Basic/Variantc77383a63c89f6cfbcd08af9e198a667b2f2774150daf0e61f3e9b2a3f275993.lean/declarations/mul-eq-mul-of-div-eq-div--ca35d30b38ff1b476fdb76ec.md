# mul_eq_mul_of_div_eq_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "243deb854261a3f17da1fdcfd76e40e391cf3877",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 420,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c77383a63c89f6cfbcd08af9e198a667b2f2774150daf0e61f3e9b2a3f275993.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a1aa0985-0a3e-7576-c3d9-1c726136a0e3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d998b1f8-0272-0cdd-5d16-eafc7e3c4c9f",
  "kind": "lemma",
  "lexical_name": "mul_eq_mul_of_div_eq_div",
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
  "slug": "mul-eq-mul-of-div-eq-div--ca35d30b38ff1b476fdb76ec",
  "source": {
    "blob": "243deb854261a3f17da1fdcfd76e40e391cf3877",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 423,
    "line": 420,
    "path": "GRWTSK/Algebra/Basic/Variantc77383a63c89f6cfbcd08af9e198a667b2f2774150daf0e61f3e9b2a3f275993.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca35d30b38ff1b476fdb76ec7184782dc5cd9ec440ea7a926f568a69e1e44681",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantc77383a63c89f6cfbcd08af9e198a667b2f2774150daf0e61f3e9b2a3f275993.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d998b1f8-0272-0cdd-5d16-eafc7e3c4c9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 420–423.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mul_eq_mul_of_div_eq_div (a c : G₀) (hb : b ≠ 0) (hd : d ≠ 0)
    (h : a / b = c / d) : a * d = c * b := by
  rw [← mul_one a, ← div_self hb, ← mul_comm_div, h, div_mul_eq_mul_div, div_mul_cancel₀ _ hd]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantc77383a63c89f6cfbcd08af9e198a667b2f2774150daf0e61f3e9b2a3f275993.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantc77383a63c89f6cfbcd08af9e198a667b2f2774150daf0e61f3e9b2a3f275993.lean#L420).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `243deb854261a3f17da1fdcfd76e40e391cf3877` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
