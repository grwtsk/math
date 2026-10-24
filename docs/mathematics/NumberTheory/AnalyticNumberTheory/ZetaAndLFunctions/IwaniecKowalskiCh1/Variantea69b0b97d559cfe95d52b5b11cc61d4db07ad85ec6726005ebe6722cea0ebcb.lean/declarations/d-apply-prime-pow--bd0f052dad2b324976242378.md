# d_apply_prime_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f45b656-a374-db7b-2396-8f4fb18bec31",
  "kind": "theorem",
  "lexical_name": "d_apply_prime_pow",
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
  "slug": "d-apply-prime-pow--bd0f052dad2b324976242378",
  "source": {
    "blob": "d1e130d856dabeec0e70683332be624b1a15c231",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 318,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantea69b0b97d559cfe95d52b5b11cc61d4db07ad85ec6726005ebe6722cea0ebcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd0f052dad2b32497624237830d939d0afd01ec79bcc9ec45d37d3c65dc5236d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantea69b0b97d559cfe95d52b5b11cc61d4db07ad85ec6726005ebe6722cea0ebcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f45b656-a374-db7b-2396-8f4fb18bec31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem d_apply_prime_pow {k : ℕ} (hk : 0 < k) {p : ℕ} (hp : p.Prime) (a : ℕ) :
    d k (p ^ a) = (a + k - 1).choose (k - 1) := by
  obtain ⟨k', rfl⟩ := exists_eq_succ_of_ne_zero (Nat.ne_of_gt hk)
  induction k' generalizing a with
  | zero => simp [d_one, hp.ne_zero]
  | succ k' ih =>
      rw [d_succ, mul_zeta_apply, sum_divisors_prime_pow hp]
      simp_rw [fun i ↦ ih i (succ_pos _)]
      simpa [add_assoc, add_left_comm, add_comm] using sum_range_add_choose a k'

/-- (1.25) in Iwaniec-Kowalski: a formula for `d_k` for all `n`. -/
@[blueprint
  "d_apply"
  (title := "d apply")
  (statement := /-- (1.25) in Iwaniec-Kowalski: a formula for $d_k$ for all $n$. -/)
  (proof := /--
  The function $d_k$ is multiplicative, so to compute $d_k(n)$ for a general natural number $n$, we can factor $n$ into its prime power decomposition: $n = p_1^{a_1} p_2^{a_2} ... p_m^{a_m}$. Since $d_k$ is multiplicative, we have:

  \[
  d_k(n) = d_k(p_1^{a_1}) \cdot d_k(p_2^{a_2}) \cdot ... \cdot d_k(p_m^{a_m})
  \]

  Using the explicit formula for prime powers from the previous theorem, we can substitute to get:

  \[
  d_k(n) = \prod_{i=1}^{m} (a_i + k - 1).choose (k - 1)
  \]

  This gives us a complete formula for $d_k(n)$ in terms of the prime factorization of $n$.
  -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantea69b0b97d559cfe95d52b5b11cc61d4db07ad85ec6726005ebe6722cea0ebcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantea69b0b97d559cfe95d52b5b11cc61d4db07ad85ec6726005ebe6722cea0ebcb.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1e130d856dabeec0e70683332be624b1a15c231` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
