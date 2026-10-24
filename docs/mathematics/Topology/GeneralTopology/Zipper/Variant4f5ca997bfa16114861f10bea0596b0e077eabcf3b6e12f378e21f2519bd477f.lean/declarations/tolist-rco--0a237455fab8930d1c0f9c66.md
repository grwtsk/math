# toList_rco

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d97afbbd-5165-09d7-bc79-13f41dd11dd5",
  "kind": "theorem",
  "lexical_name": "toList_rco",
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
  "slug": "tolist-rco--0a237455fab8930d1c0f9c66",
  "source": {
    "blob": "52509597edfc9a5fc5db11b0bad119c5d990697f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1146,
    "line": 1124,
    "path": "GRWTSK/Topology/GeneralTopology/Zipper/Variant4f5ca997bfa16114861f10bea0596b0e077eabcf3b6e12f378e21f2519bd477f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a237455fab8930d1c0f9c6627338679c7e10be012da98dd91764b2aeed55930",
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

Occurrence: `result:d97afbbd-5165-09d7-bc79-13f41dd11dd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1124–1146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem toList_rco {α : Type u} {β : Type v} [Ord α] [TransOrd α] (t : Impl α (fun _ => β))
    (ordered : t.Ordered) (lowerBound upperBound : α) : t[lowerBound...<upperBound].toList = (Internal.Impl.Const.toList t).filter (fun e => (compare e.fst lowerBound).isGE ∧ (compare e.fst upperBound).isLT) := by
  simp only [Rco.Sliceable.mkSlice, ← Slice.toList_iter, Slice.iter,
    Slice.Internal.iter_eq_toIteratorIter, ToIterator.iter, ToIterator.iterM_eq,
    Iter.toIter_toIterM]
  rw [Iter.toList_map]
  have := @toList_rcoIter α (fun _ => β) _ _ t ordered lowerBound upperBound
  rw [rcoIterator] at this
  rw [this]
  have eq : (fun (e : (_ : α) × β) => decide ((compare e.fst lowerBound).isGE = true ∧ (compare e.fst upperBound).isLT = true)) = (fun (e : α × β) => decide ((compare e.fst lowerBound).isGE = true ∧ (compare e.fst upperBound).isLT = true)) ∘ (fun e => (e.1, e.2)) := by congr
  conv =>
    lhs
    rhs
    rw [eq]
  rw [← List.filter_map]
  congr
  rw [Impl.Const.toList_eq_toListModel_map, Impl.toList_eq_toListModel]

end Const

section Roo

@[always_inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Zipper/Variant4f5ca997bfa16114861f10bea0596b0e077eabcf3b6e12f378e21f2519bd477f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Zipper/Variant4f5ca997bfa16114861f10bea0596b0e077eabcf3b6e12f378e21f2519bd477f.lean#L1124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52509597edfc9a5fc5db11b0bad119c5d990697f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
