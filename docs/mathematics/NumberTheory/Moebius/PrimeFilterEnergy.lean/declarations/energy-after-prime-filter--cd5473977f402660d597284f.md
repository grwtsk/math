# energy_after_prime_filter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd78a349-7258-5b4f-01a4-69bfef092a3a",
  "kind": "theorem",
  "lexical_name": "energy_after_prime_filter",
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
  "slug": "energy-after-prime-filter--cd5473977f402660d597284f",
  "source": {
    "blob": "bc9f1b27c8350304ca5ae7a1476f1a366df326e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 125,
    "path": "GRWTSK/NumberTheory/Moebius/PrimeFilterEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd5473977f402660d597284fe323de0b59378aae5d4b87caa9a288976c44b99c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/PrimeFilterEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd78a349-7258-5b4f-01a4-69bfef092a3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem energy_after_prime_filter {f : ℝ → ℝ} (hf : Continuous f) (hf0 : f 0 = 0)
    {p : ℕ} (hp : p.Prime) {T : ℝ} (hT : 0 ≤ T) :
    noteEnergy (primeNoteFilter p f) T = noteEnergy f T +
      (p : ℝ)⁻¹ * noteEnergy f (T - Real.log p) -
      2 * (Real.sqrt p)⁻¹ * noteCorrelation f (Real.log p) T := by
  have hs := causalShift_continuous hf hf0 (Real.log p)
  have hsq : ((Real.sqrt p)⁻¹) ^ 2 = (p : ℝ)⁻¹ := by
    rw [inv_pow, Real.sq_sqrt (Nat.cast_nonneg p)]
  have he : noteEnergy (primeNoteFilter p f) T = noteEnergy f T +
      ((Real.sqrt p)⁻¹)^2 * noteEnergy (causalShift (Real.log p) f) T -
      2 * (Real.sqrt p)⁻¹ * noteCorrelation f (Real.log p) T := by
    unfold noteEnergy primeNoteFilter noteCorrelation
    calc
      _ = ∫ u in (0 : ℝ)..max 0 T, f u ^ 2 +
          ((Real.sqrt p)⁻¹)^2 * causalShift (Real.log p) f u ^ 2 -
          (2 * (Real.sqrt p)⁻¹) * (f u * causalShift (Real.log p) f u) := by
        apply intervalIntegral.integral_congr
        intro u _
        ring
      _ = _ := by
        have hA : IntervalIntegrable (fun u ↦ f u ^ 2) volume 0 (max 0 T) :=
          (hf.pow 2).intervalIntegrable _ _
        have hB : IntervalIntegrable (fun u ↦ ((Real.sqrt p)⁻¹)^2 *
            causalShift (Real.log p) f u ^ 2) volume 0 (max 0 T) :=
          ((hs.pow 2).const_mul _).intervalIntegrable _ _
        have hC : IntervalIntegrable (fun u ↦ (2 * (Real.sqrt p)⁻¹) *
            (f u * causalShift (Real.log p) f u)) volume 0 (max 0 T) :=
          ((hf.mul hs).const_mul _).intervalIntegrable _ _
        rw [intervalIntegral.integral_sub (hA.add hB) hC,
          intervalIntegral.integral_add hA hB,
          intervalIntegral.integral_const_mul, intervalIntegral.integral_const_mul]
  rw [he, hsq, causalShift_energy hf hf0
    (Real.log_nonneg (by exact_mod_cast hp.one_le)) hT]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/PrimeFilterEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/PrimeFilterEnergy.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc9f1b27c8350304ca5ae7a1476f1a366df326e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
