# quarticFactor_mul_partial_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0c60d721-0f30-21a7-9f2d-7410d73a2936",
  "kind": "theorem",
  "lexical_name": "quarticFactor_mul_partial_le",
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
  "slug": "quarticfactor-mul-partial-le--8483041adc4471eff8d4f6fa",
  "source": {
    "blob": "d0004a83f3d4f923751340cc92526896c6adf476",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 166,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/MellinNormalizedGrowingCellPacking.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8483041adc4471eff8d4f6faa1a09b6060010acd1df7167107bdd8e8c24e246a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/MellinNormalizedGrowingCellPacking.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c60d721-0f30-21a7-9f2d-7410d73a2936`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quarticFactor_mul_partial_le
    {z : ZeroPoint} {ha : zeroDefect z.1 ≠ 0}
    (data : MellinNormalizedActionLowerDensityAtZero z ha)
    (N : ℕ) :
    data.quarticFactor *
        (∑ j ∈ Finset.range N, data.lowerWeight j) ≤
      safeActionCumulativeValue z N := by
  rw [safeActionCumulativeValue_factor]
  unfold quarticFactor
  have hA :
      (∑ j ∈ Finset.range N, data.lowerWeight j) ≤
        safeActionCumulativeAxialCoefficient z N := by
    unfold safeActionCumulativeAxialCoefficient
    exact Finset.sum_le_sum
      (fun j hj => data.axial_lower j)
  have hT :
      (∑ j ∈ Finset.range N, data.lowerWeight j) ≤
        safeActionCumulativeTransverseCoefficient z N := by
    unfold safeActionCumulativeTransverseCoefficient
    exact Finset.sum_le_sum
      (fun j hj => data.transverse_lower j)
  have hw :
      0 ≤ ∑ j ∈ Finset.range N, data.lowerWeight j :=
    Finset.sum_nonneg (fun j hj => data.lowerWeight_nonnegative j)
  have h1 := mul_le_mul_of_nonneg_left hA (by positivity : 0 ≤ (zeroDefect z.1)^4)
  have h2 := mul_le_mul_of_nonneg_left hT
    (by positivity : 0 ≤ 3 * (zeroDefect z.1)^2 * z.1.im^2)
  nlinarith [
    safeActionCumulativeAxialCoefficient_nonnegative z N,
    safeActionCumulativeTransverseCoefficient_nonnegative z N,
    sq_nonneg (zeroDefect z.1),
    sq_nonneg z.1.im]

/-- Any independent uniform upper comparison for the growing action cells would
contradict divergent common lower mass at an off-line zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/MellinNormalizedGrowingCellPacking.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/MellinNormalizedGrowingCellPacking.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0004a83f3d4f923751340cc92526896c6adf476` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
