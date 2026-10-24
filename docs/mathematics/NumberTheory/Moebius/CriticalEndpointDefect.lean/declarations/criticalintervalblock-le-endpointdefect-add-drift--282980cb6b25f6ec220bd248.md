# criticalIntervalBlock_le_endpointDefect_add_drift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d886c04-3d6e-5631-48b8-b3805c322f84",
  "kind": "theorem",
  "lexical_name": "criticalIntervalBlock_le_endpointDefect_add_drift",
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
  "slug": "criticalintervalblock-le-endpointdefect-add-drift--282980cb6b25f6ec220bd248",
  "source": {
    "blob": "46e1eead76aacda6818a266dc3399c9fae01743b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 326,
    "path": "GRWTSK/NumberTheory/Moebius/CriticalEndpointDefect.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:282980cb6b25f6ec220bd248ecf10d9b28222aaa7b4d3d8a82a596c295d8ca91",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CriticalEndpointDefect.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d886c04-3d6e-5631-48b8-b3805c322f84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalIntervalBlock_le_endpointDefect_add_drift {n : ℕ}
    (hn : 1 ≤ n) :
    criticalIntervalBlock n ≤
      8 * criticalEndpointDefect n ^ 2 * exponentialLogDrop 1 n +
        8 * pickupMertensPrefix n ^ 2 * criticalEndpointDrift n := by
  have hnpos : (0 : ℝ) < n := by exact_mod_cast hn
  have hlog : Real.log (n : ℝ) ≤ Real.log ((n + 1 : ℕ) : ℝ) :=
    Real.log_le_log hnpos (by exact_mod_cast Nat.le_succ n)
  unfold criticalIntervalBlock
  have hf : Continuous (fun u : ℝ =>
      Real.exp (-u) *
        (2 * (pickupWeightedPrefix n -
          Real.exp (-u / 2) * pickupMertensPrefix n)) ^ 2) := by
    fun_prop
  have hg : Continuous (fun u : ℝ =>
      Real.exp (-u) *
        (8 * criticalEndpointDefect n ^ 2 +
          8 * pickupMertensPrefix n ^ 2 *
            ((Real.sqrt n)⁻¹ - Real.exp (-u / 2)) ^ 2)) := by
    fun_prop
  calc
    (∫ u in Real.log (n : ℝ)..Real.log ((n + 1 : ℕ) : ℝ),
        Real.exp (-u) *
          (2 * (pickupWeightedPrefix n -
            Real.exp (-u / 2) * pickupMertensPrefix n)) ^ 2) ≤
        ∫ u in Real.log (n : ℝ)..Real.log ((n + 1 : ℕ) : ℝ),
          Real.exp (-u) *
            (8 * criticalEndpointDefect n ^ 2 +
              8 * pickupMertensPrefix n ^ 2 *
                ((Real.sqrt n)⁻¹ - Real.exp (-u / 2)) ^ 2) := by
      apply intervalIntegral.integral_mono_on hlog
        (hf.intervalIntegrable _ _) (hg.intervalIntegrable _ _)
      intro u _hu
      rw [prefixFlux_eq_endpointDefect_add_drift]
      have hs := sq_nonneg (criticalEndpointDefect n -
        ((Real.sqrt n)⁻¹ - Real.exp (-u / 2)) * pickupMertensPrefix n)
      have hexp : 0 ≤ Real.exp (-u) := (Real.exp_pos _).le
      nlinarith
    _ = 8 * criticalEndpointDefect n ^ 2 * exponentialLogDrop 1 n +
          8 * pickupMertensPrefix n ^ 2 * criticalEndpointDrift n := by
      rw [show (fun u : ℝ => Real.exp (-u) *
          (8 * criticalEndpointDefect n ^ 2 +
            8 * pickupMertensPrefix n ^ 2 *
              ((Real.sqrt n)⁻¹ - Real.exp (-u / 2)) ^ 2)) =
          (fun u : ℝ =>
            8 * criticalEndpointDefect n ^ 2 * Real.exp (-u) +
              8 * pickupMertensPrefix n ^ 2 *
                (Real.exp (-u) *
                  ((Real.sqrt n)⁻¹ - Real.exp (-u / 2)) ^ 2)) by
        funext u
        ring]
      rw [intervalIntegral.integral_add,
        intervalIntegral.integral_const_mul,
        intervalIntegral.integral_const_mul]
      · unfold exponentialLogDrop criticalEndpointDrift
        rw [show (fun x : ℝ => Real.exp (-x)) =
            (fun x : ℝ => Real.exp (-(1 : ℝ) * x)) by
          funext x
          congr 1
          ring,
          integral_exp_neg_mul (by norm_num : (1 : ℝ) ≠ 0)]
        ring
      all_goals
        apply Continuous.intervalIntegrable
        fun_prop

/-- Conversely, the endpoint-defect energy is controlled by the exact cell
block plus the same unconditionally summable drift. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CriticalEndpointDefect.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CriticalEndpointDefect.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46e1eead76aacda6818a266dc3399c9fae01743b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
