# toList_rccIter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d018db66-bfec-4ec6-cf26-af62f6a9d3fd",
  "kind": "theorem",
  "lexical_name": "toList_rccIter",
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
  "slug": "tolist-rcciter--29b806d0eb51918c8f261d78",
  "source": {
    "blob": "52509597edfc9a5fc5db11b0bad119c5d990697f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 911,
    "line": 883,
    "path": "GRWTSK/Topology/GeneralTopology/Zipper/Variant4f5ca997bfa16114861f10bea0596b0e077eabcf3b6e12f378e21f2519bd477f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29b806d0eb51918c8f261d78fd16c8a71ea372e02d735ad10d4c5b7a646f9f87",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Zipper/Variant4f5ca997bfa16114861f10bea0596b0e077eabcf3b6e12f378e21f2519bd477f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d018db66-bfec-4ec6-cf26-af62f6a9d3fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 883–911.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toList_rccIter {α β} [Ord α] [TransOrd α]
    {t : Impl α β} {t_ord : t.Ordered} {lowerBound upperBound : α} :
    (rccIterator t lowerBound upperBound : Iter (Sigma β)).toList =
      t.toList.filter (fun e => (compare e.fst lowerBound).isGE ∧ (compare e.fst upperBound).isLE) := by
  simp only [rccIterator, Bool.decide_and, Bool.decide_eq_true]
  rw [RxcIterator.toList_rxcIter, RxcIterator.takeWhile_eq_filter]
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
      · simp [Zipper.toList]
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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Zipper/Variant4f5ca997bfa16114861f10bea0596b0e077eabcf3b6e12f378e21f2519bd477f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Zipper/Variant4f5ca997bfa16114861f10bea0596b0e077eabcf3b6e12f378e21f2519bd477f.lean#L883).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52509597edfc9a5fc5db11b0bad119c5d990697f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
