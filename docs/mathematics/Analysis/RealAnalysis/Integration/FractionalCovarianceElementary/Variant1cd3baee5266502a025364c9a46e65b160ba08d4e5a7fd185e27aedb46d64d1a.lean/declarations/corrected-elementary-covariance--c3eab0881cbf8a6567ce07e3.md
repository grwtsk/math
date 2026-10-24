# corrected_elementary_covariance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dbd3b44a-fa77-4b81-9c06-e144aee0afda",
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
  "slug": "corrected-elementary-covariance--c3eab0881cbf8a6567ce07e3",
  "source": {
    "blob": "1b3e55811fe4c023c714c0f908643032f2035738",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 131,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FractionalCovarianceElementary/Variant1cd3baee5266502a025364c9a46e65b160ba08d4e5a7fd185e27aedb46d64d1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3eab0881cbf8a6567ce07e34c518d91010ea72c8f516a9dc817ca0ccc900520",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FractionalCovarianceElementary/Variant1cd3baee5266502a025364c9a46e65b160ba08d4e5a7fd185e27aedb46d64d1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbd3b44a-fa77-4b81-9c06-e144aee0afda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–143.

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
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FractionalCovarianceElementary/Variant1cd3baee5266502a025364c9a46e65b160ba08d4e5a7fd185e27aedb46d64d1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FractionalCovarianceElementary/Variant1cd3baee5266502a025364c9a46e65b160ba08d4e5a7fd185e27aedb46d64d1a.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b3e55811fe4c023c714c0f908643032f2035738` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
