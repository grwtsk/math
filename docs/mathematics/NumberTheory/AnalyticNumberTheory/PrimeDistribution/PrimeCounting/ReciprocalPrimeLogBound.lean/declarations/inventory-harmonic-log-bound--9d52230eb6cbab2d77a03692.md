# inventory_harmonic_log_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a414f4c9b65172ee88f81e297e55c2c4077c4c32",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 183,
      "path": "GRWTSK/NumberTheory/PrimeCounting/ReciprocalPrimeLogBound.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4f951f81-c0fe-b0d3-20ec-23dc9dd0e2d0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:342d15a8-a5a9-f92f-469c-b723207da27c",
  "kind": "theorem",
  "lexical_name": "inventory_harmonic_log_bound",
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
  "slug": "inventory-harmonic-log-bound--9d52230eb6cbab2d77a03692",
  "source": {
    "blob": "a414f4c9b65172ee88f81e297e55c2c4077c4c32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 183,
    "path": "GRWTSK/NumberTheory/PrimeCounting/ReciprocalPrimeLogBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d52230eb6cbab2d77a03692b6b6cd81c3cf18002d02a79921857dac36a2448d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/ReciprocalPrimeLogBound.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:342d15a8-a5a9-f92f-469c-b723207da27c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inventory_harmonic_log_bound {T : ℝ} (hT : 0 ≤ T) :
    PPNCP04.PrimeHarmonic.inventoryHarmonicMass T ≤
      primeHarmonicConstant * Real.log (T + 2) := by
  have hlog2 : 0 < Real.log (2 : ℝ) := Real.log_pos (by norm_num)
  have hlogmono : Real.log 2 ≤ Real.log (T + 2) :=
    Real.log_le_log (by norm_num) (by linarith)
  have hlogpos : 0 < Real.log (T + 2) := Real.log_pos (by linarith)
  have hoffset := offsetConstant_nonnegative
  have hC := countConstant_positive
  have hsmallCoefficient : 3 / Real.log 2 ≤ primeHarmonicConstant := by
    unfold primeHarmonicConstant
    have he : 0 ≤ countConstant * (1 + offsetConstant / Real.log 2) := by positivity
    linarith
  have hlargeCoefficient : countConstant * (1 + offsetConstant / Real.log 2) ≤
      primeHarmonicConstant := by
    unfold primeHarmonicConstant
    have he : 0 ≤ (3 : ℝ) / Real.log 2 := by positivity
    linarith
  by_cases hsmall : T ≤ 2
  · calc
      PPNCP04.PrimeHarmonic.inventoryHarmonicMass T ≤ 1 + T :=
        PPNCP04.PrimeHarmonic.inventory_harmonic_linear_bound hT
      _ ≤ 3 := by linarith
      _ = (3 / Real.log 2) * Real.log 2 := by field_simp
      _ ≤ (3 / Real.log 2) * Real.log (T + 2) :=
        mul_le_mul_of_nonneg_left hlogmono (by positivity)
      _ ≤ primeHarmonicConstant * Real.log (T + 2) :=
        mul_le_mul_of_nonneg_right hsmallCoefficient hlogpos.le
  · have hTlarge : 2 ≤ T := by linarith
    have hx : 2 ≤ Real.exp T := by nlinarith [Real.add_one_le_exp T]
    have hbound : PPNCP04.PrimeHarmonic.inventoryHarmonicMass T ≤
        countConstant / Real.log 2 +
          countConstant * (Real.log T - Real.log (Real.log 2)) := by
      simpa only [PPNCP04.PrimeHarmonic.inventoryHarmonicMass, primeInventory_eq,
        Real.log_exp] using prime_harmonic_bound_at_x hx
    have hlogT : Real.log T ≤ Real.log (T + 2) :=
      Real.log_le_log (by linarith) (by linarith)
    have hoffsetBound : offsetConstant ≤
        (offsetConstant / Real.log 2) * Real.log (T + 2) := by
      calc
        offsetConstant = (offsetConstant / Real.log 2) * Real.log 2 := by field_simp
        _ ≤ (offsetConstant / Real.log 2) * Real.log (T + 2) :=
          mul_le_mul_of_nonneg_left hlogmono (div_nonneg hoffset hlog2.le)
    calc
      PPNCP04.PrimeHarmonic.inventoryHarmonicMass T ≤
          countConstant / Real.log 2 +
            countConstant * (Real.log T - Real.log (Real.log 2)) := hbound
      _ ≤ countConstant / Real.log 2 +
          countConstant * (Real.log (T + 2) + |Real.log (Real.log 2)|) := by
        have hm : countConstant * (Real.log T - Real.log (Real.log 2)) ≤
            countConstant * (Real.log (T + 2) + |Real.log (Real.log 2)|) := by
          apply mul_le_mul_of_nonneg_left _ hC.le
          linarith [neg_le_abs (Real.log (Real.log 2))]
        linarith
      _ = countConstant * (Real.log (T + 2) + offsetConstant) := by
        unfold offsetConstant
        ring
      _ ≤ countConstant * (Real.log (T + 2) +
          (offsetConstant / Real.log 2) * Real.log (T + 2)) := by
        apply mul_le_mul_of_nonneg_left _ hC.le
        linarith
      _ = (countConstant * (1 + offsetConstant / Real.log 2)) *
          Real.log (T + 2) := by ring
      _ ≤ primeHarmonicConstant * Real.log (T + 2) :=
        mul_le_mul_of_nonneg_right hlargeCoefficient hlogpos.le

/-- Literal all-T prime-harmonic estimate used by the closure theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/ReciprocalPrimeLogBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/PrimeCounting/ReciprocalPrimeLogBound.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a414f4c9b65172ee88f81e297e55c2c4077c4c32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
