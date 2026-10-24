# sigma_two_pow_eq_mersenne_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2c483cf-24d2-9bec-712a-823ddf036094",
  "kind": "theorem",
  "lexical_name": "sigma_two_pow_eq_mersenne_succ",
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
  "slug": "sigma-two-pow-eq-mersenne-succ--496bb0cdbc4998c771956144",
  "source": {
    "blob": "db03f1acae0ca68be654f6e0a4a7b77198e1da5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 49,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Varianta113627aeab1ef12914330acd6ece4a6a66a1d614d40f5d547af3c60bffd7a6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:496bb0cdbc4998c771956144ee93fcf72a47e3eebce26e65e97b258bae3ead54",
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

Occurrence: `result:c2c483cf-24d2-9bec-712a-823ddf036094`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sigma_two_pow_eq_mersenne_succ (k : ℕ) : σ 1 (2 ^ k) = mersenne (k + 1) := by
  simp [sigma_one_apply, mersenne, Nat.prime_two, show 2 = 1 + 1 from rfl,
    ← geom_sum_mul_add 1 (k + 1)]
#align theorems_100.nat.sigma_two_pow_eq_mersenne_succ Theorems100.Nat.sigma_two_pow_eq_mersenne_succ

/-- Euclid's theorem that Mersenne primes induce perfect numbers -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Varianta113627aeab1ef12914330acd6ece4a6a66a1d614d40f5d547af3c60bffd7a6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Varianta113627aeab1ef12914330acd6ece4a6a66a1d614d40f5d547af3c60bffd7a6e.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db03f1acae0ca68be654f6e0a4a7b77198e1da5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
