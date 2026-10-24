# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0ef5de7c01041dbb7026d04787e702d348f806c1c823b9c3368a418e2e5c409d",
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
  "slug": "example--b2e80843b799e7faf1fc8053",
  "source": {
    "blob": "786a09105424b1c072a641962ddd26e8fe662c29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2188,
    "line": 2179,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Varianted44b7e8963d433f94d3deef9ba3ae1015f97b62bcd8771a52a02aef8e10240d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b2e80843b799e7faf1fc80534adf893c862ad33d05361d948501a3691d6336b2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Varianted44b7e8963d433f94d3deef9ba3ae1015f97b62bcd8771a52a02aef8e10240d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0ef5de7c01041dbb7026d04787e702d348f806c1c823b9c3368a418e2e5c409d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2179–2188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (A : ℝ) (P : Finset ℕ) (g U V : ℕ) :
    rectangularContribution P g U V (fun q : ℕ ↦ ThetaKernelTransport.thetaKernel A q -
        ((∫ x : ℝ, x * Real.exp (x / 2) *
            normalizedTest Realization.explicitSecondDerivative A x) ^ 2) / (q : ℝ)) =
      rectangularContribution P g U V (ThetaKernelTransport.thetaKernel A) -
        rectangularContribution P g U V
          (fun q ↦ ((∫ x : ℝ, x * Real.exp (x / 2) *
            normalizedTest Realization.explicitSecondDerivative A x) ^ 2) / (q : ℝ)) :=
  TwoInsertionBoundary.thetaRemainder_rectangle_eq A P g U V

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Varianted44b7e8963d433f94d3deef9ba3ae1015f97b62bcd8771a52a02aef8e10240d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Varianted44b7e8963d433f94d3deef9ba3ae1015f97b62bcd8771a52a02aef8e10240d.lean#L2179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `786a09105424b1c072a641962ddd26e8fe662c29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
