# toList_rci

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c240a610-7dd1-917c-6eeb-63b0eccff7e8",
  "kind": "theorem",
  "lexical_name": "toList_rci",
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
  "slug": "tolist-rci--4797c1b2be43a0eb500c5cb1",
  "source": {
    "blob": "217d12380e966e0d49c510bbfe6785f0b6ba63d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1529,
    "line": 1505,
    "path": "GRWTSK/Topology/GeneralTopology/Zipper/Variant8565af4f9368da621fa266f5dad9fc6dee619f61d05bec76785c8eb6fd6f10c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4797c1b2be43a0eb500c5cb1d13a68f58339462ea615e40e7c68b85f67e13a1e",
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

Occurrence: `result:c240a610-7dd1-917c-6eeb-63b0eccff7e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1505–1529.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem toList_rci {α : Type u} {β : Type v} [Ord α] [TransOrd α] (t : Impl α (fun _ => β))
    (ordered : t.Ordered) (lowerBound : α) : t[lowerBound...*].toList = (Internal.Impl.Const.toList t).filter (fun e => (compare e.fst lowerBound).isGE) := by
  simp only [Rci.Sliceable.mkSlice, ← Slice.toList_iter, Slice.iter,
    Slice.Internal.iter_eq_toIteratorIter, ToIterator.iter, ToIterator.iterM_eq,
    Iter.toIter_toIterM]
  rw [Iter.toList_map]
  rw [Impl.Const.toList_eq_toListModel_map]
  rw [List.filter_map]
  congr
  have := @Zipper.toList_iter _ _ (Zipper.prependMapGE t lowerBound Zipper.done)
  simp only [Zipper.iter] at this
  simp only [this]
  rw [← Zipper.prependMap_pruneLE_eq_prependMapGE]
  · simp [Zipper.toList_prependMap_eq_append]
    rw [Impl.toList_pruneLE]
    simp [Impl.toList_eq_toListModel]
    congr
    · exact ordered
  · exact ordered

end Const

section Roi

@[always_inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Zipper/Variant8565af4f9368da621fa266f5dad9fc6dee619f61d05bec76785c8eb6fd6f10c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Zipper/Variant8565af4f9368da621fa266f5dad9fc6dee619f61d05bec76785c8eb6fd6f10c3.lean#L1505).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `217d12380e966e0d49c510bbfe6785f0b6ba63d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
