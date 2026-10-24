# pickupCrossNatSubexp_iff_crossSubexp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0c80775-e96b-9421-2e93-eb44b50ac4f9",
  "kind": "theorem",
  "lexical_name": "pickupCrossNatSubexp_iff_crossSubexp",
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
  "slug": "pickupcrossnatsubexp-iff-crosssubexp--811787a55652a075971efee2",
  "source": {
    "blob": "9c8a93db12ec865d297703ba36ef37743e1ef4f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 103,
    "path": "GRWTSK/NumberTheory/Moebius/IntegerSampleGrowth.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:811787a55652a075971efee2fe3309a31c026a2c58f85d04659a7fc8f5b6756e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/IntegerSampleGrowth.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0c80775-e96b-9421-2e93-eb44b50ac4f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickupCrossNatSubexp_iff_crossSubexp :
    PickupCrossNatSubexp ↔ PickupCrossSubexp := by
  constructor
  · intro hX
    apply pickupCrossSubexp_iff_pickupEnergySubexp.mpr
    apply pickupEnergySubexp_iff_nat.mpr
    intro ε hε
    obtain ⟨C, hC, hb⟩ := hX ε hε
    let D : ℝ := 2 * (((2 : ℕ).factorial : ℝ) / ε ^ 2)
    refine ⟨D + C, by dsimp [D]; positivity, fun n ↦ ?_⟩
    have hp := pow_le_factorial_mul_exp hε (Nat.cast_nonneg n) 2
    have hd := (pickupDiagonal_quadratic_bound (Nat.cast_nonneg n)).2
    rw [pickupEnergy_eq_diagonal_add_cross (Nat.cast_nonneg n)]
    calc
      _ ≤ 2 * (n : ℝ) ^ 2 + C * Real.exp (ε * n) := add_le_add hd (hb n)
      _ ≤ D * Real.exp (ε * n) + C * Real.exp (ε * n) :=
        add_le_add (by simpa only [D, mul_assoc] using
          mul_le_mul_of_nonneg_left hp (by norm_num : (0 : ℝ) ≤ 2)) le_rfl
      _ = _ := by ring
  · intro hX ε hε
    obtain ⟨C, hC, hb⟩ := hX ε hε
    exact ⟨C, hC, fun n ↦ hb n (Nat.cast_nonneg n)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/IntegerSampleGrowth.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/IntegerSampleGrowth.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c8a93db12ec865d297703ba36ef37743e1ef4f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
