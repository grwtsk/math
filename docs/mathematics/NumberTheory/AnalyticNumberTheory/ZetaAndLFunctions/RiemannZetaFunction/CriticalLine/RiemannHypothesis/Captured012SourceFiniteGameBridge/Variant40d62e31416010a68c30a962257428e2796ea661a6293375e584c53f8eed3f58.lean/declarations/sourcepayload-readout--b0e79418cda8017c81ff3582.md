# sourcePayload_readout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9cb0a88-5329-acf3-e44c-7810660d10ae",
  "kind": "theorem",
  "lexical_name": "sourcePayload_readout",
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
  "slug": "sourcepayload-readout--b0e79418cda8017c81ff3582",
  "source": {
    "blob": "07206edb0144f9a251a29f8c4d26e1e6a88d9fd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 247,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Captured012SourceFiniteGameBridge/Variant40d62e31416010a68c30a962257428e2796ea661a6293375e584c53f8eed3f58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0e79418cda8017c81ff358211e4c67eab5f6a22b3289e38061c9b769eb3aeaf",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Captured012SourceFiniteGameBridge/Variant40d62e31416010a68c30a962257428e2796ea661a6293375e584c53f8eed3f58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9cb0a88-5329-acf3-e44c-7810660d10ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourcePayload_readout (A : ℝ) (hA : 1 ≤ A) :
    (∑ v : SourceVertex A, sourceGainObservable A v * sourcePayload A v) =
      -2 * mertensResidual A := by
  rw [mertensResidual_eq_closedPrimeMoment A hA]
  unfold sourceGainObservable sourcePayload SourceVertex
  rw [Finset.sum_coe_sort (primePowerInventory (2 * A))
    (fun n : ℕ => -2 * closedPrimeWeight A n * ArithmeticFunction.vonMangoldt n)]
  unfold closedPrimeMoment
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n _
  unfold closedPrimeWeight
  ring

/-- Exact source-native geometric decoder. A moved payload pays the complete
nonconstant observable flux; arbitrary seam edges are retained in the price.
No periodicity of the logarithmic cutoff coordinate is assumed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Captured012SourceFiniteGameBridge/Variant40d62e31416010a68c30a962257428e2796ea661a6293375e584c53f8eed3f58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Captured012SourceFiniteGameBridge/Variant40d62e31416010a68c30a962257428e2796ea661a6293375e584c53f8eed3f58.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07206edb0144f9a251a29f8c4d26e1e6a88d9fd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
