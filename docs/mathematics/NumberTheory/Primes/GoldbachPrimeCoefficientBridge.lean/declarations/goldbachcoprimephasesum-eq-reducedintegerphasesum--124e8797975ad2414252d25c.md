# goldbachCoprimePhaseSum_eq_reducedIntegerPhaseSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f1f8318e-2f03-7fe7-78af-c1ff30784373",
  "kind": "theorem",
  "lexical_name": "goldbachCoprimePhaseSum_eq_reducedIntegerPhaseSum",
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
  "slug": "goldbachcoprimephasesum-eq-reducedintegerphasesum--124e8797975ad2414252d25c",
  "source": {
    "blob": "fb0de743dd7ece259f138dac992ed6e13588d308",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 215,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachPrimeCoefficientBridge.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:124e8797975ad2414252d25cd9ab63ff5d0112ac548885352361a9e5079bd9aa",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachPrimeCoefficientBridge.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1f8318e-2f03-7fe7-78af-c1ff30784373`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachCoprimePhaseSum_eq_reducedIntegerPhaseSum
    (a q : ℕ) :
    goldbachCoprimePhaseSum a q =
      goldbachReducedIntegerPhaseSum q (a : ℤ) := by
  unfold goldbachCoprimePhaseSum
    goldbachReducedIntegerPhaseSum
    goldbachCoprimeResidues
  apply Finset.sum_congr rfl
  intro r hr
  exact unitCharacter_rational_mul_comm q a r

/-- At a prime denominator and reduced numerator, the normalized finite
Ramanujan coefficient is exactly `-1 / (p - 1)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachPrimeCoefficientBridge.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachPrimeCoefficientBridge.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb0de743dd7ece259f138dac992ed6e13588d308` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
