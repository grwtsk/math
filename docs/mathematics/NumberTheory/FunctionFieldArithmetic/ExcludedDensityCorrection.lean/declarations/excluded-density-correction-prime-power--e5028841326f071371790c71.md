# excluded_density_correction_prime_power

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:808b9d0d-fabd-193c-ee72-852e778e3602",
  "kind": "theorem",
  "lexical_name": "excluded_density_correction_prime_power",
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
  "slug": "excluded-density-correction-prime-power--e5028841326f071371790c71",
  "source": {
    "blob": "ec32300bf299f877ea008ae059bbfe079b649a57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 69,
    "path": "GRWTSK/NumberTheory/FunctionFieldArithmetic/ExcludedDensityCorrection.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5028841326f071371790c710060f5cd5bde78be19b0b36a1a141c68cf84cf7c",
  "verification": {
    "reference": "docs/verification/NumberTheory/FunctionFieldArithmetic/ExcludedDensityCorrection.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:808b9d0d-fabd-193c-ee72-852e778e3602`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem excluded_density_correction_prime_power (d : ℕ) {p k : ℕ}
    (hp : p.Prime) (hk : k ≠ 0) :
    excludedDensityCorrection d (p^k) = if p.Coprime d then 1/((p:ℝ)+1) else 1 := by
  induction k with
  | zero => exact False.elim (hk rfl)
  | succ k ih =>
    by_cases hk0 : k=0
    · subst k
      rw [excluded_density_correction_divisors, pow_one, hp.divisors]
      simp only [Finset.sum_pair hp.ne_one.symm, if_pos (Nat.coprime_one_left d),
        density_mobius_coefficient_one]
      by_cases hpd : p.Coprime d
      · rw [if_pos hpd, if_pos hpd, density_mobius_coefficient_prime hp]
        have he : (p:ℝ)+1 ≠ 0 := by positivity
        field_simp
        ring
      · simp [hpd]
    · have hs : (∑ x ∈ Finset.range (k+1),
          if (p^x).Coprime d then densityMobiusCoefficient (p^x) else 0) =
          excludedDensityCorrection d (p^k) := by
        rw [excluded_density_correction_divisors, Nat.sum_divisors_prime_pow hp]
      rw [excluded_density_correction_divisors, Nat.sum_divisors_prime_pow hp,
        Finset.sum_range_succ, hs, ih hk0]
      have hz : (if (p^(k+1)).Coprime d then densityMobiusCoefficient (p^(k+1)) else 0) = 0 := by
        simp only [density_coefficient_prime_power hp (by omega : k+1 ≠ 0), if_neg (by omega : k+1 ≠ 1), ite_self]
      rw [hz, add_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/FunctionFieldArithmetic/ExcludedDensityCorrection.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/FunctionFieldArithmetic/ExcludedDensityCorrection.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec32300bf299f877ea008ae059bbfe079b649a57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
