# toList_rcoIter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "217d12380e966e0d49c510bbfe6785f0b6ba63d8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1009,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/8565af4f9368da621fa266f5dad9fc6dee619f61d05bec76785c8eb6fd6f10c3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:daf181e3-243d-2a12-7eb7-b70f51e4f485",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7f39e733-86a5-be80-c733-777cc5046db7",
  "kind": "theorem",
  "lexical_name": "toList_rcoIter",
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
  "slug": "tolist-rcoiter--ea3c182c98fa5f91b68ad5eb",
  "source": {
    "blob": "217d12380e966e0d49c510bbfe6785f0b6ba63d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1037,
    "line": 1009,
    "path": "GRWTSK/Topology/GeneralTopology/Zipper/Variant8565af4f9368da621fa266f5dad9fc6dee619f61d05bec76785c8eb6fd6f10c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea3c182c98fa5f91b68ad5eb349b96e074598f1e3c1469e180e7f71b1de98c3b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Zipper/Variant8565af4f9368da621fa266f5dad9fc6dee619f61d05bec76785c8eb6fd6f10c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f39e733-86a5-be80-c733-777cc5046db7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1009–1037.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toList_rcoIter {α β} [Ord α] [TransOrd α]
    {t : Impl α β} {t_ord : t.Ordered} {lowerBound upperBound : α} :
    (rcoIterator t lowerBound upperBound : Iter (Sigma β)).toList =
      t.toList.filter (fun e => (compare e.fst lowerBound).isGE ∧ (compare e.fst upperBound).isLT) := by
  simp only [rcoIterator, Bool.decide_and, Bool.decide_eq_true]
  rw [RxoIterator.toList_rxoIter, RxoIterator.takeWhile_eq_filter]
  · conv =>
      rhs
      lhs
      ext x
      rw [Bool.and_comm]
    rw [← List.filter_filter]
    congr 1
    rw [← Zipper.prependMap_pruneLE_eq_prependMapGE]
    · rw [Zipper.toList_prependMap_eq_append]
      rw [Impl.toList_pruneLE]
      · simp only [Zipper.toList, List.append_nil]
      · exact t_ord
    · exact t_ord
  · rw [← Zipper.prependMap_pruneLE_eq_prependMapGE]
    · simp only [Zipper.toList_prependMap_eq_append, Zipper.toList, List.append_nil]
      rw [Impl.toList_pruneLE]
      · apply List.Pairwise.filter
        simp only [Impl.Ordered] at t_ord
        rw [Impl.toList_eq_toListModel]
        exact t_ord
      · exact t_ord
    · exact t_ord

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Zipper/Variant8565af4f9368da621fa266f5dad9fc6dee619f61d05bec76785c8eb6fd6f10c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Zipper/Variant8565af4f9368da621fa266f5dad9fc6dee619f61d05bec76785c8eb6fd6f10c3.lean#L1009).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `217d12380e966e0d49c510bbfe6785f0b6ba63d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
