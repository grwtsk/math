# goldbachRamanujanInteger_eq_gcd_divisorSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1cbe1333-6700-cb12-5749-ccba7a553568",
  "kind": "theorem",
  "lexical_name": "goldbachRamanujanInteger_eq_gcd_divisorSum",
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
  "slug": "goldbachramanujaninteger-eq-gcd-divisorsum--39b6c6a98dbfa10225b805ec",
  "source": {
    "blob": "150728bd7ad5ba326cec22777bac8b2068673f9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 117,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachCompositeRamanujan.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39b6c6a98dbfa10225b805ec135c22dbda11e9850c12021615da578fba645a07",
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

Occurrence: `result:1cbe1333-6700-cb12-5749-ccba7a553568`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachRamanujanInteger_eq_gcd_divisorSum
    {q N : ℕ} (hq : 0 < q) :
    goldbachRamanujanInteger q N =
      ∑ d ∈ (Nat.gcd q N).divisors,
        (d : ℤ) * ArithmeticFunction.moebius (q / d) := by
  classical
  rw [goldbachRamanujanInteger_eq_sum_divisors hq.ne']
  have hset : q.divisors.filter (fun d => d ∣ N) = (Nat.gcd q N).divisors := by
    ext d
    simp only [Finset.mem_filter, Nat.mem_divisors]
    constructor
    · rintro ⟨⟨hdq, _⟩, hdN⟩
      exact ⟨Nat.dvd_gcd hdq hdN, (Nat.gcd_pos_of_pos_left N hq).ne'⟩
    · rintro ⟨hdg, _⟩
      exact ⟨⟨dvd_trans hdg (Nat.gcd_dvd_left q N), hq.ne'⟩,
        dvd_trans hdg (Nat.gcd_dvd_right q N)⟩
  rw [← hset, Finset.sum_filter]

/-- On a coprime target, the Ramanujan integer is the Möbius value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachCompositeRamanujan.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachCompositeRamanujan.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `150728bd7ad5ba326cec22777bac8b2068673f9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
