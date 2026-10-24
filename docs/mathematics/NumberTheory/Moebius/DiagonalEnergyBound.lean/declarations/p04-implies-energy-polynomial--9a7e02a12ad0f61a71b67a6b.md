# P04_implies_energy_polynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "90a542761e2027420766f5d406882cea10c27c8d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/NumberTheory/Moebius/DiagonalEnergyBound.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:46bfc583-9c5d-778c-6f77-22e831eeb1ab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fb039759-499b-ad32-4503-7e962e26eb7d",
  "kind": "theorem",
  "lexical_name": "P04_implies_energy_polynomial",
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
  "slug": "p04-implies-energy-polynomial--9a7e02a12ad0f61a71b67a6b",
  "source": {
    "blob": "90a542761e2027420766f5d406882cea10c27c8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 82,
    "path": "GRWTSK/NumberTheory/Moebius/DiagonalEnergyBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a7e02a12ad0f61a71b67a6b2647ff4c3d93f4decdd6ce0756d0b9db91d2e7e9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/DiagonalEnergyBound.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb039759-499b-ad32-4503-7e962e26eb7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem P04_implies_energy_polynomial (h : P04) : PolynomialBound energy := by
  obtain ⟨C, r, hC, hr, hX⟩ := h
  refine ⟨C + 4, r + 2, by linarith, by linarith, ?_⟩
  intro T hT
  have hb : 1 ≤ 1 + T := by linarith
  have hxpow : (1 + T) ^ r ≤ (1 + T) ^ (r + 2) :=
    Real.rpow_le_rpow_of_exponent_le hb (by linarith)
  have hdpow : (1 + T) ^ (2 : ℕ) ≤ (1 + T) ^ (r + 2) := by
    have hp := Real.rpow_le_rpow_of_exponent_le hb (show (2 : ℝ) ≤ r + 2 by linarith)
    simpa using hp
  have hd : diagonal T ≤ 4 * (1 + T) ^ (r + 2) := by
    apply (diagonal_quadratic_bound T hT).trans
    have hsq : 4 * T * (1 + T) ≤ 4 * (1 + T) ^ (2 : ℕ) := by nlinarith
    exact hsq.trans (mul_le_mul_of_nonneg_left hdpow (by norm_num))
  have hx : crossEnergy T ≤ C * (1 + T) ^ (r + 2) :=
    (hX T hT).trans (mul_le_mul_of_nonneg_left hxpow hC)
  rw [energy_eq_diagonal_add_cross]
  calc
    diagonal T + crossEnergy T ≤ 4 * (1 + T) ^ (r + 2) + C * (1 + T) ^ (r + 2) :=
      add_le_add hd hx
    _ = (C + 4) * (1 + T) ^ (r + 2) := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/DiagonalEnergyBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/DiagonalEnergyBound.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90a542761e2027420766f5d406882cea10c27c8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
