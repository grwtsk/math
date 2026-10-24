# aemeasurable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cbd0dff5-4bcf-bae6-08c6-99a0e472dbce",
  "kind": "theorem",
  "lexical_name": "aemeasurable",
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
  "slug": "aemeasurable--f91c6251039bf1f6ed784f7f",
  "source": {
    "blob": "b5a934c890b68ba4e6bb73e6db34dd0c0fa8315e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 73,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f91c6251039bf1f6ed784f7f567be9a67f4872b9e73a310bc1ee2288cad1de2f",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cbd0dff5-4bcf-bae6-08c6-99a0e472dbce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aemeasurable {X : Ω → E} {s : Set E} (hns : μ s ≠ 0) (hnt : μ s ≠ ∞)
    (hu : IsUniform X s ℙ μ) : AEMeasurable X ℙ := by
  dsimp [IsUniform, ProbabilityTheory.cond] at hu
  by_contra h
  rw [map_of_not_aemeasurable h] at hu
  apply zero_ne_one' ℝ≥0∞
  calc
    0 = (0 : Measure E) Set.univ := rfl
    _ = _ := by rw [hu, smul_apply, restrict_apply MeasurableSet.univ,
      Set.univ_inter, smul_eq_mul, ENNReal.inv_mul_cancel hns hnt]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/Uniform/Variante77c9e6f005090b3cd4ee3cba13dd479f855060ab931d21a06df1cc2cc2033d4.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5a934c890b68ba4e6bb73e6db34dd0c0fa8315e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
