# ballot_problem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b93ea56-a14c-1e90-a4b3-b23d27d32a2e",
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
  "slug": "ballot-problem--c3335f81cb47b1bad3db7173",
  "source": {
    "blob": "8a7bca5244db2924da55c6950254f56ead1b6c20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 355,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3335f81cb47b1bad3db717359476092937770100a11e53685b4aeda0820e958",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b93ea56-a14c-1e90-a4b3-b23d27d32a2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 355–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ballot_problem :
    ∀ q p, q < p → uniformOn (countedSequence p q) staysPositive = (p - q) / (p + q) := by
  intro q p qp
  haveI :=
    uniformOn_isProbabilityMeasure (countedSequence_finite p q) (countedSequence_nonempty _ _)
  have :
    (uniformOn (countedSequence p q) staysPositive).toReal =
      ((p - q) / (p + q) : ℝ≥0∞).toReal := by
    rw [ballot_problem' q p qp]
    rw [ENNReal.toReal_div, ← Nat.cast_add, ← Nat.cast_add, ENNReal.toReal_natCast,
      ENNReal.toReal_sub_of_le, ENNReal.toReal_natCast, ENNReal.toReal_natCast]
    exacts [Nat.cast_le.2 qp.le, ENNReal.natCast_ne_top _]
  rwa [ENNReal.toReal_eq_toReal (measure_lt_top _ _).ne] at this
  simp only [Ne, ENNReal.div_eq_top, tsub_eq_zero_iff_le, Nat.cast_le, not_le,
    add_eq_zero, Nat.cast_eq_zero, ENNReal.add_eq_top, ENNReal.natCast_ne_top, or_self_iff,
    not_false_iff, and_true]
  push_neg
  exact ⟨fun _ _ => by linarith, (tsub_le_self.trans_lt (ENNReal.natCast_ne_top p).lt_top).ne⟩

end Ballot
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean#L355).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a7bca5244db2924da55c6950254f56ead1b6c20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
