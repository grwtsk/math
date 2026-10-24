# arithmeticResidual_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c29578b-004d-1c13-be43-88e3d0a6f07f",
  "kind": "theorem",
  "lexical_name": "arithmeticResidual_norm_le",
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
  "slug": "arithmeticresidual-norm-le--cd2c737b2dba07feacc49971",
  "source": {
    "blob": "2175f671b40ee21dbfb24fe11f8d59984847b35d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 43,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicResidualTailFragment/Variantca83071d67c3c285f6cacbc35a85b1f57ecb0ffc974ee9fb97905bfda2297a45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd2c737b2dba07feacc499712ba6534a1e1b6840d8afe44718df9a6b270f7d4d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogarithmicResidualTailFragment/Variantca83071d67c3c285f6cacbc35a85b1f57ecb0ffc974ee9fb97905bfda2297a45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c29578b-004d-1c13-be43-88e3d0a6f07f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arithmeticResidual_norm_le (X : ℕ) (ε x : ℝ) :
    ‖arithmeticResidual X ε x‖ ≤ 1 + ∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X ε d| := by
  unfold arithmeticResidual
  calc
    _ ≤ ‖(if 1 ≤ x then (1 : ℂ) else 0)‖ +
        ‖∑ d ∈ Finset.Icc 1 X, (dampedCoefficient X ε d : ℂ) *
          ((Int.fract (x / (d : ℝ)) : ℝ) : ℂ)‖ := norm_add_le _ _
    _ ≤ 1 + ∑ d ∈ Finset.Icc 1 X,
        ‖(dampedCoefficient X ε d : ℂ) * ((Int.fract (x / (d : ℝ)) : ℝ) : ℂ)‖ := by
      apply add_le_add
      · split_ifs <;> norm_num
      · exact norm_sum_le _ _
    _ ≤ _ := by
      gcongr with d hd
      rw [norm_mul]
      simp only [Complex.norm_real, Real.norm_eq_abs]
      rw [abs_of_nonneg (Int.fract_nonneg (x / (d : ℝ)))]
      simpa only [mul_one] using mul_le_mul_of_nonneg_left
        (Int.fract_lt_one (x / (d : ℝ))).le (abs_nonneg (dampedCoefficient X ε d))

/-- The negative logarithmic half-line is exactly the exponentially weighted corrected pole value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogarithmicResidualTailFragment/Variantca83071d67c3c285f6cacbc35a85b1f57ecb0ffc974ee9fb97905bfda2297a45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicResidualTailFragment/Variantca83071d67c3c285f6cacbc35a85b1f57ecb0ffc974ee9fb97905bfda2297a45.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2175f671b40ee21dbfb24fe11f8d59984847b35d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
