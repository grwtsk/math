# ballot_problem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "191f8eb2e7a15edeb01132ced3fb80dc448d2187",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 419,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f1b35fe5-b917-b4e5-b4e3-8f100546103a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:527713fd-2d34-570c-4d2a-5a8ef0e37239",
  "kind": "theorem",
  "lexical_name": "ballot_problem",
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
  "slug": "ballot-problem--9c57910eabf67ffcf2e7d1b5",
  "source": {
    "blob": "191f8eb2e7a15edeb01132ced3fb80dc448d2187",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 439,
    "line": 419,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c57910eabf67ffcf2e7d1b50eb20fc7273bed9d33bb7ae89f61636ad9a73274",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:527713fd-2d34-570c-4d2a-5a8ef0e37239`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 419–439.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ballot_problem :
    ∀ q p, q < p → condCount (countedSequence p q) staysPositive = (p - q) / (p + q) := by
  intro q p qp
  haveI :=
    condCount_isProbabilityMeasure (countedSequence_finite p q) (countedSequence_nonempty _ _)
  have :
    (condCount (countedSequence p q) staysPositive).toReal =
      ((p - q) / (p + q) : ENNReal).toReal := by
    rw [ballot_problem' q p qp]
    rw [ENNReal.toReal_div, ← Nat.cast_add, ← Nat.cast_add, ENNReal.toReal_nat,
      ENNReal.toReal_sub_of_le, ENNReal.toReal_nat, ENNReal.toReal_nat]
    exacts [Nat.cast_le.2 qp.le, ENNReal.nat_ne_top _]
  rwa [ENNReal.toReal_eq_toReal (measure_lt_top _ _).ne] at this
  · simp only [Ne.def, ENNReal.div_eq_top, tsub_eq_zero_iff_le, Nat.cast_le, not_le,
      add_eq_zero_iff, Nat.cast_eq_zero, ENNReal.add_eq_top, ENNReal.nat_ne_top, or_self_iff,
      not_false_iff, and_true_iff]
    push_neg
    exact ⟨fun _ _ => by linarith, (lt_of_le_of_lt tsub_le_self (ENNReal.nat_ne_top p).lt_top).ne⟩
#align ballot.ballot_problem Ballot.ballot_problem

end Ballot
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb81a09fc67c6d947cebf2535504ac7113a47eab88b555bd5045a6e84ab173b3a.lean#L419).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `191f8eb2e7a15edeb01132ced3fb80dc448d2187` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
