# RelCWComplex.isClosed_inter_cellFrontier_succ_of_le_isClosed_inter_closedCell

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3fe60f1-0d53-49bc-1981-5079320aadce",
  "kind": "lemma",
  "lexical_name": "RelCWComplex.isClosed_inter_cellFrontier_succ_of_le_isClosed_inter_closedCell",
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
  "slug": "relcwcomplex-isclosed-inter-cellfrontier-succ-of-le-isclosed-inter-close--9e6e690d260a32d8a1a1c61e",
  "source": {
    "blob": "2cc6b3374c97b03c6a56d2c64b8139c81eb7cfbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 426,
    "line": 411,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Varianta1893c7313cbb5536b4dd9edec7a1775a3685a9564acfeeafb19c498021e32ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e6e690d260a32d8a1a1c61e12c6c8a1a2b7ca100c48e4c98b22886205775a76",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Varianta1893c7313cbb5536b4dd9edec7a1775a3685a9564acfeeafb19c498021e32ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3fe60f1-0d53-49bc-1981-5079320aadce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 411–426.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma RelCWComplex.isClosed_inter_cellFrontier_succ_of_le_isClosed_inter_closedCell
    [RelCWComplex C D] [T2Space X] {A : Set X} {n : ℕ} (hn : ∀ m ≤ n, ∀ (j : cell C m),
    IsClosed (A ∩ closedCell m j)) (j : cell C (n + 1)) (hD : IsClosed (A ∩ D)) :
    IsClosed (A ∩ cellFrontier (n + 1) j) := by
  -- this is a consequence of `cellFrontier_subset_base_union_finite_closedCell`
  obtain ⟨I, hI⟩ := cellFrontier_subset_base_union_finite_closedCell (n + 1) j
  rw [← inter_eq_right.2 hI, ← inter_assoc]
  refine IsClosed.inter ?_ isClosed_cellFrontier
  simp_rw [inter_union_distrib_left, inter_iUnion,
    ← iUnion_subtype (fun m ↦ m < n + 1) (fun m ↦ ⋃ i ∈ I m, A ∩ closedCell m i)]
  apply hD.union
  apply isClosed_iUnion_of_finite
  intro ⟨m, mlt⟩
  rw [← iUnion_subtype (fun i ↦ i ∈ I m) (fun i ↦ A ∩ closedCell m i.1)]
  exact isClosed_iUnion_of_finite (fun ⟨j, _⟩ ↦ hn m (Nat.le_of_lt_succ mlt) j)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Varianta1893c7313cbb5536b4dd9edec7a1775a3685a9564acfeeafb19c498021e32ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Varianta1893c7313cbb5536b4dd9edec7a1775a3685a9564acfeeafb19c498021e32ab.lean#L411).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cc6b3374c97b03c6a56d2c64b8139c81eb7cfbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
