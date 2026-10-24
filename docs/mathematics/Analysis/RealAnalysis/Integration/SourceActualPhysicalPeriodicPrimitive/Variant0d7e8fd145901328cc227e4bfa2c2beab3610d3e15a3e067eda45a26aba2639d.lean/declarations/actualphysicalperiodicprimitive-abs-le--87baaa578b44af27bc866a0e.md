# actualPhysicalPeriodicPrimitive_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b0ec1db-ea53-307a-5f56-e4d1fddb2cdf",
  "kind": "theorem",
  "lexical_name": "actualPhysicalPeriodicPrimitive_abs_le",
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
  "slug": "actualphysicalperiodicprimitive-abs-le--87baaa578b44af27bc866a0e",
  "source": {
    "blob": "a72055714509bc67542ce94d1f8716cc0a8a8a63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 194,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualPhysicalPeriodicPrimitive/Variant0d7e8fd145901328cc227e4bfa2c2beab3610d3e15a3e067eda45a26aba2639d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87baaa578b44af27bc866a0e53ece0da2885aada9c5ba4048c2cefdebb2e9bee",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualPhysicalPeriodicPrimitive/Variant0d7e8fd145901328cc227e4bfa2c2beab3610d3e15a3e067eda45a26aba2639d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b0ec1db-ea53-307a-5f56-e4d1fddb2cdf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPhysicalPeriodicPrimitive_abs_le (U : ℕ) (x : ℝ) (hx : 0 ≤ x) :
    |actualPhysicalPeriodicPrimitive U x| ≤ (U : ℝ) * ((U : ℝ) + 1) / 16 := by
  let M := Nat.floor x
  let r := x - (M : ℝ)
  let C : ℝ := (U : ℝ) * ((U : ℝ) + 1) / 16
  have hr0 : 0 ≤ r := sub_nonneg.mpr (Nat.floor_le hx)
  have hr1 : r ≤ 1 := by have := Nat.lt_floor_add_one x; dsimp [r, M]; linarith
  rw [actualPhysicalPeriodicPrimitive_eq_affine U x hx]
  change |actualSignedPeriodicPrimitive U M + r *
    (actualSignedPeriodicPrimitive U (M + 1) - actualSignedPeriodicPrimitive U M)| ≤ C
  have he : actualSignedPeriodicPrimitive U M + r *
      (actualSignedPeriodicPrimitive U (M + 1) - actualSignedPeriodicPrimitive U M) =
      (1 - r) * actualSignedPeriodicPrimitive U M +
        r * actualSignedPeriodicPrimitive U (M + 1) := by
    ring
  rw [he]
  have hb0 := actualSignedPeriodicPrimitive_abs_le U M
  have hb1 := actualSignedPeriodicPrimitive_abs_le U (M + 1)
  change |actualSignedPeriodicPrimitive U M| ≤ C at hb0
  change |actualSignedPeriodicPrimitive U (M + 1)| ≤ C at hb1
  have hh := abs_add_le ((1 - r) * actualSignedPeriodicPrimitive U M)
    (r * actualSignedPeriodicPrimitive U (M + 1))
  rw [abs_mul, abs_mul, abs_of_nonneg hr0, abs_of_nonneg (by linarith : 0 ≤ 1 - r)] at hh
  nlinarith [mul_nonneg (sub_nonneg.mpr hb0) (by linarith : 0 ≤ 1 - r),
    mul_nonneg (sub_nonneg.mpr hb1) hr0]

/-- The integral primitive is genuinely absolutely continuous across every physical seam. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualPhysicalPeriodicPrimitive/Variant0d7e8fd145901328cc227e4bfa2c2beab3610d3e15a3e067eda45a26aba2639d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualPhysicalPeriodicPrimitive/Variant0d7e8fd145901328cc227e4bfa2c2beab3610d3e15a3e067eda45a26aba2639d.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a72055714509bc67542ce94d1f8716cc0a8a8a63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
