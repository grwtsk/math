# subsingleton_of_disjoint_isOpen_iUnion_eq_univ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6903bd61-dc0d-598f-f3d3-0a4e7803f177",
  "kind": "lemma",
  "lexical_name": "subsingleton_of_disjoint_isOpen_iUnion_eq_univ",
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
  "slug": "subsingleton-of-disjoint-isopen-iunion-eq-univ--c1772335905e8c6d267528e8",
  "source": {
    "blob": "2b2f2955f5c4efc78bcb03ca8be607e7e431e698",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 166,
    "path": "GRWTSK/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1772335905e8c6d267528e8b01fe04fcd52e9ea1072af2dacea45279f56b843",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6903bd61-dc0d-598f-f3d3-0a4e7803f177`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma subsingleton_of_disjoint_isOpen_iUnion_eq_univ
    (h_open : ∀ i, IsOpen (s i)) (h_Union : ⋃ i, s i = univ) :
    Subsingleton ι := by
  refine subsingleton_of_disjoint_isClopen h_nonempty h_disj (fun i ↦ ⟨?_, h_open i⟩)
  rw [← isOpen_compl_iff, compl_eq_univ_diff, ← h_Union, iUnion_diff]
  refine isOpen_iUnion (fun j ↦ ?_)
  rcases eq_or_ne i j with rfl | h_ne
  · simp
  · simpa only [(h_disj h_ne.symm).sdiff_eq_left] using h_open j

/-- In a preconnected space, any finite disjoint cover by non-empty closed subsets has at most one
element. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b2f2955f5c4efc78bcb03ca8be607e7e431e698` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
