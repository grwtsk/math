# stableCubicModelDensity_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a51c0909-f270-63d6-a641-8a0db51a166d",
  "kind": "theorem",
  "lexical_name": "stableCubicModelDensity_eq",
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
  "slug": "stablecubicmodeldensity-eq--96a909a721005e15b4cdfa40",
  "source": {
    "blob": "42c6adbe548ff31d99a8c0096dfca09f63bd43cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 158,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/D9f8a177cc1499b1838dActualStablePeanoCubic/Variant335f1c88176c3b02aaa151daa679bd554556f8f4056b357bef85857982a3d1ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96a909a721005e15b4cdfa4009f62d58140d45379a155d3732751b84a1484028",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/D9f8a177cc1499b1838dActualStablePeanoCubic/Variant335f1c88176c3b02aaa151daa679bd554556f8f4056b357bef85857982a3d1ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a51c0909-f270-63d6-a641-8a0db51a166d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem stableCubicModelDensity_eq (A t s : ℝ) :
    stableCubicModelDensity A t s =
      sourceCorrelation explicitSecondDerivative A t * (s ^ 1 * Real.exp (-s / 2)) -
      deriv (sourceCorrelation explicitSecondDerivative A) t * (s ^ 2 * Real.exp (-s / 2)) +
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t / 2 *
        (s ^ 3 * Real.exp (-s / 2)) -
      deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t / 6 *
        (s ^ 4 * Real.exp (-s / 2)) := by
  unfold stableCubicModelDensity cubicCorrelationJet
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/D9f8a177cc1499b1838dActualStablePeanoCubic/Variant335f1c88176c3b02aaa151daa679bd554556f8f4056b357bef85857982a3d1ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/D9f8a177cc1499b1838dActualStablePeanoCubic/Variant335f1c88176c3b02aaa151daa679bd554556f8f4056b357bef85857982a3d1ce.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42c6adbe548ff31d99a8c0096dfca09f63bd43cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
