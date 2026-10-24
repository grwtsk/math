# RelCWComplex.iUnion_openCell_eq_iUnion_closedCell

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b8480283b94195d8efa20abab52263d7ad3af899",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 482,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d0c72dd36aa605212c1396d4de7b833e8f6da5afd7d299fe0f3d0a13020585a2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:73e2edec-fc9b-c8da-475e-c59e62b09cf5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:558aae87-d469-fd9b-af64-6ae69bdc82a8",
  "kind": "lemma",
  "lexical_name": "RelCWComplex.iUnion_openCell_eq_iUnion_closedCell",
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
  "slug": "relcwcomplex-iunion-opencell-eq-iunion-closedcell--6d81f974c46488d441470d4f",
  "source": {
    "blob": "b8480283b94195d8efa20abab52263d7ad3af899",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 511,
    "line": 482,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantd0c72dd36aa605212c1396d4de7b833e8f6da5afd7d299fe0f3d0a13020585a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d81f974c46488d441470d4faf3d1787bd49e3fed2defab61075b440477e73b9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantd0c72dd36aa605212c1396d4de7b833e8f6da5afd7d299fe0f3d0a13020585a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:558aae87-d469-fd9b-af64-6ae69bdc82a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 482–511.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma RelCWComplex.iUnion_openCell_eq_iUnion_closedCell [RelCWComplex C D] (n : ℕ∞) :
    D ∪ ⋃ (m : ℕ) (_ : m < n) (j : cell C m), openCell m j =
      D ∪ ⋃ (m : ℕ) (_ : m < n) (j : cell C m), closedCell m j := by
  apply subset_antisymm
  · apply union_subset
    · exact subset_union_left
    · apply iUnion₂_subset fun m hm ↦ iUnion_subset fun j ↦ ?_
      apply subset_union_of_subset_right
      apply subset_iUnion₂_of_subset m hm
      apply subset_iUnion_of_subset j
      exact openCell_subset_closedCell m j
  · apply union_subset subset_union_left
    refine iUnion₂_subset fun m hm ↦ iUnion_subset fun j ↦ ?_
    rw [← cellFrontier_union_openCell_eq_closedCell]
    apply union_subset
    · induction m using Nat.case_strong_induction_on with
      | hz => simp [cellFrontier_zero_eq_empty]
      | hi m hm' =>
        obtain ⟨I, hI⟩ := cellFrontier_subset_base_union_finite_closedCell (m + 1) j
        apply hI.trans
        apply union_subset subset_union_left
        apply iUnion₂_subset fun l hl ↦ iUnion₂_subset fun i _ ↦ ?_
        rw [← cellFrontier_union_openCell_eq_closedCell]
        apply union_subset
        · exact (hm' l (Nat.le_of_lt_succ hl) ((ENat.natCast_lt_natCast.2 hl).trans hm) i)
        · apply subset_union_of_subset_right
          exact subset_iUnion₂_of_subset l ((ENat.natCast_lt_natCast.2 hl).trans hm) <|
            subset_iUnion _ i
    · exact subset_union_of_subset_right (subset_iUnion₂_of_subset m hm (subset_iUnion _ j)) _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantd0c72dd36aa605212c1396d4de7b833e8f6da5afd7d299fe0f3d0a13020585a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantd0c72dd36aa605212c1396d4de7b833e8f6da5afd7d299fe0f3d0a13020585a2.lean#L482).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8480283b94195d8efa20abab52263d7ad3af899` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
