# mertensResidual_sub_half_anchor_abs_le_five_mul_of_mean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5b1cdc2-3697-8fbd-bc89-d4690f96d8a8",
  "kind": "theorem",
  "lexical_name": "mertensResidual_sub_half_anchor_abs_le_five_mul_of_mean",
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
  "slug": "mertensresidual-sub-half-anchor-abs-le-five-mul-of-mean--ceac4b9f1cf4c62737bb88a6",
  "source": {
    "blob": "c5d36b72edd319b688cb46d157de9f6fe1a14ab2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 70,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2dbe7b4281ecc58bbd1656b2575805fb88c39535d1a77fab8737e04cfb7455eeSourceMangoldtRi/Varianta050411c55d0633ad0fa6965f2ef604750970d68bd1d742dd9f8140929c39fe8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ceac4b9f1cf4c62737bb88a6a27f229bac02fae091d8166d9589957c415b3b95",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2dbe7b4281ecc58bbd1656b2575805fb88c39535d1a77fab8737e04cfb7455eeSourceMangoldtRi/Varianta050411c55d0633ad0fa6965f2ef604750970d68bd1d742dd9f8140929c39fe8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5b1cdc2-3697-8fbd-bc89-d4690f96d8a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensResidual_sub_half_anchor_abs_le_five_mul_of_mean
    (A anchor b M : ℝ) (hA : 200 ≤ A)
    (hmean : (∫ t in 0..2 * A, |centeredRieszProfile A anchor b t|) ≤ M * A ^ 2) :
    |mertensResidual A - anchor / 2| ≤ 5 * M := by
  have hp : 0 < A := by linarith
  calc
    _ ≤ (5 / A ^ 2) * (∫ t in 0..2 * A, |centeredRieszProfile A anchor b t|) :=
      mertensResidual_sub_half_anchor_abs_le_quotient_mean A anchor b hA
    _ ≤ (5 / A ^ 2) * (M * A ^ 2) :=
      mul_le_mul_of_nonneg_left hmean (by positivity)
    _ = 5 * M := by field_simp [ne_of_gt hp]

/-- The exact open witness is consumed at every real scale in its tail. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2dbe7b4281ecc58bbd1656b2575805fb88c39535d1a77fab8737e04cfb7455eeSourceMangoldtRi/Varianta050411c55d0633ad0fa6965f2ef604750970d68bd1d742dd9f8140929c39fe8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2dbe7b4281ecc58bbd1656b2575805fb88c39535d1a77fab8737e04cfb7455eeSourceMangoldtRi/Varianta050411c55d0633ad0fa6965f2ef604750970d68bd1d742dd9f8140929c39fe8.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5d36b72edd319b688cb46d157de9f6fe1a14ab2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
