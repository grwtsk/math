# reindex_gammaProduct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:03eb1cfa-deaf-dfe6-8ae9-f268a2a0f217",
  "kind": "theorem",
  "lexical_name": "reindex_gammaProduct",
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
  "slug": "reindex-gammaproduct--e678d98a35249246ba982199",
  "source": {
    "blob": "b67fae1e6208321263327e98cc2557b0dbac98ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 256,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e678d98a35249246ba98219929f06707ace3678cfeb8fd429a3ceed04efddc28",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03eb1cfa-deaf-dfe6-8ae9-f268a2a0f217`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reindex_gammaProduct [Fintype J] (equivalence : I ≃ J)
    (parameters : Parameters I) :
    (parameters.reindex equivalence).gammaProduct = parameters.gammaProduct := by
  unfold DirichletParameters.gammaProduct
  change (∏ j, Real.Gamma (parameters.shape (equivalence.symm j))) = _
  exact Equiv.prod_comp equivalence.symm
      (fun i : I => Real.Gamma (parameters.shape i))

/-- Convert shape--scale parameters to Mathlib's shape--rate convention. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b67fae1e6208321263327e98cc2557b0dbac98ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
