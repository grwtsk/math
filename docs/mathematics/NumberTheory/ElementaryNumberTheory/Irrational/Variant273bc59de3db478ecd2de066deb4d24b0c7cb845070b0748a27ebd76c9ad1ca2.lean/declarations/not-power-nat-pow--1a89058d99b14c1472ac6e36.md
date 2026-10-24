# not_power_nat_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f4031d4-92a2-6c46-d91e-257bcdc1a151",
  "kind": "theorem",
  "lexical_name": "not_power_nat_pow",
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
  "slug": "not-power-nat-pow--1a89058d99b14c1472ac6e36",
  "source": {
    "blob": "103159d7045d05f2907435acfc8c22bbd9b4c425",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 55,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Irrational/Variant273bc59de3db478ecd2de066deb4d24b0c7cb845070b0748a27ebd76c9ad1ca2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a89058d99b14c1472ac6e3615650af0ca3bc2269b53dde67036adfe394d4d2f",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Irrational/Variant273bc59de3db478ecd2de066deb4d24b0c7cb845070b0748a27ebd76c9ad1ca2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f4031d4-92a2-6c46-d91e-257bcdc1a151`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem not_power_nat_pow {n p q : ℕ}
    (h_coprime : p.Coprime q)
    (hq : 0 < q)
    (h : ∀ m, n ≠ m ^ q) (m : ℕ) :
    n ^ p ≠ m ^ q := by
  by_cases hn : n = 0
  · specialize h 0
    simp [hn, zero_pow hq.ne.symm] at h
  contrapose! h
  apply_fun Nat.factorization at h
  simp only [Nat.factorization_pow] at h
  suffices ∃ f : ℕ →₀ ℕ, n.factorization = q • f by
    obtain ⟨f, hf⟩ := this
    have : f = (f.prod fun x1 x2 => x1 ^ x2).factorization := by
      rw [Nat.prod_pow_factorization_eq_self]
      intro z hz
      apply_fun Finsupp.support at hf
      rw [Finsupp.support_smul_eq (by omega)] at hf
      rw [← hf] at hz
      exact Nat.prime_of_mem_primeFactors hz
    have hf0 : f 0 = 0 := by
      apply_fun (· 0) at hf
      simp only [Nat.factorization_zero_right, Finsupp.coe_smul, Pi.smul_apply, smul_eq_mul,
        zero_eq_mul] at hf
      cases hf
      · omega
      · assumption
    rw [this, ← Nat.factorization_pow] at hf
    apply Nat.factorization_inj at hf
    · use f.prod (· ^ ·)
    · exact hn
    · simp only [ne_eq, Set.mem_setOf_eq, pow_eq_zero_iff', Finsupp.prod_eq_zero_iff,
        Finsupp.mem_support_iff, existsAndEq, true_and, and_self, not_and, Decidable.not_not]
      tauto
  use n.factorization.mapRange (fun e ↦ e / q) (by simp)
  ext z
  apply_fun (· z) at h
  simp only [Finsupp.coe_smul, Pi.smul_apply, smul_eq_mul, Finsupp.mapRange_apply] at h ⊢
  rw [Nat.mul_div_cancel']
  apply Nat.Coprime.dvd_of_dvd_mul_left _ ⟨_, h⟩
  rwa [Nat.coprime_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Irrational/Variant273bc59de3db478ecd2de066deb4d24b0c7cb845070b0748a27ebd76c9ad1ca2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Irrational/Variant273bc59de3db478ecd2de066deb4d24b0c7cb845070b0748a27ebd76c9ad1ca2.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `103159d7045d05f2907435acfc8c22bbd9b4c425` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
