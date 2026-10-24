# pickupEnergy_le_count_mul_diagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6aabf085-d916-7991-33b5-f97c2f320108",
  "kind": "theorem",
  "lexical_name": "pickupEnergy_le_count_mul_diagonal",
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
  "slug": "pickupenergy-le-count-mul-diagonal--1c1b8ea297f26c872fba209c",
  "source": {
    "blob": "d37ae70ed8afc41273ce756de212688c0be90576",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 21,
    "path": "GRWTSK/NumberTheory/Moebius/UnsignedEnergyBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c1b8ea297f26c872fba209c3bebef19817ac57ce0d02f9cd18558a1e3a62f75",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/UnsignedEnergyBound.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6aabf085-d916-7991-33b5-f97c2f320108`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickupEnergy_le_count_mul_diagonal {T : ℝ} (hT : 0 ≤ T) :
    pickupEnergy T ≤ (⌊Real.exp T⌋₊ : ℝ) * pickupDiagonal T := by
  let S := Finset.Icc 1 ⌊Real.exp T⌋₊
  have hc : Continuous (fun u : ℝ ↦ (⌊Real.exp T⌋₊ : ℝ) *
      ∑ n ∈ S, moebiusReal n ^ 2 * pickupResponse n u ^ 2) := by
    apply continuous_const.mul
    apply continuous_finsetSum
    intro n hn
    exact continuous_const.mul ((pickupResponse_continuous (Finset.mem_Icc.mp hn).1).pow 2)
  calc
    pickupEnergy T ≤ ∫ u in (0 : ℝ)..T, (⌊Real.exp T⌋₊ : ℝ) *
        ∑ n ∈ S, moebiusReal n ^ 2 * pickupResponse n u ^ 2 := by
      apply intervalIntegral.integral_mono_on hT (wholePickup_sq_intervalIntegrable 0 T)
        (hc.intervalIntegrable 0 T)
      intro u hu
      rw [wholePickup_fixed_inventory hu.1 hu.2]
      have h := sq_sum_le_card_mul_sum_sq (s := S)
        (f := fun n ↦ moebiusReal n * pickupResponse n u)
      simpa only [S, Nat.card_Icc, Nat.add_sub_cancel, mul_pow] using h
    _ = _ := by
      rw [intervalIntegral.integral_const_mul, pickupDiagonal_eq_integral_density]

/-- The unconditionally available count allowance has exponential time growth. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/UnsignedEnergyBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/UnsignedEnergyBound.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d37ae70ed8afc41273ce756de212688c0be90576` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
