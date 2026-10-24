# ContMDiff.sum_section_of_locallyFinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "372604a04b7a7c9d8aef0d6d564e9f8d6d596335",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 246,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/8204881474914aec527bba10f1339f0173152031fd712eb6048425dd2f63e06f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:83a7777f-7986-0555-9402-574302413f48",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d2b246db-7bfc-4f24-d5ed-5e4c5edc41b5",
  "kind": "lemma",
  "lexical_name": "ContMDiff.sum_section_of_locallyFinite",
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
  "slug": "contmdiff-sum-section-of-locallyfinite--a0e1ee5b1c29c89f0138cd9d",
  "source": {
    "blob": "372604a04b7a7c9d8aef0d6d564e9f8d6d596335",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 246,
    "path": "GRWTSK/Geometry/DifferentialGeometry/ContMDiffSection/Variant8204881474914aec527bba10f1339f0173152031fd712eb6048425dd2f63e06f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0e1ee5b1c29c89f0138cd9d57f0d825b74808e0154f3e2809736d6e77e68b82",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/ContMDiffSection/Variant8204881474914aec527bba10f1339f0173152031fd712eb6048425dd2f63e06f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2b246db-7bfc-4f24-d5ed-5e4c5edc41b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ContMDiff.sum_section_of_locallyFinite (ht : LocallyFinite fun i ↦ {x : M | t i x ≠ 0})
    (ht' : ∀ i, CMDiff n (T% (t i ·))) :
    CMDiff n (T% (fun x ↦ ∑' i, (t i x))) :=
  fun x ↦ .sum_section_of_locallyFinite ht fun i ↦ ht' i x

-- Future: the next four lemmas can presumably be generalised, but some hypotheses on the supports
-- of the sections `t i` are necessary.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/ContMDiffSection/Variant8204881474914aec527bba10f1339f0173152031fd712eb6048425dd2f63e06f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/ContMDiffSection/Variant8204881474914aec527bba10f1339f0173152031fd712eb6048425dd2f63e06f.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `372604a04b7a7c9d8aef0d6d564e9f8d6d596335` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
