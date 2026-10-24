# mem_subinterval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:085b85e5-82d5-90d7-42ce-96b70be414c5",
  "kind": "lemma",
  "lexical_name": "mem_subinterval",
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
  "slug": "mem-subinterval--d3ef334fcd2868bb09f2f4ad",
  "source": {
    "blob": "2a52cfa84b2ec2edeb4638e9519ad31e4c9e637d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 527,
    "line": 506,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variantd3082cfedc0e83f66becc5be2604b7222f49b97b1b159bdf9ad65761542e2694.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3ef334fcd2868bb09f2f4ad188a6d9c6987c0ec3441ac567fd6648f549d8570",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variantd3082cfedc0e83f66becc5be2604b7222f49b97b1b159bdf9ad65761542e2694.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:085b85e5-82d5-90d7-42ce-96b70be414c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 506–527.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_subinterval {a b : ℝ} (P : IPartition a b)
  (hn : 0 < P.n) {y : ℝ} (hy : y ∈ Set.Icc a b) :
  ∃ i : Fin P.n, y ∈ Set.Icc (P.x i.castSucc) (P.x i.succ) := by
    by_contra h_contra;
    -- Since the intervals [P.x i, P.x (i+1)] cover [a, b], there must be some i such that y is in [P.x i, P.x (i+1)].
    have h_cover : ∀ y ∈ Set.Icc a b, ∃ i : Fin P.n, y ∈ Set.Icc (P.x i.castSucc) (P.x i.succ) := by
      intro y hy
      obtain ⟨i, hi⟩ : ∃ i : Fin (P.n + 1), y ≤ P.x i ∧ ∀ j : Fin (P.n + 1), y ≤ P.x j → i ≤ j := by
        have h_exists_i : ∃ i : Fin (P.n + 1), y ≤ P.x i := by
          exact ⟨ Fin.last _, by linarith [ hy.2, P.right ] ⟩;
        exact ⟨ Finset.min' ( Finset.univ.filter fun i => y ≤ P.x i ) ⟨ h_exists_i.choose, Finset.mem_filter.mpr ⟨ Finset.mem_univ _, h_exists_i.choose_spec ⟩ ⟩, Finset.mem_filter.mp ( Finset.min'_mem ( Finset.univ.filter fun i => y ≤ P.x i ) ⟨ h_exists_i.choose, Finset.mem_filter.mpr ⟨ Finset.mem_univ _, h_exists_i.choose_spec ⟩ ⟩ ) |>.2, fun j hj => Finset.min'_le _ _ <| by aesop ⟩;
      induction' i using Fin.inductionOn with i IH;
      · exact ⟨ ⟨ 0, hn ⟩, by simpa [ P.left ] using hy.1, by simpa [ P.left ] using P.monotone ( Nat.zero_le _ ) |> le_trans hi.1 ⟩;
      · exact ⟨ i, ⟨ by exact le_of_not_gt fun h => not_lt_of_ge ( hi.2 _ h.le ) ( Fin.castSucc_lt_succ i ), hi.1 ⟩ ⟩;
    exact h_contra <| h_cover y hy

/-
The following lemmas on partitions are an overly complicated route towards the simple bound at the end of this namespace (IPart)
-/
/-
There are no partition points strictly between two consecutive points of a partition.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variantd3082cfedc0e83f66becc5be2604b7222f49b97b1b159bdf9ad65761542e2694.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variantd3082cfedc0e83f66becc5be2604b7222f49b97b1b159bdf9ad65761542e2694.lean#L506).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a52cfa84b2ec2edeb4638e9519ad31e4c9e637d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
