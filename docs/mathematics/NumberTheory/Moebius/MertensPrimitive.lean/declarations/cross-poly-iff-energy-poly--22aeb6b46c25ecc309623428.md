# cross_poly_iff_energy_poly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc13467b-b495-853b-1c5b-4b02bf5df7b1",
  "kind": "theorem",
  "lexical_name": "cross_poly_iff_energy_poly",
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
  "slug": "cross-poly-iff-energy-poly--22aeb6b46c25ecc309623428",
  "source": {
    "blob": "45e06c371d67bcf8c939d20a95fcbc63570546fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 104,
    "path": "GRWTSK/NumberTheory/Moebius/MertensPrimitive.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22aeb6b46c25ecc309623428d077baf3597cbb6760d748ca38c9ae719aec06f7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MertensPrimitive.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc13467b-b495-853b-1c5b-4b02bf5df7b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cross_poly_iff_energy_poly
    (hidentity : ∀ T : ℝ, 0 ≤ T →
      pickupEnergy T = pickupDiagonal T + pickupCross T)
    (hdiagonal : ∀ T : ℝ, 0 ≤ T →
      0 ≤ pickupDiagonal T ∧ pickupDiagonal T ≤ 2 * T ^ 2) :
    PickupCrossPoly ↔ PickupEnergyPoly := by
  constructor
  · rintro ⟨C, r, hC, hr, hbound⟩
    refine ⟨C + 2, max r 2, by positivity, le_trans hr (le_max_left _ _), ?_⟩
    intro T hT
    have hbase : 1 ≤ 1 + T := by linarith
    have hpowr := Real.rpow_le_rpow_of_exponent_le hbase (le_max_left r (2 : ℝ))
    have hpow2 := Real.rpow_le_rpow_of_exponent_le hbase (le_max_right r (2 : ℝ))
    have hTsq : T ^ 2 ≤ (1 + T) ^ (2 : ℝ) := by
      rw [Real.rpow_two]
      nlinarith
    rw [hidentity T hT]
    calc
      pickupDiagonal T + pickupCross T ≤ 2 * T ^ 2 + C * (1 + T) ^ r :=
        add_le_add (hdiagonal T hT).2 (hbound T hT)
      _ ≤ 2 * (1 + T) ^ max r 2 + C * (1 + T) ^ max r 2 :=
        add_le_add (mul_le_mul_of_nonneg_left (hTsq.trans hpow2) (by norm_num))
          (mul_le_mul_of_nonneg_left hpowr hC)
      _ = (C + 2) * (1 + T) ^ max r 2 := by ring
  · rintro ⟨C, q, hC, hq, hbound⟩
    refine ⟨C, q, hC, hq, ?_⟩
    intro T hT
    have he := hidentity T hT
    have hd := (hdiagonal T hT).1
    linarith [hbound T hT]

end GRWTSK.RiemannHypothesis.CCC
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MertensPrimitive.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MertensPrimitive.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45e06c371d67bcf8c939d20a95fcbc63570546fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
