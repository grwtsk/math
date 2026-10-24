# actualPhysicalPeriodicPrimitive_eq_affine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8bffc442-55ad-a22c-8fc7-f688907321fd",
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
  "slug": "actualphysicalperiodicprimitive-eq-affine--71ae4fd64b03dc00adc4bbf5",
  "source": {
    "blob": "82158697f6f99243fb67c1d0afd74df203e8bc69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 165,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt01/Variantfddfd24a3b8e8ed6ad5661b9bc0cdaa6e1107ab4fb169e1e17735225412bff2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71ae4fd64b03dc00adc4bbf57c238c17393650e5795d9b2e9389305c2b773a79",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt01/Variantfddfd24a3b8e8ed6ad5661b9bc0cdaa6e1107ab4fb169e1e17735225412bff2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bffc442-55ad-a22c-8fc7-f688907321fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–192.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt01/Variantfddfd24a3b8e8ed6ad5661b9bc0cdaa6e1107ab4fb169e1e17735225412bff2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt01/Variantfddfd24a3b8e8ed6ad5661b9bc0cdaa6e1107ab4fb169e1e17735225412bff2f.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82158697f6f99243fb67c1d0afd74df203e8bc69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
