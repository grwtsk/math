# coprimeRestrictedMobiusDivisorIndicator_prime_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f109982-2a0a-faa1-9be3-d17a3bbc853b",
  "kind": "theorem",
  "lexical_name": "coprimeRestrictedMobiusDivisorIndicator_prime_pow",
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
  "slug": "coprimerestrictedmobiusdivisorindicator-prime-pow--ca9a6fde836d25d7c222869e",
  "source": {
    "blob": "63da93bf88928ffc712002a77c1db9ba8ef7bd7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 101,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDRestrictedMobiusLog.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca9a6fde836d25d7c222869e5c2b625694fcd61a3115026642e313383f70f8cc",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredLowGCDRestrictedMobiusLog.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f109982-2a0a-faa1-9be3-d17a3bbc853b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coprimeRestrictedMobiusDivisorIndicator_prime_pow
    {r p k : ℕ}
    (hp : p.Prime)
    (hk : 0 < k) :
    coprimeRestrictedMobiusDivisorIndicator r (p ^ k) =
      if p ∣ r then 1 else 0 := by
  by_cases hpr : p ∣ r
  · rw [if_pos hpr]
    unfold coprimeRestrictedMobiusDivisorIndicator
    rw [ArithmeticFunction.coe_mul_zeta_apply]
    have hfilter :
        (p ^ k).divisors.filter
            (fun d => Nat.Coprime d r) = {1} := by
      ext d
      simp only [Finset.mem_filter, Finset.mem_singleton,
        Nat.mem_divisors]
      constructor
      · rintro ⟨⟨hdpow, hpow0⟩, hdr⟩
        obtain ⟨j, hj, rfl⟩ := (Nat.dvd_prime_pow hp).mp hdpow
        by_cases hj0 : j = 0
        · simp [hj0]
        · have hpdiv : p ∣ p ^ j :=
            dvd_pow_self p hj0
          have hpcop : Nat.Coprime p r :=
            hdr.coprime_dvd_left hpdiv
          exact (hp.coprime_iff_not_dvd.mp hpcop hpr).elim
      · rintro rfl
        exact ⟨⟨one_dvd _, pow_ne_zero _ hp.ne_zero⟩,
          Nat.coprime_one_left _⟩
    calc
      (∑ d ∈ (p ^ k).divisors,
          coprimeRestrictedMobius r d) =
        ∑ d ∈ (p ^ k).divisors.filter
            (fun d => Nat.Coprime d r),
          mobiusReal d := by
            rw [← Finset.sum_filter]
            apply Finset.sum_congr rfl
            intro d hd
            by_cases hdr : Nat.Coprime d r <;>
              simp [coprimeRestrictedMobius, hdr]
      _ = 1 := by simp [hfilter, mobiusReal]
  · rw [if_neg hpr]
    have hpcop : Nat.Coprime p r :=
      (hp.coprime_iff_not_dvd).2 hpr
    have hall :
        ∀ d ∈ (p ^ k).divisors,
          Nat.Coprime d r := by
      intro d hd
      obtain ⟨j, hj, rfl⟩ :=
        (Nat.dvd_prime_pow hp).mp
          (Nat.dvd_of_mem_divisors hd)
      exact hpcop.pow_left j
    unfold coprimeRestrictedMobiusDivisorIndicator
    rw [ArithmeticFunction.coe_mul_zeta_apply]
    calc
      (∑ d ∈ (p ^ k).divisors,
          coprimeRestrictedMobius r d) =
        ∑ d ∈ (p ^ k).divisors, mobiusReal d := by
          apply Finset.sum_congr rfl
          intro d hd
          simp [coprimeRestrictedMobius, hall d hd]
      _ =
        (((ArithmeticFunction.moebius : ArithmeticFunction ℝ) *
          (ArithmeticFunction.zeta : ArithmeticFunction ℝ)) (p ^ k)) := by
            rw [ArithmeticFunction.coe_mul_zeta_apply]
      _ = 0 := by
        rw [ArithmeticFunction.coe_moebius_mul_coe_zeta]
        simp [hp.ne_one, hk.ne', hp, hk]

/-- The restricted divisor indicator takes only the values `0` and `1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDRestrictedMobiusLog.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDRestrictedMobiusLog.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63da93bf88928ffc712002a77c1db9ba8ef7bd7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
