# Ideal.eq_prime_pow_of_succ_lt_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0726d06a-cd6d-53d5-75cb-a0841fca71f8",
  "kind": "theorem",
  "lexical_name": "Ideal.eq_prime_pow_of_succ_lt_of_le",
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
  "slug": "ideal-eq-prime-pow-of-succ-lt-of-le--b4b5865ca44d99113c69cfa0",
  "source": {
    "blob": "ebaae1e55906a2e45da6c0f703da3ac57a9f1c56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 773,
    "line": 758,
    "path": "GRWTSK/Algebra/Ideal/Variant003f141b367a2e030c8dc01e80078432f8d9e4c5a0428d5af099a167ccc85fa6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4b5865ca44d99113c69cfa0cb3221879c86e89033d369ba8b5aa2c0a18d3e4a",
  "verification": {
    "reference": "docs/verification/Algebra/Ideal/Variant003f141b367a2e030c8dc01e80078432f8d9e4c5a0428d5af099a167ccc85fa6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0726d06a-cd6d-53d5-75cb-a0841fca71f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 758–773.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ideal.eq_prime_pow_of_succ_lt_of_le {P I : Ideal A} [P_prime : P.IsPrime] (hP : P ≠ ⊥)
    {i : ℕ} (hlt : P ^ (i + 1) < I) (hle : I ≤ P ^ i) : I = P ^ i := by
  have := Classical.decEq (Ideal A)
  refine le_antisymm hle ?_
  have P_prime' := Ideal.prime_of_isPrime hP P_prime
  have h1 : I ≠ ⊥ := (lt_of_le_of_lt bot_le hlt).ne'
  have := pow_ne_zero i hP
  have h3 := pow_ne_zero (i + 1) hP
  rw [← Ideal.dvdNotUnit_iff_lt, dvdNotUnit_iff_normalizedFactors_lt_normalizedFactors h1 h3,
    normalizedFactors_pow, normalizedFactors_irreducible P_prime'.irreducible,
    Multiset.nsmul_singleton, Multiset.lt_replicate_succ] at hlt
  rw [← Ideal.dvd_iff_le, dvd_iff_normalizedFactors_le_normalizedFactors, normalizedFactors_pow,
    normalizedFactors_irreducible P_prime'.irreducible, Multiset.nsmul_singleton]
  all_goals assumption
#align ideal.eq_prime_pow_of_succ_lt_of_le Ideal.eq_prime_pow_of_succ_lt_of_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Ideal/Variant003f141b367a2e030c8dc01e80078432f8d9e4c5a0428d5af099a167ccc85fa6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ideal/Variant003f141b367a2e030c8dc01e80078432f8d9e4c5a0428d5af099a167ccc85fa6.lean#L758).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebaae1e55906a2e45da6c0f703da3ac57a9f1c56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
