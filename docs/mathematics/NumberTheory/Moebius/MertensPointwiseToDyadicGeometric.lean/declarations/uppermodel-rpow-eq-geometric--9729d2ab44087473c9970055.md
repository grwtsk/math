# upperModel_rpow_eq_geometric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6477c3e7-2d2a-5daf-3859-f70280b744a8",
  "kind": "theorem",
  "lexical_name": "upperModel_rpow_eq_geometric",
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
  "slug": "uppermodel-rpow-eq-geometric--9729d2ab44087473c9970055",
  "source": {
    "blob": "c733396529d16479328faf49cf014faa96699ad6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 143,
    "path": "GRWTSK/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9729d2ab44087473c9970055ae0264e45d76353746e7fb3fd9c3c45b29153994",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6477c3e7-2d2a-5daf-3859-f70280b744a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upperModel_rpow_eq_geometric
    (j t : ℕ) {δ : ℝ} (hδ : 0 < δ) :
    (((2 * (((2 ^ j : ℕ) : ℝ))) /
        (((2 ^ t : ℕ) : ℝ))) ^
          pointwiseMertensDyadicExponent δ) =
      pointwiseMertensDyadicConstantFactor δ *
        ((((2 ^ j : ℕ) : ℝ)) ^
          pointwiseMertensDyadicExponent δ) *
        pointwiseMertensDyadicRatio δ ^ t := by
  let X : ℝ := (((2 ^ j : ℕ) : ℝ))
  let α : ℝ := pointwiseMertensDyadicExponent δ
  have hX : 0 < X := by
    dsimp [X]
    positivity
  have hα : 0 < α := by
    dsimp [α]
    exact pointwiseMertensDyadicExponent_pos hδ
  have hpowCommute :
      ((((2 : ℝ) ^ t) ^ α)) =
        (((2 : ℝ) ^ α) ^ t) := by
    rw [← Real.rpow_natCast]
    rw [← Real.rpow_mul (by norm_num : 0 ≤ (2 : ℝ))]
    rw [← Real.rpow_natCast]
    rw [← Real.rpow_mul (by norm_num : 0 ≤ (2 : ℝ))]
    congr 1
    ring
  change (2 * X / ((2 ^ t : ℕ) : ℝ)) ^ α =
    (2 : ℝ) ^ α * X ^ α * (((2 : ℝ) ^ α)⁻¹) ^ t
  push_cast
  rw [Real.div_rpow (by positivity) (by positivity)]
  rw [Real.mul_rpow (by norm_num) hX.le]
  rw [hpowCommute]
  rw [div_eq_mul_inv, inv_pow]

/-- The exponent used by the pointwise envelope fits inside the parent
`delta/4` scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c733396529d16479328faf49cf014faa96699ad6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
