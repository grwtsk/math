# floor_square_short_error_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a837cf2-9c8a-69fd-3e96-af09fa9694d5",
  "kind": "theorem",
  "lexical_name": "floor_square_short_error_tail",
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
  "slug": "floor-square-short-error-tail--6156a62eaafc30c9107b4517",
  "source": {
    "blob": "224c36150220bf2f01b89caf5d8cb1c1c3d335e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 169,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpDiagonalTail/Variant4a9af75a7160b9d3e61a57c029a261d0b1c4441d5eaa27c5f95c8bd4dcaa4c9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6156a62eaafc30c9107b4517b2f6c2696b58afae54310ff3eef6035206594cd4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpDiagonalTail/Variant4a9af75a7160b9d3e61a57c029a261d0b1c4441d5eaa27c5f95c8bd4dcaa4c9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a837cf2-9c8a-69fd-3e96-af09fa9694d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem floor_square_short_error_tail {Q A : ℝ} (hQ : 91 ≤ Q) (hQA : Q ≤ A) :
    |(∫ t in 0..Real.log (⌊A ^ 2⌋₊ : ℝ), diagonalCorrelation A t) -
      Real.log (⌊A ^ 2⌋₊ : ℝ)| ≤
      16 * tailEnergyCoefficient Q * Real.log Q ^ 3 / (3 * Q ^ 2) := by
  have hQ1 : 1 ≤ Q := by linarith
  have hA1 := hQ1.trans hQA
  have hL0 := (floor_square_log_bounds A hA1).1
  have hfloor : (1 : ℝ) ≤ ⌊A ^ 2⌋₊ := by
    exact_mod_cast (Nat.one_le_floor_iff _).mpr (by nlinarith : (1 : ℝ) ≤ A ^ 2)
  have hLA : Real.log (⌊A ^ 2⌋₊ : ℝ) ≤ 2 * Real.log A := by
    calc
      _ ≤ Real.log (A ^ 2) := Real.log_le_log (by linarith) (Nat.floor_le (sq_nonneg A))
      _ = _ := by rw [Real.log_pow]; norm_num
  have hcube : Real.log (⌊A ^ 2⌋₊ : ℝ) ^ 3 ≤ (2 * Real.log A) ^ 3 :=
    pow_le_pow_left₀ hL0 hLA 3
  have hg := (tailEnergyCoefficient_pos Q).le
  have hlog := log_cube_div_square_le hQ hQA
  calc
    _ ≤ 2 * tailEnergyCoefficient Q * Real.log (⌊A ^ 2⌋₊ : ℝ) ^ 3 / (3 * A ^ 2) :=
      diagonal_short_integral_error_tail hQ1 hQA _ hL0
    _ ≤ 2 * tailEnergyCoefficient Q * (2 * Real.log A) ^ 3 / (3 * A ^ 2) :=
      div_le_div_of_nonneg_right (mul_le_mul_of_nonneg_left hcube (by positivity))
        (by positivity)
    _ = (16 * tailEnergyCoefficient Q / 3) * (Real.log A ^ 3 / A ^ 2) := by ring
    _ ≤ (16 * tailEnergyCoefficient Q / 3) * (Real.log Q ^ 3 / Q ^ 2) :=
      mul_le_mul_of_nonneg_left hlog (by positivity)
    _ = _ := by ring

/-- Existing elementary prime error, actual support and exact lower correction compose. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpDiagonalTail/Variant4a9af75a7160b9d3e61a57c029a261d0b1c4441d5eaa27c5f95c8bd4dcaa4c9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpDiagonalTail/Variant4a9af75a7160b9d3e61a57c029a261d0b1c4441d5eaa27c5f95c8bd4dcaa4c9a.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `224c36150220bf2f01b89caf5d8cb1c1c3d335e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
