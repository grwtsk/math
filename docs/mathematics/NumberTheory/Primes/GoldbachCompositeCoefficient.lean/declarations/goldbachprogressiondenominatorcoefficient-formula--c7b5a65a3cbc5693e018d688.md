# goldbachProgressionDenominatorCoefficient_formula

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:766f6c28-04cd-780d-d4e5-7b30563f939f",
  "kind": "theorem",
  "lexical_name": "goldbachProgressionDenominatorCoefficient_formula",
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
  "slug": "goldbachprogressiondenominatorcoefficient-formula--c7b5a65a3cbc5693e018d688",
  "source": {
    "blob": "ff57d1d94fed3bd191bcac4ab5ccf74c78f9773a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 86,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachCompositeCoefficient.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7b5a65a3cbc5693e018d68803f95c2f92298cbbad26ebb111242a411add2e03",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachCompositeCoefficient.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:766f6c28-04cd-780d-d4e5-7b30563f939f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachProgressionDenominatorCoefficient_formula
    {q N : ℕ} (hq : 0 < q) :
    goldbachProgressionDenominatorCoefficient q N =
      ((((ArithmeticFunction.moebius q : ℤ) : ℂ) ^ 2) *
          (goldbachRamanujanInteger q N : ℂ)) /
        ((Nat.totient q : ℂ) ^ 2) := by
  rw [goldbachProgressionDenominatorCoefficient_factor hq,
    goldbachReducedIntegerPhaseSum_neg_target_eq_ramanujanInteger hq]
  ring

/-- The complex coefficient is the cast of its rational formula. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachCompositeCoefficient.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachCompositeCoefficient.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff57d1d94fed3bd191bcac4ab5ccf74c78f9773a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
