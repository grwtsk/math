# dist_pos_of_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eafe7afbd05fe11137cdda676715c7c644f9eb0f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/6616e77daf620d6386b432dd6d8ec32a33ecd71b6593e664d9aad722844e3b22.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:148df251-8143-587e-90d6-14f302881ebe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a062bb14-51c6-3cce-24fd-70a39e67cd5e",
  "kind": "theorem",
  "lexical_name": "dist_pos_of_ne",
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
  "slug": "dist-pos-of-ne--e08963bbe360b9336618b9e0",
  "source": {
    "blob": "eafe7afbd05fe11137cdda676715c7c644f9eb0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 92,
    "path": "GRWTSK/Topology/MetricTopology/Dist/Variant6616e77daf620d6386b432dd6d8ec32a33ecd71b6593e664d9aad722844e3b22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e08963bbe360b9336618b9e0978e44a1e7ce4086448ab4fbc957ea4b90ac2cb8",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Dist/Variant6616e77daf620d6386b432dd6d8ec32a33ecd71b6593e664d9aad722844e3b22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a062bb14-51c6-3cce-24fd-70a39e67cd5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_pos_of_ne {i j : Nat} (h : i ≠ j) : 0 < dist i j := by
  cases h.lt_or_lt with
  | inl h => rw [dist_eq_sub_of_le h.le]; apply tsub_pos_of_lt h
  | inr h => rw [dist_eq_sub_of_le_right h.le]; apply tsub_pos_of_lt h

end Nat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Dist/Variant6616e77daf620d6386b432dd6d8ec32a33ecd71b6593e664d9aad722844e3b22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Dist/Variant6616e77daf620d6386b432dd6d8ec32a33ecd71b6593e664d9aad722844e3b22.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eafe7afbd05fe11137cdda676715c7c644f9eb0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
