# ballot_problem'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31b3e928-89f0-c30a-a54b-a5d301dc05bf",
  "kind": "theorem",
  "lexical_name": "ballot_problem'",
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
  "slug": "ballot-problem--5d44d4e048725fd061df03d1",
  "source": {
    "blob": "8a7bca5244db2924da55c6950254f56ead1b6c20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 354,
    "line": 316,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d44d4e048725fd061df03d1791a96e4a0e2a62fcbe2384590670037636d4326",
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

Occurrence: `result:31b3e928-89f0-c30a-a54b-a5d301dc05bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–354.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ballot_problem' :
    ∀ q p, q < p → (uniformOn (countedSequence p q) staysPositive).toReal = (p - q) / (p + q) := by
  classical
  apply Nat.diag_induction
  · intro p
    rw [ballot_same]
    simp
  · intro p
    rw [ballot_edge]
    simp only [ENNReal.toReal_one, Nat.cast_add, Nat.cast_one, Nat.cast_zero, sub_zero, add_zero]
    rw [div_self]
    exact Nat.cast_add_one_ne_zero p
  · intro q p qp h₁ h₂
    haveI := uniformOn_isProbabilityMeasure
      (countedSequence_finite p (q + 1)) (countedSequence_nonempty _ _)
    haveI := uniformOn_isProbabilityMeasure
      (countedSequence_finite (p + 1) q) (countedSequence_nonempty _ _)
    have h₃ : p + 1 + (q + 1) > 0 := Nat.add_pos_left (Nat.succ_pos _) _
    rw [← uniformOn_add_compl_eq {l : List ℤ | l.headI = 1} _ (countedSequence_finite _ _),
      first_vote_pos _ _ h₃, first_vote_neg _ _ h₃, ballot_pos, ballot_neg _ _ qp]
    rw [ENNReal.toReal_add, ENNReal.toReal_mul, ENNReal.toReal_mul, ← Nat.cast_add,
      ENNReal.toReal_div, ENNReal.toReal_div, ENNReal.toReal_natCast, ENNReal.toReal_natCast,
      ENNReal.toReal_natCast, h₁, h₂]
    · have h₄ : (p + 1 : ℝ) + (q + 1 : ℝ) ≠ (0 : ℝ) := by
        apply ne_of_gt
        assumption_mod_cast
      have h₅ : (p + 1 : ℝ) + ↑q ≠ (0 : ℝ) := by
        apply ne_of_gt
        norm_cast
        linarith
      have h₆ : ↑p + (q + 1 : ℝ) ≠ (0 : ℝ) := by
        apply ne_of_gt
        norm_cast
        linarith
      field_simp [h₄, h₅, h₆] at *
      ring
    all_goals exact ENNReal.mul_ne_top (measure_ne_top _ _) (by simp [Ne, ENNReal.div_eq_top])

/-- The ballot problem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a7bca5244db2924da55c6950254f56ead1b6c20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
