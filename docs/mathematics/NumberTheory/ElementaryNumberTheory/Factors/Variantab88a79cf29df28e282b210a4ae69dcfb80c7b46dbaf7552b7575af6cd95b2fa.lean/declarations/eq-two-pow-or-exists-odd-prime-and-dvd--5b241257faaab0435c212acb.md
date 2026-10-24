# eq_two_pow_or_exists_odd_prime_and_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:07eda31a-69c0-4d79-157d-b2f57b7c0294",
  "kind": "theorem",
  "lexical_name": "eq_two_pow_or_exists_odd_prime_and_dvd",
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
  "slug": "eq-two-pow-or-exists-odd-prime-and-dvd--5b241257faaab0435c212acb",
  "source": {
    "blob": "61480fd1cda78e26e1d79c5d082648564f7bf1e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 302,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Factors/Variantab88a79cf29df28e282b210a4ae69dcfb80c7b46dbaf7552b7575af6cd95b2fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b241257faaab0435c212acb3e73c7c4deaea823197dd5ddeccf095d9d471c74",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Factors/Variantab88a79cf29df28e282b210a4ae69dcfb80c7b46dbaf7552b7575af6cd95b2fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07eda31a-69c0-4d79-157d-b2f57b7c0294`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_two_pow_or_exists_odd_prime_and_dvd (n : ℕ) :
    (∃ k : ℕ, n = 2 ^ k) ∨ ∃ p, Nat.Prime p ∧ p ∣ n ∧ Odd p :=
  (eq_or_ne n 0).elim (fun hn => Or.inr ⟨3, prime_three, hn.symm ▸ dvd_zero 3, ⟨1, rfl⟩⟩) fun hn =>
    or_iff_not_imp_right.mpr fun H =>
      ⟨n.factors.length,
        eq_prime_pow_of_unique_prime_dvd hn fun {_} hprime hdvd =>
          hprime.eq_two_or_odd'.resolve_right fun hodd => H ⟨_, hprime, hdvd, hodd⟩⟩
#align nat.eq_two_pow_or_exists_odd_prime_and_dvd Nat.eq_two_pow_or_exists_odd_prime_and_dvd

end Nat

assert_not_exists Multiset
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Factors/Variantab88a79cf29df28e282b210a4ae69dcfb80c7b46dbaf7552b7575af6cd95b2fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Factors/Variantab88a79cf29df28e282b210a4ae69dcfb80c7b46dbaf7552b7575af6cd95b2fa.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61480fd1cda78e26e1d79c5d082648564f7bf1e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
