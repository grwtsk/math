# finiteCompensatedReadout_eq_prime_sub_baseline

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d833e6fa-ae75-9d5f-7058-f14cffc6e16b",
  "kind": "theorem",
  "lexical_name": "finiteCompensatedReadout_eq_prime_sub_baseline",
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
  "slug": "finitecompensatedreadout-eq-prime-sub-baseline--f407f9fb4f7bf66f49f1df41",
  "source": {
    "blob": "2bad5643774eb2b4bc84e59a2d525a3b85415354",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 65,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectSquareShell/Variant7b6ea05cc86823e09c3cd5beeb7ab001e476b8a627db7dc55f94b592bde37be1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f407f9fb4f7bf66f49f1df41d334194037c3327f761fd933ce9ebef9fc48df30",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectSquareShell/Variant7b6ea05cc86823e09c3cd5beeb7ab001e476b8a627db7dc55f94b592bde37be1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d833e6fa-ae75-9d5f-7058-f14cffc6e16b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteCompensatedReadout_eq_prime_sub_baseline (A : ℝ) (N : ℕ) :
    finiteCompensatedReadout A N =
      (∑ n ∈ Finset.Icc 2 N, ArithmeticFunction.vonMangoldt n / Real.sqrt n *
        sourceCorrelation explicitSecondDerivative A (Real.log n)) -
      allNaturalBaseline A N := by
  unfold finiteCompensatedReadout allNaturalBaseline
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n _
  ring

/-- The literal original closed prime moment remains the native source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectSquareShell/Variant7b6ea05cc86823e09c3cd5beeb7ab001e476b8a627db7dc55f94b592bde37be1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectSquareShell/Variant7b6ea05cc86823e09c3cd5beeb7ab001e476b8a627db7dc55f94b592bde37be1.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bad5643774eb2b4bc84e59a2d525a3b85415354` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
