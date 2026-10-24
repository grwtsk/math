# squareRemovedPairedWork_eq_first_square_quadrature

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9f2bb70-2490-78df-12f8-3b0c720a0608",
  "kind": "theorem",
  "lexical_name": "squareRemovedPairedWork_eq_first_square_quadrature",
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
  "slug": "squareremovedpairedwork-eq-first-square-quadrature--a302b06a8a5f616f6045bf81",
  "source": {
    "blob": "e315b2fd4faadef3dd46bf980c7492ff380c3bfd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 110,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant25b61a2c43e059d091bd0894d067b51b48a7294e11a007e97fad723b4df53ad4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a302b06a8a5f616f6045bf819bfd79b7a52b9b675ba5091c1c8d66e9bcfb8c79",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant25b61a2c43e059d091bd0894d067b51b48a7294e11a007e97fad723b4df53ad4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9f2bb70-2490-78df-12f8-3b0c720a0608`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squareRemovedPairedWork_eq_first_square_quadrature {A : ℝ} (hA : 1 ≤ A) :
    squareRemovedPairedWork A =
      primeLogSum (2 * A) (pairedTailTest A) + pairedSquareReadout A -
        (negativeTimeMean A - criticalContinuousMoment A) := by
  rw [squareRemovedPairedWork_eq hA, pairedErrorContrast_eq_prime_quadrature hA,
    squareTailPairedWork_eq_neg_readout hA]
  ring

end FormalResearch.RiemannHypothesis.SourcePairedSquareQuadrature
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant25b61a2c43e059d091bd0894d067b51b48a7294e11a007e97fad723b4df53ad4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant25b61a2c43e059d091bd0894d067b51b48a7294e11a007e97fad723b4df53ad4.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e315b2fd4faadef3dd46bf980c7492ff380c3bfd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
