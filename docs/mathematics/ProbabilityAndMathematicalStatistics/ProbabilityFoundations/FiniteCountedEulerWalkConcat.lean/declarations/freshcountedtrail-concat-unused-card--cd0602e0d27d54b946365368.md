# FreshCountedTrail.concat_unused_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51905058-fc4c-0200-d3fe-80991cf2074f",
  "kind": "theorem",
  "lexical_name": "FreshCountedTrail.concat_unused_card",
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
  "slug": "freshcountedtrail-concat-unused-card--cd0602e0d27d54b946365368",
  "source": {
    "blob": "b3aaa6b1f7b042d1548fb141708399427e99b3b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 130,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerWalkConcat.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd0602e0d27d54b946365368f2f65c2476b7e68fc112d54de92b0f1f42e724c1",
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

Occurrence: `result:51905058-fc4c-0200-d3fe-80991cf2074f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FreshCountedTrail.concat_unused_card
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b d : Fin m → Bool}
    (P : FreshCountedTrail m c a b)
    (Q : FreshCountedTrail m c b d)
    (hdisj : Disjoint P.used Q.used) :
    (Finset.univ \ (P.concat Q hdisj).used).card + Q.used.card =
      (Finset.univ \ P.used).card := by
  classical
  have hP : P.used ⊆ (Finset.univ : Finset (CountedBinaryEdge m c)) :=
    Finset.subset_univ _
  have hPQ :
      (P.concat Q hdisj).used ⊆
        (Finset.univ : Finset (CountedBinaryEdge m c)) :=
    Finset.subset_univ _
  have hp := Finset.card_sdiff_add_card_eq_card hP
  have hpq := Finset.card_sdiff_add_card_eq_card hPQ
  rw [FreshCountedTrail.concat_used_card P Q hdisj] at hpq
  omega



/-- A nonempty closed residual trail based at the endpoint of an
existing fresh trail can be spliced by constructive concatenation.
The result retains the original endpoints and all counted edge IDs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerWalkConcat.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerWalkConcat.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3aaa6b1f7b042d1548fb141708399427e99b3b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
