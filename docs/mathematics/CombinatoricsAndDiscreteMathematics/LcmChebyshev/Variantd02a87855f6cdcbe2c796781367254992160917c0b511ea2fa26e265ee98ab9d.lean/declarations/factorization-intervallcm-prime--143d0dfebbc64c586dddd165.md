# factorization_intervalLcm_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d9be784-6de5-0593-ac37-5a4a8c958648",
  "kind": "theorem",
  "lexical_name": "factorization_intervalLcm_prime",
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
  "slug": "factorization-intervallcm-prime--143d0dfebbc64c586dddd165",
  "source": {
    "blob": "720201abbda1a13d36bb2cdd7d12fc84d40e37c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 79,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LcmChebyshev/Variantd02a87855f6cdcbe2c796781367254992160917c0b511ea2fa26e265ee98ab9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:143d0dfebbc64c586dddd165aefadd8cf6e1f545e68ea39efacb3f6311565e2c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/LcmChebyshev/Variantd02a87855f6cdcbe2c796781367254992160917c0b511ea2fa26e265ee98ab9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d9be784-6de5-0593-ac37-5a4a8c958648`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factorization_intervalLcm_prime
    {N p e : Nat}
    (hp : Nat.Prime p) :
    e ≤ Nat.factorization (intervalLcm N) p ↔ p ^ e ≤ N ∨ e = 0 := by
  rw [factorization_intervalLcm_prime_log N hp]
  constructor
  · intro he
    by_cases h0 : e = 0
    · exact Or.inr h0
    · left
      have hNne : N ≠ 0 := by
        intro hN
        have hlog0 : Nat.log p N = 0 := by simp [hN]
        omega
      exact Nat.pow_le_of_le_log hNne he
  · intro h
    rcases h with hpow | h0
    · exact Nat.le_log_of_pow_le hp.one_lt hpow
    · simp [h0]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/LcmChebyshev/Variantd02a87855f6cdcbe2c796781367254992160917c0b511ea2fa26e265ee98ab9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/LcmChebyshev/Variantd02a87855f6cdcbe2c796781367254992160917c0b511ea2fa26e265ee98ab9d.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `720201abbda1a13d36bb2cdd7d12fc84d40e37c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
