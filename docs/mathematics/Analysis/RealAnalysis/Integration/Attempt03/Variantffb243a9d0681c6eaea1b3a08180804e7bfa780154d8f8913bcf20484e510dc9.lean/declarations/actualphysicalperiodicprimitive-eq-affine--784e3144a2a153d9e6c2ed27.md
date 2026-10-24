# actualPhysicalPeriodicPrimitive_eq_affine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e2e7fcd-efd6-49b1-0283-4579cd852cc3",
  "kind": "theorem",
  "lexical_name": "actualPhysicalPeriodicPrimitive_eq_affine",
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
  "slug": "actualphysicalperiodicprimitive-eq-affine--784e3144a2a153d9e6c2ed27",
  "source": {
    "blob": "a2ad545300f68b89c1dc90e1bcfbf427425c7c7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 166,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt03/Variantffb243a9d0681c6eaea1b3a08180804e7bfa780154d8f8913bcf20484e510dc9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:784e3144a2a153d9e6c2ed2747032df5dd242c044b132e88b2fc886e6adc52fc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt03/Variantffb243a9d0681c6eaea1b3a08180804e7bfa780154d8f8913bcf20484e510dc9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e2e7fcd-efd6-49b1-0283-4579cd852cc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPhysicalPeriodicPrimitive_eq_affine (U : ℕ) (x : ℝ) (hx : 0 ≤ x) :
    actualPhysicalPeriodicPrimitive U x =
      actualSignedPeriodicPrimitive U (Nat.floor x) +
        (x - ((Nat.floor x : ℕ) : ℝ)) *
          (actualSignedPeriodicPrimitive U (Nat.floor x + 1) -
            actualSignedPeriodicPrimitive U (Nat.floor x)) := by
  let M := Nat.floor x
  have hM0 : (0 : ℝ) ≤ (M : ℝ) := Nat.cast_nonneg _
  have hMx : (M : ℝ) ≤ x := Nat.floor_le hx
  have hx1 : x < (M : ℝ) + 1 := Nat.lt_floor_add_one x
  have he : (∫ v in (M : ℝ)..x, actualPhysicalPeriodicDensity U v) =
      (x - (M : ℝ)) * actualPhysicalPeriodicDensity U (M : ℝ) := by
    calc
      _ = ∫ _v in (M : ℝ)..x, actualPhysicalPeriodicDensity U (M : ℝ) := by
        apply intervalIntegral.integral_congr
        intro v hv
        rw [uIcc_of_le hMx] at hv
        exact density_on_cell U M ⟨hv.1, hv.2.trans_lt hx1⟩
      _ = _ := by rw [intervalIntegral.integral_const, smul_eq_mul]
  have ha := intervalIntegral.integral_add_adjacent_intervals
    (actualPhysicalPeriodicDensity_intervalIntegrable U 0 (M : ℝ))
    (actualPhysicalPeriodicDensity_intervalIntegrable U (M : ℝ) x)
  unfold actualPhysicalPeriodicPrimitive
  rw [← ha, he, actualPhysicalPeriodicDensity_at_integer]
  change actualPhysicalPeriodicPrimitive U (M : ℝ) + _ = _
  rw [integer_integral U M]

/-- Convex interpolation keeps the unconditional quadratic signed primitive budget everywhere. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt03/Variantffb243a9d0681c6eaea1b3a08180804e7bfa780154d8f8913bcf20484e510dc9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt03/Variantffb243a9d0681c6eaea1b3a08180804e7bfa780154d8f8913bcf20484e510dc9.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2ad545300f68b89c1dc90e1bcfbf427425c7c7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
