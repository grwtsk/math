# pickupEnergy_le_of_nat_exponential

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:35c399d0-16e4-eede-5c91-ac5f213ea8d4",
  "kind": "theorem",
  "lexical_name": "pickupEnergy_le_of_nat_exponential",
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
  "slug": "pickupenergy-le-of-nat-exponential--df58fc0f4293cf07dad4771a",
  "source": {
    "blob": "9c8a93db12ec865d297703ba36ef37743e1ef4f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 30,
    "path": "GRWTSK/NumberTheory/Moebius/IntegerSampleGrowth.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df58fc0f4293cf07dad4771aeda474359dd2fc4a98967ffb9ff91ed73c32be99",
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

Occurrence: `result:35c399d0-16e4-eede-5c91-ac5f213ea8d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickupEnergy_le_of_nat_exponential {C ε T : ℝ}
    (hC : 0 ≤ C) (hε : 0 ≤ ε) (hT : 0 ≤ T)
    (hb : ∀ n : ℕ, pickupEnergy n ≤ C * Real.exp (ε * n)) :
    pickupEnergy T ≤ (C * Real.exp ε) * Real.exp (ε * T) := by
  have hm := pickupEnergy_mono hT (Nat.le_ceil T)
  have he : Real.exp (ε * (⌈T⌉₊ : ℝ)) ≤ Real.exp (ε * (T + 1)) :=
    Real.exp_le_exp.mpr (mul_le_mul_of_nonneg_left (Nat.ceil_lt_add_one hT).le hε)
  calc
    pickupEnergy T ≤ pickupEnergy ⌈T⌉₊ := hm
    _ ≤ C * Real.exp (ε * (⌈T⌉₊ : ℝ)) := hb _
    _ ≤ C * Real.exp (ε * (T + 1)) := mul_le_mul_of_nonneg_left he hC
    _ = _ := by rw [mul_add, mul_one, Real.exp_add]; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/IntegerSampleGrowth.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/IntegerSampleGrowth.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c8a93db12ec865d297703ba36ef37743e1ef4f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
