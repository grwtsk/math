# primePrefix_eleven_negative_correlation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:661e8aa9-404f-f9a1-0263-3419233c8ad0",
  "kind": "theorem",
  "lexical_name": "primePrefix_eleven_negative_correlation",
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
  "slug": "primeprefix-eleven-negative-correlation--59bfbb6941776292f33fba3d",
  "source": {
    "blob": "f3e314f6323bf623e11acf62d28597feede00b6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 122,
    "path": "GRWTSK/NumberTheory/Moebius/NegativePrimeCorrelation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59bfbb6941776292f33fba3d5aad892d67a0c22222143622473b3772dd33ad3f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/NegativePrimeCorrelation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:661e8aa9-404f-f9a1-0263-3419233c8ad0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primePrefix_eleven_negative_correlation :
    noteCorrelation (primeNoteCascade (primePrefix 11)) (log 11) (log 12) < 0 := by
  rw [primePrefix_eleven]
  have h0 : 0 ≤ log (11:ℝ) := log_nonneg (by norm_num)
  have h12 : log (11:ℝ) < log 12 := log_lt_log (by norm_num) (by norm_num)
  have hf := primeNoteCascade_continuous source11_primes
  have hs := causalShift_continuous hf (primeNoteCascade_zero source11_primes) (log 11)
  have hc := hf.mul hs
  have hzero : (∫ u in (0:ℝ)..log 11,
      primeNoteCascade {2,3,5,7} u * causalShift (log 11) (primeNoteCascade {2,3,5,7}) u) = 0 := by
    calc
      _ = ∫ u in (0:ℝ)..log 11, (0:ℝ) := by
        apply intervalIntegral.integral_congr
        intro u hu
        rw [uIcc_of_le h0] at hu
        change primeNoteCascade {2,3,5,7} u * causalShift (log 11) (primeNoteCascade {2,3,5,7}) u = 0
        unfold causalShift
        split_ifs with h
        · have hz : primeNoteCascade {2,3,5,7} (u-log 11) = 0 :=
            cascade_eq_zero_of_nonpos source11_primes (by linarith [hu.2])
          rw [hz, mul_zero]
        · simp
      _ = 0 := intervalIntegral.integral_zero
  have hneg : (∫ u in log 11..log 12,
      primeNoteCascade {2,3,5,7} u * causalShift (log 11) (primeNoteCascade {2,3,5,7}) u) < 0 := by
    have hpoint : ∀ u ∈ Ioc (log (11:ℝ)) (log 12),
        primeNoteCascade {2,3,5,7} u * causalShift (log 11) (primeNoteCascade {2,3,5,7}) u < 0 := by
      intro u hu
      exact mul_neg_of_neg_of_pos (source11_negative_on_cell hu.1.le hu.2)
        (source11_shift_positive hu.1 hu.2)
    have hi := intervalIntegral.integral_lt_integral_of_continuousOn_of_le_of_exists_lt h12
      hc.continuousOn continuousOn_const (fun u hu ↦ (hpoint u hu).le)
      ⟨log 12, ⟨h12.le, le_rfl⟩, hpoint (log 12) ⟨h12, le_rfl⟩⟩
    simpa using hi
  unfold noteCorrelation
  rw [max_eq_right (h0.trans h12.le), ← intervalIntegral.integral_add_adjacent_intervals
    (show IntervalIntegrable (fun u ↦ primeNoteCascade {2,3,5,7} u *
      causalShift (log 11) (primeNoteCascade {2,3,5,7}) u) volume 0 (log 11) from hc.intervalIntegrable _ _)
    (show IntervalIntegrable (fun u ↦ primeNoteCascade {2,3,5,7} u *
      causalShift (log 11) (primeNoteCascade {2,3,5,7}) u) volume (log 11) (log 12) from hc.intervalIntegrable _ _),
    hzero, zero_add]
  exact hneg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/NegativePrimeCorrelation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/NegativePrimeCorrelation.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3e314f6323bf623e11acf62d28597feede00b6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
