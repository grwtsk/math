# goldbachRamanujanInteger_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:279f8667-082c-889a-88e7-cb75b26ce2df",
  "kind": "theorem",
  "lexical_name": "goldbachRamanujanInteger_prime",
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
  "slug": "goldbachramanujaninteger-prime--ff2d36821535df5e3fb16bd0",
  "source": {
    "blob": "150728bd7ad5ba326cec22777bac8b2068673f9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 146,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachCompositeRamanujan.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff2d36821535df5e3fb16bd0ec591fc85601d2cc723e9fd6d3e2526e2f93b5c9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachCompositeRamanujan.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:279f8667-082c-889a-88e7-cb75b26ce2df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachRamanujanInteger_prime
    {p N : ℕ} (hp : p.Prime) :
    goldbachRamanujanInteger p N =
      if p ∣ N then (p : ℤ) - 1 else -1 := by
  by_cases hdiv : p ∣ N
  · have hgcd : Nat.gcd p N = p :=
      Nat.gcd_eq_left_iff_dvd.mpr hdiv
    rw [goldbachRamanujanInteger_eq_gcd_divisorSum hp.pos,
      hgcd, if_pos hdiv]
    rw [hp.divisors, Finset.sum_insert (by simpa only [Finset.mem_singleton] using hp.ne_one.symm), Finset.sum_singleton]
    rw [Nat.div_one, Nat.div_self hp.pos, ArithmeticFunction.moebius_apply_prime hp]
    simp
    ring
  · have hcop : p.Coprime N :=
      (hp.coprime_iff_not_dvd).2 hdiv
    rw [goldbachRamanujanInteger_of_coprime hp.pos hcop,
      ArithmeticFunction.moebius_apply_prime hp,
      if_neg hdiv]

/-- Multiplicativity of the integer Ramanujan source in coprime moduli. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachCompositeRamanujan.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachCompositeRamanujan.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `150728bd7ad5ba326cec22777bac8b2068673f9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
