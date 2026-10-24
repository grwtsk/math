# psp_from_prime_gt_p

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7f1a077-32f4-7a1c-ccc7-bf196dce1188",
  "kind": "theorem",
  "lexical_name": "psp_from_prime_gt_p",
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
  "slug": "psp-from-prime-gt-p--a2ed16355ea8f1da4d6238a6",
  "source": {
    "blob": "a3d1a3a63870f31fa0ed99f1ad87004b000a2898",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 312,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant14bbde606b0c7a65de0ecca5f9b4bc2ded821948d8ec09d93d01c58066132fea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2ed16355ea8f1da4d6238a6b09e86d389df5388ef6cd3f25d38a67dffcfa8b8",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant14bbde606b0c7a65de0ecca5f9b4bc2ded821948d8ec09d93d01c58066132fea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7f1a077-32f4-7a1c-ccc7-bf196dce1188`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 312–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem psp_from_prime_gt_p {b : ℕ} (b_ge_two : 2 ≤ b) {p : ℕ} (p_prime : p.Prime)
    (p_gt_two : 2 < p) : p < psp_from_prime b p := by
  unfold psp_from_prime
  set A := (b ^ p - 1) / (b - 1)
  set B := (b ^ p + 1) / (b + 1)
  rw [show A * B = (b ^ (2 * p) - 1) / (b ^ 2 - 1) from
      AB_id_helper _ _ b_ge_two (p_prime.odd_of_ne_two p_gt_two.ne.symm)]
  have AB_dvd : b ^ 2 - 1 ∣ b ^ (2 * p) - 1 := by
    simpa only [one_pow, pow_mul] using nat_sub_dvd_pow_sub_pow _ 1 p
  suffices h : p * (b ^ 2 - 1) < b ^ (2 * p) - 1
  · have h₁ : p * (b ^ 2 - 1) / (b ^ 2 - 1) < (b ^ (2 * p) - 1) / (b ^ 2 - 1) :=
      Nat.div_lt_div_of_lt_of_dvd AB_dvd h
    have h₂ : 0 < b ^ 2 - 1 := by
      linarith [show 3 ≤ b ^ 2 - 1 from le_tsub_of_add_le_left (show 4 ≤ b ^ 2 by nlinarith)]
    rwa [Nat.mul_div_cancel _ h₂] at h₁
  rw [Nat.mul_sub_left_distrib, mul_one, pow_mul]
  conv_rhs => rw [← Nat.sub_add_cancel (show 1 ≤ p by linarith)]
  rw [pow_succ (b ^ 2)]
  suffices h : p * b ^ 2 < (b ^ 2) ^ (p - 1) * b ^ 2
  · apply gt_of_ge_of_gt
    · exact tsub_le_tsub_left (one_le_of_lt p_gt_two) ((b ^ 2) ^ (p - 1) * b ^ 2)
    · have : p ≤ p * b ^ 2 := Nat.le_mul_of_pos_right (show 0 < b ^ 2 by nlinarith)
      exact tsub_lt_tsub_right_of_le this h
  suffices h : p < (b ^ 2) ^ (p - 1)
  · have : 4 ≤ b ^ 2 := by nlinarith
    have : 0 < b ^ 2 := by linarith
    exact mul_lt_mul_of_pos_right h this
  rw [← pow_mul, Nat.mul_sub_left_distrib, mul_one]
  have : 2 ≤ 2 * p - 2 := le_tsub_of_add_le_left (show 4 ≤ 2 * p by linarith)
  have : 2 + p ≤ 2 * p := by linarith
  have : p ≤ 2 * p - 2 := le_tsub_of_add_le_left this
  exact Nat.lt_of_le_of_lt this (pow_gt_exponent _ b_ge_two)

/-- For all positive bases, there exist Fermat infinite pseudoprimes to that base.
Given in this form: for all numbers `b ≥ 1` and `m`, there exists a pseudoprime `n` to base `b` such
that `m ≤ n`. This form is similar to `Nat.exists_infinite_primes`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant14bbde606b0c7a65de0ecca5f9b4bc2ded821948d8ec09d93d01c58066132fea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant14bbde606b0c7a65de0ecca5f9b4bc2ded821948d8ec09d93d01c58066132fea.lean#L312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3d1a3a63870f31fa0ed99f1ad87004b000a2898` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
