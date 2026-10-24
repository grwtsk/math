# emultiplicity_pow_prime_pow_sub_pow_prime_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:84c0c64c-2d32-f30c-9c61-3cfb3d05dfa5",
  "kind": "theorem",
  "lexical_name": "emultiplicity_pow_prime_pow_sub_pow_prime_pow",
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
  "slug": "emultiplicity-pow-prime-pow-sub-pow-prime-pow--3e8dc54bbb3a5d6afce496bc",
  "source": {
    "blob": "f1d34b5d432cc8b833229cb6a38c06a617480678",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 189,
    "path": "GRWTSK/Algebra/Multiplicity/Variantbfcac4f87f3c2c8c649e5aa006279598ac91dc02cb81de678a434bd0ac8bab9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e8dc54bbb3a5d6afce496bc4ed7149061d5ec5b56702043de9de2ad8d6350e3",
  "verification": {
    "reference": "docs/verification/Algebra/Multiplicity/Variantbfcac4f87f3c2c8c649e5aa006279598ac91dc02cb81de678a434bd0ac8bab9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84c0c64c-2d32-f30c-9c61-3cfb3d05dfa5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem emultiplicity_pow_prime_pow_sub_pow_prime_pow (a : ℕ) :
    emultiplicity (↑p) (x ^ p ^ a - y ^ p ^ a) = emultiplicity (↑p) (x - y) + a := by
  induction a with
  | zero => rw [Nat.cast_zero, add_zero, pow_zero, pow_one, pow_one]
  | succ a h_ind =>
    rw [Nat.cast_add, Nat.cast_one, ← add_assoc, ← h_ind, pow_succ, pow_mul, pow_mul]
    apply emultiplicity_pow_prime_sub_pow_prime hp hp1
    · rw [← geom_sum₂_mul]
      exact dvd_mul_of_dvd_right hxy _
    · exact fun h => hx (hp.dvd_of_dvd_pow h)

@[deprecated (since := "2024-11-30")]
alias multiplicity.pow_prime_pow_sub_pow_prime_pow := emultiplicity_pow_prime_pow_sub_pow_prime_pow

end IntegralDomain

section LiftingTheExponent

variable (hp : Nat.Prime p) (hp1 : Odd p)
include hp hp1

/-- **Lifting the exponent lemma** for odd primes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Multiplicity/Variantbfcac4f87f3c2c8c649e5aa006279598ac91dc02cb81de678a434bd0ac8bab9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Multiplicity/Variantbfcac4f87f3c2c8c649e5aa006279598ac91dc02cb81de678a434bd0ac8bab9c.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1d34b5d432cc8b833229cb6a38c06a617480678` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
