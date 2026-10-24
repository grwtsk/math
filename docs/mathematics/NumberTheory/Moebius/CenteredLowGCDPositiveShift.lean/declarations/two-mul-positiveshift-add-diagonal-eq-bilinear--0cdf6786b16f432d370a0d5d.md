# two_mul_positiveShift_add_diagonal_eq_bilinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5fdc0774-e4c2-311c-0089-f62977654afa",
  "kind": "theorem",
  "lexical_name": "two_mul_positiveShift_add_diagonal_eq_bilinear",
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
  "slug": "two-mul-positiveshift-add-diagonal-eq-bilinear--0cdf6786b16f432d370a0d5d",
  "source": {
    "blob": "0f7cb3ce884eb7e4f8372cb7c4d8d781aa0774f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 361,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDPositiveShift.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0cdf6786b16f432d370a0d5d1ddaee78afdab4374584394a834da15ebbc764fe",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredLowGCDPositiveShift.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fdc0774-e4c2-311c-0089-f62977654afa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 361–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem two_mul_positiveShift_add_diagonal_eq_bilinear
    {X Y : ℕ}
    (hX : 0 < X)
    (hY : 1 ≤ Y)
    (w : ℕ → ℝ) :
    2 * positiveShiftCenteredLowGCDCorrelation X Y w +
        diagonalCenteredLowGCDCorrelation X Y w =
      centeredLowGCDBilinear X Y w := by
  calc
    2 * positiveShiftCenteredLowGCDCorrelation X Y w +
        diagonalCenteredLowGCDCorrelation X Y w =
      diagonalCenteredLowGCDCorrelation X Y w +
        2 *
          ∑ p ∈ positiveOffDiagonalPairs X,
            w p.1 * w p.2 *
              centeredLowGCDPairKernel X Y p.1 p.2 := by
                rw [positivePairSum_eq_positiveShift]
                ring
    _ = orderedCenteredLowGCDCorrelation X Y w :=
      (orderedCorrelation_eq_diagonal_add_two_mul_positive
        X Y w).symm
    _ = centeredLowGCDBilinear X Y w :=
      orderedCenteredLowGCDCorrelation_eq_bilinear hX hY w


end GRWTSK.NumberTheory.Moebius.CenteredLowGCD
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDPositiveShift.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDPositiveShift.lean#L361).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f7cb3ce884eb7e4f8372cb7c4d8d781aa0774f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
