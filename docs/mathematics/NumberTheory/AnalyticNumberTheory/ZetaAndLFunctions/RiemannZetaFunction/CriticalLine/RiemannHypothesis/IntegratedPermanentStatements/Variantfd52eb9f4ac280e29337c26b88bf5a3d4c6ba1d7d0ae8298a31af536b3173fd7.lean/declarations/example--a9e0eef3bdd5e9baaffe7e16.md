# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd15667550f8f12b8134029ebd51b5fe45510482fde048e58e6debfa61c5e164",
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
  "slug": "example--a9e0eef3bdd5e9baaffe7e16",
  "source": {
    "blob": "9760e3566e069c7d757a5c93d895bcc77d890a06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1729,
    "line": 1721,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variantfd52eb9f4ac280e29337c26b88bf5a3d4c6ba1d7d0ae8298a31af536b3173fd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a9e0eef3bdd5e9baaffe7e16dc8f9682b0a654e876aab7f0e3cb4e2292184476",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variantfd52eb9f4ac280e29337c26b88bf5a3d4c6ba1d7d0ae8298a31af536b3173fd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dd15667550f8f12b8134029ebd51b5fe45510482fde048e58e6debfa61c5e164`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1721–1729.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (A x : ℝ)
    (hA : 1 ≤ A) (hx : 1 ≤ x) :
    differencePrimitiveSamplingKernel A x =
      ∑ l ∈ Icc 1 (⌊Real.exp (2 * A)⌋₊ + 1),
        Real.log (l : ℝ) / Real.sqrt (x * (l : ℝ)) *
          (correlationPrimitive A (Real.log (x * (l : ℝ))) -
            sourceCorrelation explicitSecondDerivative A (Real.log (x * (l : ℝ)))) :=
  RealThetaKernel.differencePrimitiveSamplingKernel_eq_fixed_sum A x hA hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variantfd52eb9f4ac280e29337c26b88bf5a3d4c6ba1d7d0ae8298a31af536b3173fd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variantfd52eb9f4ac280e29337c26b88bf5a3d4c6ba1d7d0ae8298a31af536b3173fd7.lean#L1721).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9760e3566e069c7d757a5c93d895bcc77d890a06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
