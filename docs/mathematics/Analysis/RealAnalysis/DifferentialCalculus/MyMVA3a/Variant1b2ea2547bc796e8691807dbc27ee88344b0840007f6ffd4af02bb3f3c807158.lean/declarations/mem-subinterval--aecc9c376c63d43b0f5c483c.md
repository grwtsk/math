# mem_subinterval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "661a74a18ecefb4e719f68267d0ff8888af929d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 498,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1b2ea2547bc796e8691807dbc27ee88344b0840007f6ffd4af02bb3f3c807158.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dc48b8c3-37ca-d6df-d37b-c3cc426b73ab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f50d9b2c-2414-6490-e4b0-5b0d8df10b27",
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
  "slug": "mem-subinterval--aecc9c376c63d43b0f5c483c",
  "source": {
    "blob": "661a74a18ecefb4e719f68267d0ff8888af929d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 519,
    "line": 498,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variant1b2ea2547bc796e8691807dbc27ee88344b0840007f6ffd4af02bb3f3c807158.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aecc9c376c63d43b0f5c483cb92add3d0559d5794a11ee132f46d85a913ceadc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variant1b2ea2547bc796e8691807dbc27ee88344b0840007f6ffd4af02bb3f3c807158.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f50d9b2c-2414-6490-e4b0-5b0d8df10b27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 498–519.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variant1b2ea2547bc796e8691807dbc27ee88344b0840007f6ffd4af02bb3f3c807158.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variant1b2ea2547bc796e8691807dbc27ee88344b0840007f6ffd4af02bb3f3c807158.lean#L498).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `661a74a18ecefb4e719f68267d0ff8888af929d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
