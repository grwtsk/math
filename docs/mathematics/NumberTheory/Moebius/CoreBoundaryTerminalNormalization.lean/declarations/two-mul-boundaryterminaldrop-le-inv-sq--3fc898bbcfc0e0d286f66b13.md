# two_mul_boundaryTerminalDrop_le_inv_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5093bb1-de4d-9c38-0928-9f14fb29f428",
  "kind": "theorem",
  "lexical_name": "two_mul_boundaryTerminalDrop_le_inv_sq",
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
  "slug": "two-mul-boundaryterminaldrop-le-inv-sq--3fc898bbcfc0e0d286f66b13",
  "source": {
    "blob": "e052eba4172554145d40aa7f8a22ba430dba1a5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 40,
    "path": "GRWTSK/NumberTheory/Moebius/CoreBoundaryTerminalNormalization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fc898bbcfc0e0d286f66b13768cfa59bfc8602ee1e9fb74141585346dbe3bda",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreBoundaryTerminalNormalization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5093bb1-de4d-9c38-0928-9f14fb29f428`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem two_mul_boundaryTerminalDrop_le_inv_sq
    (j : ℕ) :
    0 ≤ 2 * boundaryTerminalDrop j ∧
      2 * boundaryTerminalDrop j ≤
        (((2 ^ j : ℕ) : ℝ)⁻¹) ^ 2 := by
  let X : ℕ := 2 ^ j
  have hX : 1 ≤ X := by
    dsimp [X]
    positivity
  have hXR : (0 : ℝ) < X := by
    exact_mod_cast hX
  have h2X1 : X ≤ 2 * X - 1 := by omega
  rw [boundaryTerminalDrop_eq_leftScale]
  change 0 ≤
      2 * (1 / ((((2 * X - 1 : ℕ) : ℝ)) * (((2 * X : ℕ) : ℝ)))) ∧
    2 * (1 / ((((2 * X - 1 : ℕ) : ℝ)) * (((2 * X : ℕ) : ℝ)))) ≤
      ((X : ℝ)⁻¹) ^ 2
  constructor
  · positivity
  · have h2XR : (((2 * X : ℕ) : ℝ)) = 2 * (X : ℝ) := by
      norm_num
    rw [h2XR]
    have hden :
        (X : ℝ) * (X : ℝ) ≤
          (((2 * X - 1 : ℕ) : ℝ)) * (X : ℝ) := by
      apply mul_le_mul_of_nonneg_right
      · exact_mod_cast h2X1
      · positivity
    have hdenpos :
        0 < (((2 * X - 1 : ℕ) : ℝ)) * (X : ℝ) := by
      positivity
    calc
      2 * (1 /
          ((((2 * X - 1 : ℕ) : ℝ)) * (2 * (X : ℝ)))) =
        1 / ((((2 * X - 1 : ℕ) : ℝ)) * (X : ℝ)) := by
          field_simp
          ring
      _ ≤ 1 / ((X : ℝ) * (X : ℝ)) := by
          exact one_div_le_one_div_of_le
            (mul_pos hXR hXR) hden
      _ = ((X : ℝ)⁻¹) ^ 2 := by
          field_simp [ne_of_gt hXR]
          ring

/-- Squared normalization used by the quadratic boundary supplier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreBoundaryTerminalNormalization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreBoundaryTerminalNormalization.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e052eba4172554145d40aa7f8a22ba430dba1a5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
