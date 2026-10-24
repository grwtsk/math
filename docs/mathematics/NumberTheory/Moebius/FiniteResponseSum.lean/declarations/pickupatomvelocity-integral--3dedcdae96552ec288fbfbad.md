# pickupAtomVelocity_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b31e40a9-8f1e-1742-3461-8ebdeb5a2151",
  "kind": "theorem",
  "lexical_name": "pickupAtomVelocity_integral",
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
  "slug": "pickupatomvelocity-integral--3dedcdae96552ec288fbfbad",
  "source": {
    "blob": "5e6c4b01e48f5cf6e779023aac9098fc0801127d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 133,
    "path": "GRWTSK/NumberTheory/Moebius/FiniteResponseSum.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3dedcdae96552ec288fbfbad8d8036a830a8af3267722efd9ae42ff2a652153c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/FiniteResponseSum.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b31e40a9-8f1e-1742-3461-8ebdeb5a2151`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickupAtomVelocity_integral {n : ℕ} (hn : 1 ≤ n) {T : ℝ}
    (hnT : Real.log n ≤ T) :
    (∫ u in (0 : ℝ)..T, pickupAtomVelocity n u) =
      2 * ((Real.sqrt n)⁻¹ - Real.exp (-T / 2)) := by
  have hnreal : (1 : ℝ) ≤ n := by exact_mod_cast hn
  have hlog : 0 ≤ Real.log n := Real.log_nonneg hnreal
  have hz : (∫ u in (0 : ℝ)..Real.log n, pickupAtomVelocity n u) = 0 := by
    calc
      _ = ∫ u in (0 : ℝ)..Real.log n, (0 : ℝ) := by
        apply intervalIntegral.integral_congr_Ioo_of_le hlog
        intro u hu
        simp [pickupAtomVelocity, not_le.mpr hu.2]
      _ = 0 := intervalIntegral.integral_zero
  have he : (∫ u in Real.log n..T, pickupAtomVelocity n u) =
      ∫ u in Real.log n..T, Real.exp (-u / 2) := by
    apply intervalIntegral.integral_congr
    intro u hu
    rw [uIcc_of_le hnT] at hu
    simp [pickupAtomVelocity, hu.1]
  have hsplit := intervalIntegral.integral_add_adjacent_intervals
    (pickupAtomVelocity_intervalIntegrable n 0 (Real.log n))
    (pickupAtomVelocity_intervalIntegrable n (Real.log n) T)
  rw [← hsplit, hz, zero_add, he, pickup_negative_half_integral,
    pickup_exp_negative_log_half hn]

/-- The complete signed pickup identity holds for every real nonnegative cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/FiniteResponseSum.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/FiniteResponseSum.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e6c4b01e48f5cf6e779023aac9098fc0801127d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
