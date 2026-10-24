# corrected_elementary_covariance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "722682c7564ecc685095d3cce6736cb1bacfa7b2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 123,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/816ac774a088389871786abbf6683599cbdb8e5aba36434a2a81d0fdbde404fc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:458d43a3-eaf4-58e0-7c96-f6e5b3d648ff",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e184e900-b162-5bcf-8a5d-97e4d9842580",
  "kind": "theorem",
  "lexical_name": "corrected_elementary_covariance",
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
  "slug": "corrected-elementary-covariance--c8f75cebf0d58f218e7a84a5",
  "source": {
    "blob": "722682c7564ecc685095d3cce6736cb1bacfa7b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 123,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FractionalCovarianceElementaryStatements/Variant816ac774a088389871786abbf6683599cbdb8e5aba36434a2a81d0fdbde404fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8f75cebf0d58f218e7a84a59dcc9e6653f30350e9563912c99b52bb5cdd8024",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FractionalCovarianceElementaryStatements/Variant816ac774a088389871786abbf6683599cbdb8e5aba36434a2a81d0fdbde404fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e184e900-b162-5bcf-8a5d-97e4d9842580`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem corrected_elementary_covariance (X : ℕ) (hX : 1 ≤ X) (C : ℝ) :
    (∑ d ∈ Icc 1 X, ∑ e ∈ Icc 1 X, dampedCoefficient X 0 d * dampedCoefficient X 0 e *
      (C / 2 * ((d : ℝ)⁻¹ + (e : ℝ)⁻¹) +
        ((d : ℝ)⁻¹ - (e : ℝ)⁻¹) * (Real.log (d : ℝ) - Real.log (e : ℝ)) / 2)) =
      -((∑ d ∈ Icc 1 X, (ArithmeticFunction.moebius d : ℝ)) -
        (X : ℝ) * mobiusReciprocalSum X) * logNormalization X := by
  rw [low_rank_sum]
  simp only [← div_eq_mul_inv, corrected_reciprocal_moment_zero X hX,
    corrected_log_reciprocal_moment X hX, corrected_total_mass X hX]
  ring

end
end FractionalCovarianceElementaryScratch

open MeasureTheory Set Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open MobiusEndpointBudget MobiusPoleNumerator FiniteMobiusController
noncomputable section
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FractionalCovarianceElementaryStatements/Variant816ac774a088389871786abbf6683599cbdb8e5aba36434a2a81d0fdbde404fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FractionalCovarianceElementaryStatements/Variant816ac774a088389871786abbf6683599cbdb8e5aba36434a2a81d0fdbde404fc.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `722682c7564ecc685095d3cce6736cb1bacfa7b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
