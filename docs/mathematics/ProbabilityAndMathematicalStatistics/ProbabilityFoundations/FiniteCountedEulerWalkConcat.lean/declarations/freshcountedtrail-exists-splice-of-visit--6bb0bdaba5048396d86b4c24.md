# FreshCountedTrail.exists_splice_of_visit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0cf08719-3a06-5dce-f53d-4c30501dbd05",
  "kind": "theorem",
  "lexical_name": "FreshCountedTrail.exists_splice_of_visit",
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
  "slug": "freshcountedtrail-exists-splice-of-visit--6bb0bdaba5048396d86b4c24",
  "source": {
    "blob": "b3aaa6b1f7b042d1548fb141708399427e99b3b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 498,
    "line": 470,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerWalkConcat.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6bb0bdaba5048396d86b4c244e180d19d424dadbd2649e766806963a4bde9c03",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerWalkConcat.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0cf08719-3a06-5dce-f53d-4c30501dbd05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 470–498.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FreshCountedTrail.exists_splice_of_visit
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b v : Fin m → Bool}
    (T : FreshCountedTrail m c a b)
    (hv : T.walk.Visits v)
    (C : FreshCountedTrail m c v v)
    (hTC : Disjoint T.used C.used) :
    ∃ R : FreshCountedTrail m c a b,
      R.used = T.used ∪ C.used := by
  obtain ⟨P, Q, hPQ, hT⟩ := T.factor_of_visits hv
  have hPC : Disjoint P.used C.used := by
    apply Finset.disjoint_left.mpr
    intro e heP heC
    apply (Finset.disjoint_left.mp hTC) (by
      rw [hT]
      exact Finset.mem_union_left _ heP) heC
  have hQC : Disjoint Q.used C.used := by
    apply Finset.disjoint_left.mpr
    intro e heQ heC
    apply (Finset.disjoint_left.mp hTC) (by
      rw [hT]
      exact Finset.mem_union_right _ heQ) heC
  refine ⟨FreshCountedTrail.spliceAtFactorization P Q C
    hPQ hPC hQC, ?_⟩
  rw [FreshCountedTrail.spliceAtFactorization_used, hT]
  simp only [Finset.union_assoc]

/-- The same interior splice strictly decreases the unused-edge
count when the residual cycle is nonempty. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerWalkConcat.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerWalkConcat.lean#L470).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3aaa6b1f7b042d1548fb141708399427e99b3b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
