# actual_dyadic_power_energy_implies_summable_debt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a87324c8-c96e-b47c-81f4-7a6c80d39145",
  "kind": "theorem",
  "lexical_name": "actual_dyadic_power_energy_implies_summable_debt",
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
  "slug": "actual-dyadic-power-energy-implies-summable-debt--6ba73347e9d903dd633c595a",
  "source": {
    "blob": "4dfbf39e3adeee3f07c836458ebdb73ac8e2ee56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 93,
    "path": "GRWTSK/Analysis/DyadicEnergyBudget/Variant21c179f0c18a57749daf81ec4ff4850e3e9e3c83cd91d819910c06392a7b81f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ba73347e9d903dd633c595a3f9c370705e076b2aa0df9427524f3823b5563d2",
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

Occurrence: `result:a87324c8-c96e-b47c-81f4-7a6c80d39145`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_dyadic_power_energy_implies_summable_debt {Ce eta : ℝ}
    (hCe : 0 ≤ Ce) (heta : 0 < eta)
    (henergy : ∀ n : ℕ, positiveCellPEnergy (2 ^ n) (2 ^ n) 2 ≤
      Ce * (((2 : ℕ) ^ n : ℕ) : ℝ) ^ (1 / 2 - 2 * eta)) :
    Summable (fun n : ℕ => positiveDebt (2 ^ n) (2 ^ n)) := by
  have hN (n : ℕ) : 1 ≤ (2 : ℕ) ^ n := Nat.one_le_pow n 2 (by omega)
  have hK (n : ℕ) : 0 < (2 : ℕ) ^ n := Nat.pow_pos (by omega)
  apply power_energy_block_debts_summable heta (fun n => positive_debt_nonneg (hN n) _)
  intro n
  have h := work_from_power_energy
    (X := (((2 : ℕ) ^ n : ℕ) : ℝ)) (L := positiveDebt (2 ^ n) (2 ^ n))
    (W := width (2 ^ n) (2 ^ n)) (E := positiveCellPEnergy (2 ^ n) (2 ^ n) 2)
    (Cw := 2) (Ce := Ce) (eta := eta)
    (by exact_mod_cast hK n) (positive_debt_nonneg (hN n) _) (width_pos (hN n) (hK n)).le
    (by norm_num) hCe (actual_positive_block_square_bound (hN n) (hK n))
    (native_width_power_bound _ _) (henergy n)
  simpa only [Nat.cast_pow, Nat.cast_ofNat] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/DyadicEnergyBudget/Variant21c179f0c18a57749daf81ec4ff4850e3e9e3c83cd91d819910c06392a7b81f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/DyadicEnergyBudget/Variant21c179f0c18a57749daf81ec4ff4850e3e9e3c83cd91d819910c06392a7b81f2.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4dfbf39e3adeee3f07c836458ebdb73ac8e2ee56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
