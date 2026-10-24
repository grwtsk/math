# perfect_two_pow_mul_mersenne_of_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1eb38cf0-80c8-61e3-0bb4-4ab71760ada1",
  "kind": "theorem",
  "lexical_name": "perfect_two_pow_mul_mersenne_of_prime",
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
  "slug": "perfect-two-pow-mul-mersenne-of-prime--2e11ff8cefc48dab6bbed0a0",
  "source": {
    "blob": "db03f1acae0ca68be654f6e0a4a7b77198e1da5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 55,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Varianta113627aeab1ef12914330acd6ece4a6a66a1d614d40f5d547af3c60bffd7a6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e11ff8cefc48dab6bbed0a0c3a3dfe1a1ac5563ed7722a64bb5ef8800ff8b18",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Varianta113627aeab1ef12914330acd6ece4a6a66a1d614d40f5d547af3c60bffd7a6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1eb38cf0-80c8-61e3-0bb4-4ab71760ada1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem perfect_two_pow_mul_mersenne_of_prime (k : ℕ) (pr : (mersenne (k + 1)).Prime) :
    Nat.Perfect (2 ^ k * mersenne (k + 1)) := by
  rw [Nat.perfect_iff_sum_divisors_eq_two_mul, ← mul_assoc, ← pow_succ, ← sigma_one_apply, mul_comm,
    isMultiplicative_sigma.map_mul_of_coprime
      (Nat.prime_two.coprime_pow_of_not_dvd (odd_mersenne_succ _)),
    sigma_two_pow_eq_mersenne_succ]
  · simp [pr, Nat.prime_two, sigma_one_apply]
  · apply mul_pos (pow_pos _ k) (mersenne_pos (Nat.succ_pos k))
    norm_num
#align theorems_100.nat.perfect_two_pow_mul_mersenne_of_prime Theorems100.Nat.perfect_two_pow_mul_mersenne_of_prime

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Varianta113627aeab1ef12914330acd6ece4a6a66a1d614d40f5d547af3c60bffd7a6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Varianta113627aeab1ef12914330acd6ece4a6a66a1d614d40f5d547af3c60bffd7a6e.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db03f1acae0ca68be654f6e0a4a7b77198e1da5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
