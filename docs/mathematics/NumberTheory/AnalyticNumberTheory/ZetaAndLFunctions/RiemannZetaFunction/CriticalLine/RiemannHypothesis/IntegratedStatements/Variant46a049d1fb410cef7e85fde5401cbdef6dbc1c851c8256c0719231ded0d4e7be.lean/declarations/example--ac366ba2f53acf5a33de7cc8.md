# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8642db863b47aa3c445232d476fc2d0cbaed3ce24efdb1ca48227cab5289e68b",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--ac366ba2f53acf5a33de7cc8",
  "source": {
    "blob": "a6b94c8d9f25e2b8fb8c37da9fdac3a921b1e917",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 295,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedStatements/Variant46a049d1fb410cef7e85fde5401cbdef6dbc1c851c8256c0719231ded0d4e7be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ac366ba2f53acf5a33de7cc89df5ce05ac57c0e217e1ed7eca19f0b94a51a16f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedStatements/Variant46a049d1fb410cef7e85fde5401cbdef6dbc1c851c8256c0719231ded0d4e7be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8642db863b47aa3c445232d476fc2d0cbaed3ce24efdb1ca48227cab5289e68b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (N M : ℕ) (hN : 1 ≤ N) (hM : 1 ≤ M)
    (ε h t : ℝ) :
    (boundaryResidual (N + 1) ε h t - boundaryResidual N ε h t) *
      star (boundaryResidual (M + 1) ε h t - boundaryResidual M ε h t) =
      ((mobiusReciprocalSum N * mobiusReciprocalSum M : ℝ) : ℂ) *
        (boundaryFilter ε h t * riemannZeta (1 / 2 + (t : ℂ) * Complex.I)) *
          star (boundaryFilter ε h t * riemannZeta (1 / 2 + (t : ℂ) * Complex.I)) *
        cutoffShape N ((ε : ℂ) + (t : ℂ) * Complex.I) *
          star (cutoffShape M ((ε : ℂ) + (t : ℂ) * Complex.I)) := by
  exact FormalResearch.RiemannHypothesis.SourceComparison.CorrectedCutoffIncrement.boundaryResidual_increment_product N M hN hM ε h t

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedStatements/Variant46a049d1fb410cef7e85fde5401cbdef6dbc1c851c8256c0719231ded0d4e7be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedStatements/Variant46a049d1fb410cef7e85fde5401cbdef6dbc1c851c8256c0719231ded0d4e7be.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6b94c8d9f25e2b8fb8c37da9fdac3a921b1e917` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
