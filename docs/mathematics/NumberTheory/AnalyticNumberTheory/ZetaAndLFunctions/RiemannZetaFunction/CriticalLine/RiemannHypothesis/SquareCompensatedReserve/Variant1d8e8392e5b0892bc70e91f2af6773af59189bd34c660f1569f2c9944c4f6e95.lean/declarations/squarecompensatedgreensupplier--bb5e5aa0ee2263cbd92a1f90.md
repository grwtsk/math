# SquareCompensatedGreenSupplier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c794b3f89eb0a45e9210a8fdddf12ac3e8485441ecf984cbab32041219a1751",
  "kind": "def",
  "lexical_name": "SquareCompensatedGreenSupplier",
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
  "slug": "squarecompensatedgreensupplier--bb5e5aa0ee2263cbd92a1f90",
  "source": {
    "blob": "1b2bb9fa25c828c3bc1b653506357244f6839251",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 25,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SquareCompensatedReserve/Variant1d8e8392e5b0892bc70e91f2af6773af59189bd34c660f1569f2c9944c4f6e95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bb5e5aa0ee2263cbd92a1f904ead5983116d155df25ab82ff430ef3bbf0e6c8c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SquareCompensatedReserve/Variant1d8e8392e5b0892bc70e91f2af6773af59189bd34c660f1569f2c9944c4f6e95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9c794b3f89eb0a45e9210a8fdddf12ac3e8485441ecf984cbab32041219a1751`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SquareCompensatedGreenSupplier : Prop :=
  ∃ N : ℕ, entranceScale ≤ N ∧ ordinaryPrimePrimitive N ≤ -reserve ∧
    cumulativeDiscrepancy ordinaryPrimeCoefficient N ≤ 0 ∧
    ∀ K : ℕ, reserve < actualSuffix N K 0 →
      (∀ j : ℕ, j < K → 0 ≤ actualSuffix N K j) →
      completeMangoldtWork N K - primeSquareWork N K +
        (cumulativeDiscrepancy ordinaryPrimeCoefficient N) ^ 2 *
          cellClock N (N + 1 : ℕ) ≤ greenBudget

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SquareCompensatedReserve/Variant1d8e8392e5b0892bc70e91f2af6773af59189bd34c660f1569f2c9944c4f6e95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SquareCompensatedReserve/Variant1d8e8392e5b0892bc70e91f2af6773af59189bd34c660f1569f2c9944c4f6e95.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b2bb9fa25c828c3bc1b653506357244f6839251` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
