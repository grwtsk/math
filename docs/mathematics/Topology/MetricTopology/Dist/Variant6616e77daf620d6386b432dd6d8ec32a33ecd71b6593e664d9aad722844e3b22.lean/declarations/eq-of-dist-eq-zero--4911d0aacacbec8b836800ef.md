# eq_of_dist_eq_zero

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
      "line": 27,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/6616e77daf620d6386b432dd6d8ec32a33ecd71b6593e664d9aad722844e3b22.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2b6d96a6-30a2-7908-8eae-624c7b0709b6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:94026431-ebd1-d902-b43d-439ce42fa3df",
  "kind": "theorem",
  "lexical_name": "eq_of_dist_eq_zero",
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
  "slug": "eq-of-dist-eq-zero--4911d0aacacbec8b836800ef",
  "source": {
    "blob": "eafe7afbd05fe11137cdda676715c7c644f9eb0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 27,
    "path": "GRWTSK/Topology/MetricTopology/Dist/Variant6616e77daf620d6386b432dd6d8ec32a33ecd71b6593e664d9aad722844e3b22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4911d0aacacbec8b836800efb1cb5c1436ffe81f44bee15cbd7234d28905763b",
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

Occurrence: `result:94026431-ebd1-d902-b43d-439ce42fa3df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_of_dist_eq_zero {n m : ℕ} (h : dist n m = 0) : n = m :=
  have : n - m = 0 := Nat.eq_zero_of_add_eq_zero_right h
  have : n ≤ m := tsub_eq_zero_iff_le.mp this
  have : m - n = 0 := Nat.eq_zero_of_add_eq_zero_left h
  have : m ≤ n := tsub_eq_zero_iff_le.mp this
  le_antisymm ‹n ≤ m› ‹m ≤ n›

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Dist/Variant6616e77daf620d6386b432dd6d8ec32a33ecd71b6593e664d9aad722844e3b22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Dist/Variant6616e77daf620d6386b432dd6d8ec32a33ecd71b6593e664d9aad722844e3b22.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eafe7afbd05fe11137cdda676715c7c644f9eb0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
