# two_three_partners_eq_six

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77910fd1-34a2-6e39-39fc-35758e3d67c6",
  "kind": "theorem",
  "lexical_name": "two_three_partners_eq_six",
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
  "slug": "two-three-partners-eq-six--1994908f586c992e977231d7",
  "source": {
    "blob": "8a7c3ae55ff1bb89e9100564337f170edd412908",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 31,
    "path": "GRWTSK/NumberTheory/BranchUnmatchedKnot/Variant5b087b7349f491dcd51fd26200e55570928a90df2654ad5653b64130f94b6aa0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1994908f586c992e977231d743bc47130fd7a1a66436edde605584baf1157efe",
  "verification": {
    "reference": "docs/verification/NumberTheory/BranchUnmatchedKnot/Variant5b087b7349f491dcd51fd26200e55570928a90df2654ad5653b64130f94b6aa0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77910fd1-34a2-6e39-39fc-35758e3d67c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem two_three_partners_eq_six {m k : ℕ} (hm : IsPrimePow m) (hk : IsPrimePow k)
    (h : 2 * m = 3 * k) : 2 * m = 6 := by
  have h3m : 3 ∣ m := by
    have h3 : 3 ∣ 2 * m := by rw [h]; exact dvd_mul_right 3 k
    rcases Nat.prime_three.dvd_mul.mp h3 with h2 | h3
    · norm_num at h2
    · exact h3
  have h2k : 2 ∣ k := by
    have h2 : 2 ∣ 3 * k := by rw [← h]; exact dvd_mul_right 2 m
    rcases Nat.prime_two.dvd_mul.mp h2 with h3 | h2
    · norm_num at h3
    · exact h2
  obtain ⟨p, a, hp, ha, hm_eq⟩ := (isPrimePow_nat_iff m).mp hm
  obtain ⟨q, b, hq, hb, hk_eq⟩ := (isPrimePow_nat_iff k).mp hk
  have hp3 : p = 3 := by
    have h3p : 3 ∣ p := Nat.prime_three.dvd_of_dvd_pow (hm_eq ▸ h3m)
    exact (Nat.prime_dvd_prime_iff_eq Nat.prime_three hp).mp h3p |>.symm
  have hq2 : q = 2 := by
    have h2q : 2 ∣ q := Nat.prime_two.dvd_of_dvd_pow (hk_eq ▸ h2k)
    exact (Nat.prime_dvd_prime_iff_eq Nat.prime_two hq).mp h2q |>.symm
  subst p q
  have hf := congrArg (fun n : ℕ ↦ n.factorization 3) h
  rw [Nat.factorization_mul (by norm_num) hm.ne_zero,
    Nat.factorization_mul (by norm_num) hk.ne_zero, ← hm_eq, ← hk_eq,
    Nat.Prime.factorization_pow Nat.prime_three,
    Nat.Prime.factorization_pow Nat.prime_two] at hf
  norm_num [Nat.prime_two.factorization, Nat.prime_three.factorization] at hf
  rw [← hm_eq, hf]
  norm_num

/-- The strict interior inventory is the literal source's positive von Mangoldt support. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/BranchUnmatchedKnot/Variant5b087b7349f491dcd51fd26200e55570928a90df2654ad5653b64130f94b6aa0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/BranchUnmatchedKnot/Variant5b087b7349f491dcd51fd26200e55570928a90df2654ad5653b64130f94b6aa0.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a7c3ae55ff1bb89e9100564337f170edd412908` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
