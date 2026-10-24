# nhdsWithin_insert_of_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e7869c22b117f30312b28f43d05e17de874c5006",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 586,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab4aa62e8ee48cbac075f0d601a9ce8639232c220aafc415285dbb6eab08527a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e93b1935-af34-168b-216a-764fb533df21",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5b1be81a-521c-df8c-b15a-7fbee2915bfe",
  "kind": "theorem",
  "lexical_name": "nhdsWithin_insert_of_ne",
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
  "slug": "nhdswithin-insert-of-ne--901c22badc1cb7ed674096b8",
  "source": {
    "blob": "e7869c22b117f30312b28f43d05e17de874c5006",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 595,
    "line": 586,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantab4aa62e8ee48cbac075f0d601a9ce8639232c220aafc415285dbb6eab08527a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:901c22badc1cb7ed674096b866166b06eb904dd2f5aa4f7bf01f69379a43fa97",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantab4aa62e8ee48cbac075f0d601a9ce8639232c220aafc415285dbb6eab08527a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b1be81a-521c-df8c-b15a-7fbee2915bfe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 586–595.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nhdsWithin_insert_of_ne [T1Space X] {x y : X} {s : Set X} (hxy : x ≠ y) :
    𝓝[insert y s] x = 𝓝[s] x := by
  refine le_antisymm (Filter.le_def.2 fun t ht => ?_) (nhdsWithin_mono x <| subset_insert y s)
  obtain ⟨o, ho, hxo, host⟩ := mem_nhdsWithin.mp ht
  refine mem_nhdsWithin.mpr ⟨o \ {y}, ho.sdiff isClosed_singleton, ⟨hxo, hxy⟩, ?_⟩
  rw [inter_insert_of_notMem <| notMem_diff_of_mem (mem_singleton y)]
  exact (inter_subset_inter diff_subset Subset.rfl).trans host

/-- If `t` is a subset of `s`, except for one point,
then `insert x s` is a neighborhood of `x` within `t`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantab4aa62e8ee48cbac075f0d601a9ce8639232c220aafc415285dbb6eab08527a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantab4aa62e8ee48cbac075f0d601a9ce8639232c220aafc415285dbb6eab08527a.lean#L586).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7869c22b117f30312b28f43d05e17de874c5006` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
