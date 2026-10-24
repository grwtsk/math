# parityResidueVarianceSum_ge_endpoint_div_64

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d72baae4-2188-65a5-f64c-378ea5c28c91",
  "kind": "theorem",
  "lexical_name": "parityResidueVarianceSum_ge_endpoint_div_64",
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
  "slug": "parityresiduevariancesum-ge-endpoint-div-64--a6b4d84fd7d935530ae92179",
  "source": {
    "blob": "1d1ec38cf19de026fec5a6303c686037851a750f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 234,
    "path": "GRWTSK/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6b4d84fd7d935530ae92179a5c05e3dd33dc934cf0f1734096b927ce7c77c73",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d72baae4-2188-65a5-f64c-378ea5c28c91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem parityResidueVarianceSum_ge_endpoint_div_64
    (b d : ℕ) [NeZero d]
    (hHalf : b / 2 < d * d)
    (hFourFifths : 4 * b ≤ 5 * (d * d))
    (hMass : QuarterThreeQuarterSquarefreeMass b) :
    (b : ℝ) / 64 ≤
      parityMertensResidueVariance b d 0 +
        parityMertensResidueVariance b d 1 := by
  let Q : ℝ := squarefreeMobiusMass b
  let q : ℝ := ((d * d : ℕ) : ℝ)
  have hqpos : 0 < q := by
    dsimp [q]
    exact_mod_cast Nat.mul_pos (Nat.pos_of_ne_zero (NeZero.ne d)) (Nat.pos_of_ne_zero (NeZero.ne d))
  have hE0 :=
    parityMertensResidueEnergy_eq_squarefreeDiagonal_of_half_lt_square
      b d 0 (by norm_num) hHalf
  have hE1 :=
    parityMertensResidueEnergy_eq_squarefreeDiagonal_of_half_lt_square
      b d 1 (by norm_num) hHalf
  have hM := parityMertensSquares_le_squarefreeMobiusMass_sq b
  have hQ0 : 0 ≤ Q := by
    dsimp [Q, squarefreeMobiusMass]
    positivity
  have hLower : (b : ℝ) / 4 ≤ Q := hMass.1
  have hUpper : Q ≤ 3 * (b : ℝ) / 4 := hMass.2
  have hqScale : 4 * (b : ℝ) ≤ 5 * q := by
    dsimp [q]
    exact_mod_cast hFourFifths
  have hQq : 16 * Q ≤ 15 * q := by
    nlinarith
  have hfrac : Q ^ 2 / q ≤ 15 * Q / 16 := by
    rw [div_le_iff₀ hqpos]
    nlinarith [mul_nonneg hQ0 (sub_nonneg.mpr hQq)]
  have hvar :
      parityMertensResidueVariance b d 0 +
          parityMertensResidueVariance b d 1 =
        Q -
          (parityMertensPrefix b 0 ^ 2 +
            parityMertensPrefix b 1 ^ 2) / q := by
    unfold parityMertensResidueVariance
    rw [hE0, hE1]
    dsimp [Q, q]
    rw [squarefreeMobiusMass_eq_parityDiagonals]
    ring
  rw [hvar]
  have hMdiv :
      (parityMertensPrefix b 0 ^ 2 +
          parityMertensPrefix b 1 ^ 2) / q ≤
        Q ^ 2 / q := by
    exact div_le_div_of_nonneg_right hM hqpos.le
  nlinarith

/-- The separate squarefree-diagonal terms are nonnegative, so the complete
positive modulus majorant inherits half of the variance floor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d1ec38cf19de026fec5a6303c686037851a750f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
