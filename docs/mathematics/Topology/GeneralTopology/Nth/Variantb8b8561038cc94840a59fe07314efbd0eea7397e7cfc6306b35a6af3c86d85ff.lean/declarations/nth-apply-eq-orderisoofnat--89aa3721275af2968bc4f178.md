# nth_apply_eq_orderIsoOfNat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2d8f1bb74f220d732828f2eb30271b2a8ac9f7c6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 136,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b8b8561038cc94840a59fe07314efbd0eea7397e7cfc6306b35a6af3c86d85ff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f6cb73be-53c4-7091-b7fc-7896eaec56eb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a5725d0b-505c-a68f-473c-ef17cae2a19a",
  "kind": "theorem",
  "lexical_name": "nth_apply_eq_orderIsoOfNat",
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
  "slug": "nth-apply-eq-orderisoofnat--89aa3721275af2968bc4f178",
  "source": {
    "blob": "2d8f1bb74f220d732828f2eb30271b2a8ac9f7c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 136,
    "path": "GRWTSK/Topology/GeneralTopology/Nth/Variantb8b8561038cc94840a59fe07314efbd0eea7397e7cfc6306b35a6af3c86d85ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89aa3721275af2968bc4f1789abe0f5537d3dabf2012716277184b491d62bd2a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Nth/Variantb8b8561038cc94840a59fe07314efbd0eea7397e7cfc6306b35a6af3c86d85ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5725d0b-505c-a68f-473c-ef17cae2a19a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nth_apply_eq_orderIsoOfNat (hf : (Set.ofPred p).Infinite) (n : ℕ) :
    nth p n = @Nat.Subtype.orderIsoOfNat (Set.ofPred p) hf.to_subtype n := by
  rw [nth, dite_eq_right hf]

/-- When `s` is an infinite set, `nth` agrees with `Nat.Subtype.orderIsoOfNat`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Nth/Variantb8b8561038cc94840a59fe07314efbd0eea7397e7cfc6306b35a6af3c86d85ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Nth/Variantb8b8561038cc94840a59fe07314efbd0eea7397e7cfc6306b35a6af3c86d85ff.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d8f1bb74f220d732828f2eb30271b2a8ac9f7c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
