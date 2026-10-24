# coreGrowingShiftEndpointTransverseMultiplier_inv_norm_le_distance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31c1ac8f-f496-89cc-82bd-6ae1501a205d",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftEndpointTransverseMultiplier_inv_norm_le_distance",
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
  "slug": "coregrowingshiftendpointtransversemultiplier-inv-norm-le-distance--3a8e6816887047fe861f4e68",
  "source": {
    "blob": "ed2e17c534a6ea65d89e1f860e2d36a8699f9e75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 82,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseGeometryFourier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a8e6816887047fe861f4e683eed666242a4ffb7a7711e56644146928d727488",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseGeometryFourier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31c1ac8f-f496-89cc-82bd-6ae1501a205d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftEndpointTransverseMultiplier_inv_norm_le_distance
    {j : ℕ}
    {u : CoreGrowingShiftEndpointDoubledFourierIndex j}
    (hu : u ≠ 0) :
    ‖(coreGrowingShiftEndpointTransverseMultiplier j u)⁻¹‖ ≤
      (coreGrowingShiftEndpointDoubledFourierModulus j : ℝ) /
        (4 *
          (coreGrowingShiftEndpointTransverseCircularDistance j u : ℝ)) := by
  let d := coreGrowingShiftEndpointTransverseCircularDistance j u
  let Q := coreGrowingShiftEndpointDoubledFourierModulus j
  have hd0 : d ≠ 0 := by
    intro hd
    exact hu
      ((coreGrowingShiftEndpointTransverseCircularDistance_eq_zero_iff j u).mp
        hd)
  have hd : (0 : ℝ) < (d : ℝ) := by
    exact_mod_cast Nat.pos_of_ne_zero hd0
  have hQnat : 0 < Q := by
    unfold Q coreGrowingShiftEndpointDoubledFourierModulus
      coreGrowingShiftEndpointFourierModulus
    positivity
  have hQ : (0 : ℝ) < (Q : ℝ) := by
    exact_mod_cast hQnat
  have hscale :
      0 < 4 * (d : ℝ) / (Q : ℝ) := by
    positivity
  have hlower :
      4 * (d : ℝ) / (Q : ℝ) ≤
        ‖coreGrowingShiftEndpointTransverseMultiplier j u‖ := by
    simpa [coreGrowingShiftEndpointTransverseJordanLowerScale, d, Q] using
      coreGrowingShiftEndpointTransverseMultiplier_norm_lowerBound j u
  have hrecip := one_div_le_one_div_of_le hscale hlower
  rw [norm_inv]
  calc
    ‖coreGrowingShiftEndpointTransverseMultiplier j u‖⁻¹ ≤
        (4 * (d : ℝ) / (Q : ℝ))⁻¹ := by
          simpa [one_div] using hrecip
    _ = (Q : ℝ) / (4 * (d : ℝ)) := by
      field_simp [ne_of_gt hQ, ne_of_gt hd]
      ring

/-- Uniform scalar envelope for regular transverse frequencies beyond cutoff
`L`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseGeometryFourier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseGeometryFourier.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed2e17c534a6ea65d89e1f860e2d36a8699f9e75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
