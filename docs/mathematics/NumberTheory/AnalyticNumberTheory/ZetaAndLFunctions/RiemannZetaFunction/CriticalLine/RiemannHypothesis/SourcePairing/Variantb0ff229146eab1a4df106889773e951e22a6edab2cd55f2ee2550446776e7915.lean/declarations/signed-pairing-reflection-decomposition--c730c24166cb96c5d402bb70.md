# signed_pairing_reflection_decomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c5301ae6-24f0-4e1b-821b-705c18a0d4d4",
  "kind": "theorem",
  "lexical_name": "signed_pairing_reflection_decomposition",
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
  "slug": "signed-pairing-reflection-decomposition--c730c24166cb96c5d402bb70",
  "source": {
    "blob": "5182ac087f0d9ba49f57ca21141ef5a94f8f9027",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 259,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePairing/Variantb0ff229146eab1a4df106889773e951e22a6edab2cd55f2ee2550446776e7915.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c730c24166cb96c5d402bb708e13e3a060888536de56196979c4ec2a93d7e5ee",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePairing/Variantb0ff229146eab1a4df106889773e951e22a6edab2cd55f2ee2550446776e7915.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5301ae6-24f0-4e1b-821b-705c18a0d4d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signed_pairing_reflection_decomposition (r : DilationRealization) (A : Set.Ici (1 : ℝ))
    (hpp : IntervalIntegrable (fun t ↦
      evenPart lowerEndpoint (2 * A) errorProfile t *
      evenPart lowerEndpoint (2 * A) (sourceWeight r.secondDerivative A) t)
      volume lowerEndpoint (2 * A))
    (hpm : IntervalIntegrable (fun t ↦
      evenPart lowerEndpoint (2 * A) errorProfile t *
      oddPart lowerEndpoint (2 * A) (sourceWeight r.secondDerivative A) t)
      volume lowerEndpoint (2 * A))
    (hmp : IntervalIntegrable (fun t ↦
      oddPart lowerEndpoint (2 * A) errorProfile t *
      evenPart lowerEndpoint (2 * A) (sourceWeight r.secondDerivative A) t)
      volume lowerEndpoint (2 * A))
    (hmm : IntervalIntegrable (fun t ↦
      oddPart lowerEndpoint (2 * A) errorProfile t *
      oddPart lowerEndpoint (2 * A) (sourceWeight r.secondDerivative A) t)
      volume lowerEndpoint (2 * A)) :
    signedPairing r.secondDerivative A =
      (∫ t in lowerEndpoint..2 * A,
        evenPart lowerEndpoint (2 * A) errorProfile t *
        evenPart lowerEndpoint (2 * A) (sourceWeight r.secondDerivative A) t) +
      (∫ t in lowerEndpoint..2 * A,
        oddPart lowerEndpoint (2 * A) errorProfile t *
        oddPart lowerEndpoint (2 * A) (sourceWeight r.secondDerivative A) t) :=
  integral_product_eq_even_add_odd lowerEndpoint (2 * A)
    errorProfile (sourceWeight r.secondDerivative A) hpp hpm hmp hmm

end

end FormalResearch.RiemannHypothesis.SourcePairing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePairing/Variantb0ff229146eab1a4df106889773e951e22a6edab2cd55f2ee2550446776e7915.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePairing/Variantb0ff229146eab1a4df106889773e951e22a6edab2cd55f2ee2550446776e7915.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5182ac087f0d9ba49f57ca21141ef5a94f8f9027` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
