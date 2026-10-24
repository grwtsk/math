# complexPrimitiveDerivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:804950d30850c0516fcf95a3e746e66964de2bfa0ebb98f6d9a7dd621aa82914",
  "kind": "def",
  "lexical_name": "complexPrimitiveDerivative",
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
  "slug": "complexprimitivederivative--73cb60b7eda552baf350f31f",
  "source": {
    "blob": "2c66250db9036f65d93fbb3e609e9401b2228c50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 45,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexLaplacePrimitive/Variant059986f543c4da494b9a2a0de7f158b19978ec17bef4d1dd4692113a7ece9dcd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:73cb60b7eda552baf350f31fe310f1883d989484fc291f720d756033c8a7b86f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexLaplacePrimitive/Variant059986f543c4da494b9a2a0de7f158b19978ec17bef4d1dd4692113a7ece9dcd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:804950d30850c0516fcf95a3e746e66964de2bfa0ebb98f6d9a7dd621aa82914`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def complexPrimitiveDerivative (A : ℝ) (z : ℂ) (x : ℝ) : ℂ :=
    ((8 / ((A : ℂ) ^ 2 * z ^ 2)) + (-144 / ((A : ℂ) ^ 4 * z ^ 4)) + (2880 / ((A : ℂ) ^ 6 * z ^
      6)) + (-40320 / ((A : ℂ) ^ 8 * z ^ 8))) * 1 * (x : ℂ) ^ 0 +
    ((-4 / ((A : ℂ) ^ 2 * z ^ 1)) + (72 / ((A : ℂ) ^ 4 * z ^ 3)) + (-1440 / ((A : ℂ) ^ 6 * z ^
      5)) + (20160 / ((A : ℂ) ^ 8 * z ^ 7))) * 2 * (x : ℂ) ^ 1 +
    ((-24 / ((A : ℂ) ^ 4 * z ^ 2)) + (480 / ((A : ℂ) ^ 6 * z ^ 4)) + (-6720 / ((A : ℂ) ^ 8 * z ^
      6))) * 3 * (x : ℂ) ^ 2 +
    ((6 / ((A : ℂ) ^ 4 * z ^ 1)) + (-120 / ((A : ℂ) ^ 6 * z ^ 3)) + (1680 / ((A : ℂ) ^ 8 * z ^
      5))) * 4 * (x : ℂ) ^ 3 +
    ((24 / ((A : ℂ) ^ 6 * z ^ 2)) + (-336 / ((A : ℂ) ^ 8 * z ^ 4))) * 5 * (x : ℂ) ^ 4 +
    ((-4 / ((A : ℂ) ^ 6 * z ^ 1)) + (56 / ((A : ℂ) ^ 8 * z ^ 3))) * 6 * (x : ℂ) ^ 5 +
    ((-8 / ((A : ℂ) ^ 8 * z ^ 2))) * 7 * (x : ℂ) ^ 6 +
    ((1 / ((A : ℂ) ^ 8 * z ^ 1))) * 8 * (x : ℂ) ^ 7

/-- The complex endpoint correction in this module, with the following exact parameterization.

def complexEndpointCorrection (A : ℝ) (z : ℂ) : ℂ := (1 - 10 / ((A : ℂ) * z) + 45 / ((A : ℂ) *
z) ^ 2 - 105 / ((A : ℂ) * z) ^ 3 + 105 / ((A : ℂ) * z) ^ 4) - Complex.exp (-2 * (A : ℂ) * z) *
(1 + 10 / ((A : ℂ) * z) + 45 / ((A : ℂ) * z) ^ 2 + 105 / ((A : ℂ) * z) ^ 3 + 105 / ((A : ℂ) *
z) ^ 4)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexLaplacePrimitive/Variant059986f543c4da494b9a2a0de7f158b19978ec17bef4d1dd4692113a7ece9dcd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexLaplacePrimitive/Variant059986f543c4da494b9a2a0de7f158b19978ec17bef4d1dd4692113a7ece9dcd.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c66250db9036f65d93fbb3e609e9401b2228c50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
