# continuousAt_const_cpow'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bdd10ff27c78ae0cf56be8a1a70368b8baa4f4ac",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2a886a239106e5b7b8d326732e8cf20bc7eb68b9dba1cd7a170d8fa40c4ebb1c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5b7b4eed-c295-bc79-c88f-e1901ac11b5e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:26d0c555-0b00-64e3-23dc-045698bedbbe",
  "kind": "theorem",
  "lexical_name": "continuousAt_const_cpow'",
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
  "slug": "continuousat-const-cpow--ca4ee0225e665bca414f5775",
  "source": {
    "blob": "bdd10ff27c78ae0cf56be8a1a70368b8baa4f4ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 78,
    "path": "GRWTSK/Topology/GeneralTopology/Continuity/Variant2a886a239106e5b7b8d326732e8cf20bc7eb68b9dba1cd7a170d8fa40c4ebb1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca4ee0225e665bca414f577563e47cc57e113f18167e2cfef9dd1613a21e3e89",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuity/Variant2a886a239106e5b7b8d326732e8cf20bc7eb68b9dba1cd7a170d8fa40c4ebb1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26d0c555-0b00-64e3-23dc-045698bedbbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousAt_const_cpow' {a b : ℂ} (h : b ≠ 0) : ContinuousAt (fun x : ℂ => a ^ x) b := by
  by_cases ha : a = 0
  · rw [ha, continuousAt_congr (zero_cpow_eq_nhds h)]
    exact continuousAt_const
  · exact continuousAt_const_cpow ha
#align continuous_at_const_cpow' continuousAt_const_cpow'

/-- The function `z ^ w` is continuous in `(z, w)` provided that `z` does not belong to the interval
`(-∞, 0]` on the real line. See also `Complex.continuousAt_cpow_zero_of_re_pos` for a version that
works for `z = 0` but assumes `0 < re w`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuity/Variant2a886a239106e5b7b8d326732e8cf20bc7eb68b9dba1cd7a170d8fa40c4ebb1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuity/Variant2a886a239106e5b7b8d326732e8cf20bc7eb68b9dba1cd7a170d8fa40c4ebb1c.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdd10ff27c78ae0cf56be8a1a70368b8baa4f4ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
