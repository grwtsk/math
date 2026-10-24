# SeparatedNhds.of_isClosed_isCompact_closure_compl_isClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c7c9a4de3b9c0ea0eef31a6f5b98170c89b7f98d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 565,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/95c58f7ad7ef3ea627d5af8d2427c7d7e08a47207ed084e51945217f32566f06.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dec38c4c-dc2c-e2c6-b036-624868917d78",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a0275b7e-47c7-7777-97b3-e82624b1d6c9",
  "kind": "lemma",
  "lexical_name": "SeparatedNhds.of_isClosed_isCompact_closure_compl_isClosed",
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
  "slug": "separatednhds-of-isclosed-iscompact-closure-compl-isclosed--5097196ffa357bc6afb2ab51",
  "source": {
    "blob": "c7c9a4de3b9c0ea0eef31a6f5b98170c89b7f98d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 583,
    "line": 565,
    "path": "GRWTSK/Topology/GeneralTopology/Hausdorff/Variant95c58f7ad7ef3ea627d5af8d2427c7d7e08a47207ed084e51945217f32566f06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5097196ffa357bc6afb2ab51ac7ba19d5b831fce8aab6eb34dddd092771e28bc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hausdorff/Variant95c58f7ad7ef3ea627d5af8d2427c7d7e08a47207ed084e51945217f32566f06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0275b7e-47c7-7777-97b3-e82624b1d6c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 565–583.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma SeparatedNhds.of_isClosed_isCompact_closure_compl_isClosed [R1Space X] {s : Set X}
    {t : Set X} (H1 : IsClosed s) (H2 : IsCompact (closure sᶜ)) (H3 : IsClosed t)
    (H4 : Disjoint s t) : SeparatedNhds s t := by
  -- Since `t` is a closed subset of the compact set `closure sᶜ`, it is compact.
  have ht : IsCompact t := .of_isClosed_subset H2 H3 <| H4.subset_compl_left.trans subset_closure
  -- we split `s` into its frontier and its interior.
  rw [← sdiff_union_of_subset (interior_subset (s := s))]
  -- since `t ⊆ sᶜ`, which is open, and `interior s` is open, we have
  -- `SeparatedNhds (interior s) t`, which leaves us only with the frontier.
  refine .union_left ?_ ⟨interior s, sᶜ, isOpen_interior, H1.isOpen_compl, le_rfl,
    H4.subset_compl_left, disjoint_compl_right.mono_left interior_subset⟩
  -- Since the frontier of `s` is compact (as it is a subset of `closure sᶜ`), we simply apply
  -- `SeparatedNhds_of_isCompact_isCompact`.
  rw [← H1.frontier_eq, frontier_eq_closure_inter_closure, H1.closure_eq]
  refine .of_isCompact_isCompact_isClosed ?_ ht H3 (disjoint_of_subset_left inter_subset_left H4)
  exact H2.of_isClosed_subset (H1.inter isClosed_closure) inter_subset_right

section SeparatedFinset

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hausdorff/Variant95c58f7ad7ef3ea627d5af8d2427c7d7e08a47207ed084e51945217f32566f06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hausdorff/Variant95c58f7ad7ef3ea627d5af8d2427c7d7e08a47207ed084e51945217f32566f06.lean#L565).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7c9a4de3b9c0ea0eef31a6f5b98170c89b7f98d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
