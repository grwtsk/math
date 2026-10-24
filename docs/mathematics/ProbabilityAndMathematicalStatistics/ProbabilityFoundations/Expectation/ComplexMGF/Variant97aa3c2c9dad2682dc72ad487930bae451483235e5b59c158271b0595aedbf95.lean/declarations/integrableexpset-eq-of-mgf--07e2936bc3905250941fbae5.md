# integrableExpSet_eq_of_mgf'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1f4be73-d0ac-9fb5-ba74-dbb997fc2bb4",
  "kind": "lemma",
  "lexical_name": "integrableExpSet_eq_of_mgf'",
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
  "slug": "integrableexpset-eq-of-mgf--07e2936bc3905250941fbae5",
  "source": {
    "blob": "b40a2821163f629b067094724bf5d041fa3f58da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 247,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant97aa3c2c9dad2682dc72ad487930bae451483235e5b59c158271b0595aedbf95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07e2936bc3905250941fbae560db0d545cf0626acf156ca7d5ec70945e399bc9",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant97aa3c2c9dad2682dc72ad487930bae451483235e5b59c158271b0595aedbf95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1f4be73-d0ac-9fb5-ba74-dbb997fc2bb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integrableExpSet_eq_of_mgf' (hXY : mgf X μ = mgf Y μ') (hμμ' : μ = 0 ↔ μ' = 0) :
    integrableExpSet X μ = integrableExpSet Y μ' := by
  ext t
  simp only [integrableExpSet, Set.mem_setOf_eq]
  by_cases hμ : μ = 0
  · simp [hμ, hμμ'.mp hμ]
  have : NeZero μ := ⟨hμ⟩
  have : NeZero μ' := ⟨(not_iff_not.mpr hμμ').mp hμ⟩
  rw [← mgf_pos_iff, ← mgf_pos_iff, hXY]

/-- If two random variables have the same moment generating function then they have
the same `integrableExpSet`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant97aa3c2c9dad2682dc72ad487930bae451483235e5b59c158271b0595aedbf95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant97aa3c2c9dad2682dc72ad487930bae451483235e5b59c158271b0595aedbf95.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b40a2821163f629b067094724bf5d041fa3f58da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
