# toList_pruneLE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eda0c69b-0af0-58e7-90b3-6ed6e394b6ac",
  "kind": "theorem",
  "lexical_name": "toList_pruneLE",
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
  "slug": "tolist-prunele--c96aa483b8aa0bf6af222ddb",
  "source": {
    "blob": "52509597edfc9a5fc5db11b0bad119c5d990697f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 61,
    "path": "GRWTSK/Topology/GeneralTopology/Zipper/Variant4f5ca997bfa16114861f10bea0596b0e077eabcf3b6e12f378e21f2519bd477f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c96aa483b8aa0bf6af222ddb32168eb66891833cb769694ebf3fd7d0e922b0aa",
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

Occurrence: `result:eda0c69b-0af0-58e7-90b3-6ed6e394b6ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toList_pruneLE {α β} [Ord α] [TransOrd α] (t : Internal.Impl α β) (ord_t : t.Ordered) (lowerBound : α) :
    (t.pruneLE lowerBound).toList = t.toList.filter (fun e => (compare e.fst lowerBound).isGE) := by
  induction t
  case leaf =>
    simp only [pruneLE, toList_eq_toListModel, toListModel_leaf, List.filter_nil]
  case inner _ k v l r l_ih r_ih =>
    simp only [pruneLE, toList_eq_toListModel, toListModel_inner, List.filter_append]
    generalize heq : compare lowerBound k = x
    cases x
    case lt =>
      simp only [toListModel_inner]
      specialize l_ih (Internal.Impl.Ordered.left ord_t)
      rw [toList_eq_toListModel] at l_ih
      simp only [l_ih, toList_eq_toListModel, List.filter, List.append_cancel_left_eq]
      rw [OrientedOrd.eq_swap, Ordering.swap_eq_lt] at heq
      simp only [heq, Ordering.isGE_gt, List.cons.injEq, true_and]
      symm
      apply List.filter_eq_self.2
      intro a mem
      apply Ordering.isGE_of_eq_gt
      apply TransCmp.gt_trans ?_ heq
      rw [OrientedOrd.eq_swap, Ordering.swap_eq_gt]
      exact Internal.Impl.Ordered.compare_right ord_t mem
    case eq =>
      simp only [toListModel_inner, toListModel_leaf, List.nil_append, List.filter]
      rw [OrientedCmp.eq_comm] at heq
      simp only [heq, Ordering.isGE_eq]
      suffices new_goal : List.filter (fun e => (compare e.fst lowerBound).isGE) l.toListModel = [] by
        simp only [new_goal, List.nil_append, List.cons.injEq, true_and]
        symm
        apply List.filter_eq_self.2
        intro a mem
        apply Ordering.isGE_of_eq_gt
        apply TransCmp.gt_of_gt_of_eq ?_ heq
        rw [OrientedOrd.eq_swap, Ordering.swap_eq_gt]
        apply Internal.Impl.Ordered.compare_right ord_t mem
      rw [List.filter_eq_nil_iff]
      intro a mem
      simp only [Bool.not_eq_true, Ordering.isGE_eq_false]
      exact TransCmp.lt_of_lt_of_eq (Internal.Impl.Ordered.compare_left ord_t mem) heq
    case gt =>
      simp only [List.filter]
      rw [OrientedOrd.eq_swap, Ordering.swap_eq_gt] at heq
      rw [heq]
      simp
      suffices new_goal : List.filter (fun e => (compare e.fst lowerBound).isGE) l.toListModel = [] by
        simp only [new_goal, List.nil_append]
        simp only [toList_eq_toListModel] at r_ih
        apply r_ih
        exact Internal.Impl.Ordered.right ord_t
      rw [List.filter_eq_nil_iff]
      intro a mem
      simp only [Bool.not_eq_true, Ordering.isGE_eq_false]
      exact TransCmp.lt_trans (Internal.Impl.Ordered.compare_left ord_t mem) heq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Zipper/Variant4f5ca997bfa16114861f10bea0596b0e077eabcf3b6e12f378e21f2519bd477f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Zipper/Variant4f5ca997bfa16114861f10bea0596b0e077eabcf3b6e12f378e21f2519bd477f.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52509597edfc9a5fc5db11b0bad119c5d990697f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
