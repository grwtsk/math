# work_from_power_energy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eeca11b6-a41a-689d-30e1-c3792357285a",
  "kind": "theorem",
  "lexical_name": "work_from_power_energy",
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
  "slug": "work-from-power-energy--af644c4351ed68ad36756b16",
  "source": {
    "blob": "4dfbf39e3adeee3f07c836458ebdb73ac8e2ee56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 52,
    "path": "GRWTSK/Analysis/DyadicEnergyBudget/Variant21c179f0c18a57749daf81ec4ff4850e3e9e3c83cd91d819910c06392a7b81f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af644c4351ed68ad36756b16aca664cd984c3588d7ebabd596abf3a4aa5209ab",
  "verification": {
    "reference": "docs/verification/Analysis/DyadicEnergyBudget/Variant21c179f0c18a57749daf81ec4ff4850e3e9e3c83cd91d819910c06392a7b81f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eeca11b6-a41a-689d-30e1-c3792357285a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem work_from_power_energy {X L W E Cw Ce eta : ℝ}
    (hX : 0 < X) (_hL : 0 ≤ L) (hW : 0 ≤ W) (hCw : 0 ≤ Cw) (hCe : 0 ≤ Ce)
    (hroot : L ^ 2 ≤ W * E) (hwidth : W ≤ Cw * X ^ (-(1 / 2 : ℝ)))
    (henergy : E ≤ Ce * X ^ (1 / 2 - 2 * eta)) :
    L ≤ Real.sqrt (Cw * Ce) * X ^ (-eta) := by
  have hbudget := mul_le_mul_of_nonneg_left henergy hW
  have hbudget2 := mul_le_mul_of_nonneg_right hwidth
    (mul_nonneg hCe (Real.rpow_nonneg hX.le (1 / 2 - 2 * eta)))
  have hexp : -(1 / 2 : ℝ) + (1 / 2 - 2 * eta) = -2 * eta := by ring
  have hproduct : (Cw * X ^ (-(1 / 2 : ℝ))) *
      (Ce * X ^ (1 / 2 - 2 * eta)) = Cw * Ce * X ^ (-2 * eta) := by
    calc
      _ = (Cw * Ce) * (X ^ (-(1 / 2 : ℝ)) * X ^ (1 / 2 - 2 * eta)) := by ring
      _ = _ := by rw [← Real.rpow_add hX, hexp]
  have hsq : (Real.sqrt (Cw * Ce) * X ^ (-eta)) ^ 2 = Cw * Ce * X ^ (-2 * eta) := by
    rw [mul_pow, Real.sq_sqrt (mul_nonneg hCw hCe), ← Real.rpow_mul_natCast hX.le]
    simp only [Nat.cast_ofNat]
    rw [show -eta * (2 : ℝ) = -2 * eta by ring]
  have hR : 0 ≤ Real.sqrt (Cw * Ce) * X ^ (-eta) := by positivity
  rw [hproduct] at hbudget2
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/DyadicEnergyBudget/Variant21c179f0c18a57749daf81ec4ff4850e3e9e3c83cd91d819910c06392a7b81f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/DyadicEnergyBudget/Variant21c179f0c18a57749daf81ec4ff4850e3e9e3c83cd91d819910c06392a7b81f2.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4dfbf39e3adeee3f07c836458ebdb73ac8e2ee56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
