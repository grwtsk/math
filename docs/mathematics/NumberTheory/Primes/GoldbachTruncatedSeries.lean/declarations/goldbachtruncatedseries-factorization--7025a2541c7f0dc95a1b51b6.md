# goldbachTruncatedSeries_factorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a518b129-3f6d-e688-cc1d-de3944d1e4be",
  "kind": "theorem",
  "lexical_name": "goldbachTruncatedSeries_factorization",
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
  "slug": "goldbachtruncatedseries-factorization--7025a2541c7f0dc95a1b51b6",
  "source": {
    "blob": "87056e78110786da510cb9f4b2d8ad1d10efeaf4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 97,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachTruncatedSeries.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7025a2541c7f0dc95a1b51b6551db3952df9e6232e54389e9b370e924607040a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachTruncatedSeries.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a518b129-3f6d-e688-cc1d-de3944d1e4be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachTruncatedSeries_factorization (Q N : ℕ) :
    goldbachTruncatedSeries Q N =
      goldbachPrimeLocalFactor 2 N *
        goldbachTruncatedUniversalCore Q *
        goldbachTruncatedDivisorCorrection Q N := by
  have hfactor :=
    finiteGoldbachLocalProduct_factorization
      (P := goldbachOddPrimeCutoff Q) (N := N)
      (fun p hp => prime_of_mem_goldbachOddPrimeCutoff hp)
      (fun p hp => ne_two_of_mem_goldbachOddPrimeCutoff hp)
  unfold goldbachTruncatedSeries goldbachTruncatedUniversalCore
    goldbachTruncatedDivisorCorrection
  rw [hfactor]
  ring

/-- On an even target, the modulus-two contribution is exactly two. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachTruncatedSeries.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachTruncatedSeries.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87056e78110786da510cb9f4b2d8ad1d10efeaf4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
