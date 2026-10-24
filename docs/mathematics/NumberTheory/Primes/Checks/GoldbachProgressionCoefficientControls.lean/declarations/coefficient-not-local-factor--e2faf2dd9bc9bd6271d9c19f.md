# coefficient_not_local_factor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b9ef101-1f1a-7f2e-577a-bd6d77db3c69",
  "kind": "theorem",
  "lexical_name": "coefficient_not_local_factor",
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
  "slug": "coefficient-not-local-factor--e2faf2dd9bc9bd6271d9c19f",
  "source": {
    "blob": "298eeacf6794b936ab55ce26131dd531f8c22ecd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 60,
    "path": "GRWTSK/NumberTheory/Primes/Checks/GoldbachProgressionCoefficientControls.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2faf2dd9bc9bd6271d9c19f74d8db5dc6c6b7e990ee5db85a55a7a068006c10",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/Checks/GoldbachProgressionCoefficientControls.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b9ef101-1f1a-7f2e-577a-bd6d77db3c69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coefficient_not_local_factor :
    goldbachProgressionDenominatorCoefficient 3 12 =
        (1 / 2 : ℂ) ∧
      (GRWTSK.NumberTheory.Primes.GoldbachLocalFactors.goldbachPrimeLocalFactor
        3 12 : ℂ) = 3 / 2 := by
  constructor
  · exact prime_three_divisor_coefficient
  · norm_num
      [GRWTSK.NumberTheory.Primes.GoldbachLocalFactors.goldbachPrimeLocalFactor,
       GRWTSK.NumberTheory.Primes.GoldbachLocalFactors.goldbachPrimeResidueCount,
       GRWTSK.NumberTheory.Primes.GoldbachLocalFactors.goldbachPrimeResidues]

/-- Adding one restores the exact modulus-five local factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Primes/Checks/GoldbachProgressionCoefficientControls.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/Checks/GoldbachProgressionCoefficientControls.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `298eeacf6794b936ab55ce26131dd531f8c22ecd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
