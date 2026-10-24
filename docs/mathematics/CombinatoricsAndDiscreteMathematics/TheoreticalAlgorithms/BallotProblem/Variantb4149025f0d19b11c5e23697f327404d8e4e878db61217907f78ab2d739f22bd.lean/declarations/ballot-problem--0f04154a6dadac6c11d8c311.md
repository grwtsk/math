# ballot_problem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c97038fa-e721-3e81-8837-89a1d14b1768",
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
  "slug": "ballot-problem--0f04154a6dadac6c11d8c311",
  "source": {
    "blob": "745da5c8bcbf758fde0c90300daaab0033f54405",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 375,
    "line": 356,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f04154a6dadac6c11d8c31102a04bbb718a87a1f269d0e9a66ffe37f6d18989",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c97038fa-e721-3e81-8837-89a1d14b1768`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–375.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ballot_problem :
    ∀ q p, q < p → uniformOn (countedSequence p q) staysPositive = (p - q) / (p + q) := by
  intro q p qp
  have :=
    isProbabilityMeasure_uniformOn (countedSequence_finite p q) (countedSequence_nonempty _ _)
  have :
    (uniformOn (countedSequence p q) staysPositive).toReal =
      ((p - q) / (p + q) : ℝ≥0∞).toReal := by
    rw [ballot_problem' q p qp]
    rw [ENNReal.toReal_div, ← Nat.cast_add, ← Nat.cast_add, ENNReal.toReal_natCast,
      ENNReal.toReal_sub_of_le, ENNReal.toReal_natCast, ENNReal.toReal_natCast]
    exacts [Nat.cast_le.2 qp.le, ENNReal.natCast_ne_top _]
  rwa [ENNReal.toReal_eq_toReal_iff' (measure_lt_top _ _).ne] at this
  simp only [Ne, ENNReal.div_eq_top, tsub_eq_zero_iff_le, Nat.cast_le, not_le,
    add_eq_zero, Nat.cast_eq_zero, ENNReal.add_eq_top, ENNReal.natCast_ne_top, or_self_iff,
    not_false_iff, and_true]
  push Not
  exact ⟨fun _ _ => by linarith, (tsub_le_self.trans_lt (ENNReal.natCast_ne_top p).lt_top).ne⟩

end Ballot
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `745da5c8bcbf758fde0c90300daaab0033f54405` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
