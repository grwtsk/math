# FreshCountedTrail.exists_strict_progress_of_visited_unused_edge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d8537ad-56a2-badb-ff39-bd48ba5ca10f",
  "kind": "theorem",
  "lexical_name": "FreshCountedTrail.exists_strict_progress_of_visited_unused_edge",
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
  "slug": "freshcountedtrail-exists-strict-progress-of-visited-unused-edge--fb1ae290e279c824533957b5",
  "source": {
    "blob": "6fd249430d3ff71371056caeea538ed69309d205",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 27,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerStrictProgress.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb1ae290e279c824533957b5a74fb5ae83db86fcb9c16463180726d6ccb529f5",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerStrictProgress.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d8537ad-56a2-badb-ff39-bd48ba5ca10f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FreshCountedTrail.exists_strict_progress_of_visited_unused_edge
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b v : Fin m → Bool}
    (T : FreshCountedTrail m c a b)
    (hclosed : a = b)
    (hbalance : CountedDegreeBalanced m c)
    (hvisit : T.walk.Visits v)
    (e : CountedBinaryEdge m c)
    (he : e ∈ Finset.univ \ T.used)
    (hsource : countedEdgeSource m c e = v) :
    ∃ R : FreshCountedTrail m c a b,
      T.used ⊆ R.used ∧
        (Finset.univ \ R.used).card <
          (Finset.univ \ T.used).card := by
  obtain ⟨C, hdisj, hpos⟩ :=
    T.exists_disjoint_residual_cycle hclosed hbalance e he hsource
  obtain ⟨R, hR⟩ := T.exists_splice_of_visit hvisit C hdisj
  refine ⟨R, ?_, ?_⟩
  · rw [hR]
    exact Finset.subset_union_left
  · rw [hR]
    have hsubT : T.used ⊆
        (Finset.univ : Finset (CountedBinaryEdge m c)) :=
      Finset.subset_univ _
    have hsubR : T.used ∪ C.used ⊆
        (Finset.univ : Finset (CountedBinaryEdge m c)) :=
      Finset.subset_univ _
    have hcard := Finset.card_union_of_disjoint hdisj
    have h1 := Finset.card_sdiff_add_card_eq_card hsubT
    have h2 := Finset.card_sdiff_add_card_eq_card hsubR
    omega


/-- Exact global completion alternative for a closed counted trail:
either every individual edge instance is already used, or there is
a residual edge instance. This does not assume weak connectivity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerStrictProgress.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerStrictProgress.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fd249430d3ff71371056caeea538ed69309d205` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
