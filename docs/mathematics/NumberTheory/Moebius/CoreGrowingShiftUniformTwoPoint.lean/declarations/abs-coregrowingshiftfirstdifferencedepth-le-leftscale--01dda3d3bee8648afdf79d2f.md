# abs_coreGrowingShiftFirstDifferenceDepth_le_leftScale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05cea4b7-6216-b68b-70e5-f1ed14872580",
  "kind": "theorem",
  "lexical_name": "abs_coreGrowingShiftFirstDifferenceDepth_le_leftScale",
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
  "slug": "abs-coregrowingshiftfirstdifferencedepth-le-leftscale--01dda3d3bee8648afdf79d2f",
  "source": {
    "blob": "594f9b1aa2f5aaeed3d38d5dd386832eb8d4c70b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 274,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftUniformTwoPoint.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01dda3d3bee8648afdf79d2fadd7520bb2723fdd473fd7ce633b56dfcfb7cadd",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftUniformTwoPoint.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05cea4b7-6216-b68b-70e5-f1ed14872580`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_coreGrowingShiftFirstDifferenceDepth_le_leftScale
    {j t : ℕ} {U : ℝ}
    (henv : CoreGrowingShiftPrefixEnvelope j U)
    (hcore : t ∈ coreLongDeepDepths j) :
    |coreGrowingShiftFirstDifferenceDepth j t| ≤
      2 * (((2 ^ j : ℕ) : ℝ)) * U *
        ((((2 ^ j : ℕ) : ℝ))⁻¹) ^ 2 := by
  have hN :
      (harmonicShiftCount j t : ℝ) ≤ ((2 ^ j : ℕ) : ℝ) := by
    exact_mod_cast harmonicShiftCount_le_leftScale j t
  calc
    |coreGrowingShiftFirstDifferenceDepth j t| ≤
      2 * (harmonicShiftCount j t : ℝ) * U *
        ((((2 ^ j : ℕ) : ℝ))⁻¹) ^ 2 :=
      abs_coreGrowingShiftFirstDifferenceDepth_le henv hcore
    _ = (harmonicShiftCount j t : ℝ) *
        (2 * U * ((((2 ^ j : ℕ) : ℝ))⁻¹) ^ 2) := by ring
    _ ≤ ((2 ^ j : ℕ) : ℝ) *
        (2 * U * ((((2 ^ j : ℕ) : ℝ))⁻¹) ^ 2) := by
      apply mul_le_mul_of_nonneg_right hN
      exact mul_nonneg
        (mul_nonneg (by norm_num) henv.1)
        (sq_nonneg _)
    _ = _ := by ring

/-- There are at most `2^(j+1)` genuine core depths. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftUniformTwoPoint.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftUniformTwoPoint.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `594f9b1aa2f5aaeed3d38d5dd386832eb8d4c70b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
