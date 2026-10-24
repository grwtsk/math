# coreGrowingShiftEndpointTransverseMultiplier_inv_norm_le_regularEnvelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02d5180b-f815-e9a4-d214-ca3bdfa6aa02",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftEndpointTransverseMultiplier_inv_norm_le_regularEnvelope",
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
  "slug": "coregrowingshiftendpointtransversemultiplier-inv-norm-le-regularenvelope--752a5a652806997435a27d5f",
  "source": {
    "blob": "ed2e17c534a6ea65d89e1f860e2d36a8699f9e75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 139,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseGeometryFourier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:752a5a652806997435a27d5f13829e95ed39dd27de507b4f483152ac167331ab",
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

Occurrence: `result:02d5180b-f815-e9a4-d214-ca3bdfa6aa02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftEndpointTransverseMultiplier_inv_norm_le_regularEnvelope
    {j L : ℕ}
    {u : CoreGrowingShiftEndpointDoubledFourierIndex j}
    (hu : u ∈ coreGrowingShiftEndpointTransverseRegularFrequencySet j L) :
    ‖(coreGrowingShiftEndpointTransverseMultiplier j u)⁻¹‖ ≤
      coreGrowingShiftEndpointTransverseRegularResolventEnvelope j L := by
  let d := coreGrowingShiftEndpointTransverseCircularDistance j u
  let Q := coreGrowingShiftEndpointDoubledFourierModulus j
  have hu0 : u ≠ 0 :=
    coreGrowingShiftEndpointTransverseRegularFrequencySet_ne_zero hu
  have hLd : L < d := by
    simpa [d] using
      mem_coreGrowingShiftEndpointTransverseRegularFrequencySet_iff.mp hu
  have hsucc : (L + 1 : ℕ) ≤ d := Nat.succ_le_iff.mpr hLd
  have hsuccReal : ((L + 1 : ℕ) : ℝ) ≤ (d : ℝ) := by
    exact_mod_cast hsucc
  have hden :
      (4 : ℝ) * ((L + 1 : ℕ) : ℝ) ≤ 4 * (d : ℝ) := by
    gcongr
  have hrecip :
      1 / (4 * (d : ℝ)) ≤
        1 / (4 * ((L + 1 : ℕ) : ℝ)) :=
    one_div_le_one_div_of_le (by positivity) hden
  calc
    ‖(coreGrowingShiftEndpointTransverseMultiplier j u)⁻¹‖ ≤
        (Q : ℝ) / (4 * (d : ℝ)) := by
          simpa [d, Q] using
            coreGrowingShiftEndpointTransverseMultiplier_inv_norm_le_distance
              hu0
    _ = (Q : ℝ) * (1 / (4 * (d : ℝ))) := by
      rw [div_eq_mul_inv, one_div]
    _ ≤ (Q : ℝ) * (1 / (4 * ((L + 1 : ℕ) : ℝ))) := by
      exact mul_le_mul_of_nonneg_left hrecip (by positivity)
    _ = coreGrowingShiftEndpointTransverseRegularResolventEnvelope j L := by
      unfold coreGrowingShiftEndpointTransverseRegularResolventEnvelope
      rw [div_eq_mul_inv, one_div]

/-- Positive ordinary representatives of length at most `L`, cast into the
doubled transverse group. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseGeometryFourier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseGeometryFourier.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed2e17c534a6ea65d89e1f860e2d36a8699f9e75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
