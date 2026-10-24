# SelectedGreenReserveSupplier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cb2ca7eafab13fc294062f0359015e540ea6d891a33692b48f2731ea00646686",
  "kind": "def",
  "lexical_name": "SelectedGreenReserveSupplier",
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
  "slug": "selectedgreenreservesupplier--8ef2378703ac178973f94446",
  "source": {
    "blob": "d5566a965311c28075152371ba1c3d4c49bf170b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 42,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReserveConsumer/Variante9e3b5911598f46d6762869f6be2f60b3220effcf6c761bdf13ebec145fb5852.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8ef2378703ac178973f94446e15aeb09dd83a538ba01ffdb67342e3fa3ea25bb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReserveConsumer/Variante9e3b5911598f46d6762869f6be2f60b3220effcf6c761bdf13ebec145fb5852.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cb2ca7eafab13fc294062f0359015e540ea6d891a33692b48f2731ea00646686`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SelectedGreenReserveSupplier : Prop :=
  ∃ N : ℕ, entranceScale ≤ N ∧ ordinaryPrimePrimitive N ≤ -reserve ∧
    cumulativeDiscrepancy ordinaryPrimeCoefficient N ≤ 0 ∧
    ∀ K : ℕ, reserve < actualSuffix N K 0 →
      (∀ j : ℕ, j < K → 0 ≤ actualSuffix N K j) →
      profileWork (fun j => cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j))
        (actualSuffix N K) K +
        (cumulativeDiscrepancy ordinaryPrimeCoefficient N) ^ 2 *
          cellClock N (N + 1 : ℕ) ≤ greenBudget

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReserveConsumer/Variante9e3b5911598f46d6762869f6be2f60b3220effcf6c761bdf13ebec145fb5852.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReserveConsumer/Variante9e3b5911598f46d6762869f6be2f60b3220effcf6c761bdf13ebec145fb5852.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5566a965311c28075152371ba1c3d4c49bf170b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
