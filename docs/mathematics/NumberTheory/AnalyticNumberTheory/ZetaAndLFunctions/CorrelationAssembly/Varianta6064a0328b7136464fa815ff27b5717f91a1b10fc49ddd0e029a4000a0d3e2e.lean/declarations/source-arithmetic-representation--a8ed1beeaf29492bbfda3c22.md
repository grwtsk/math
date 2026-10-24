# source_arithmetic_representation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "859c764ee9c747034f7e621bfad60ef017194fa2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 20,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a6064a0328b7136464fa815ff27b5717f91a1b10fc49ddd0e029a4000a0d3e2e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:71feff19-5c9e-dca4-ce2b-ac921523d0ea",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c6d8afda-9836-b75f-ad22-2d8b35951dc0",
  "kind": "theorem",
  "lexical_name": "source_arithmetic_representation",
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
  "slug": "source-arithmetic-representation--a8ed1beeaf29492bbfda3c22",
  "source": {
    "blob": "859c764ee9c747034f7e621bfad60ef017194fa2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 20,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/CorrelationAssembly/Varianta6064a0328b7136464fa815ff27b5717f91a1b10fc49ddd0e029a4000a0d3e2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8ed1beeaf29492bbfda3c224e22bf775bb4a4da5133dfdcd1361be5b85dcb7f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/CorrelationAssembly/Varianta6064a0328b7136464fa815ff27b5717f91a1b10fc49ddd0e029a4000a0d3e2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6d8afda-9836-b75f-ad22-2d8b35951dc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_arithmetic_representation (A : ℝ) (hA : 1 ≤ A) :
    sourceQuadraticValue explicitSecondDerivative A =
      analyticCorrection explicitSecondDerivative A +
        2 * signedPairing explicitSecondDerivative A := by
  obtain ⟨hC, hzero⟩ := CorrelationRegularity.correlation_certificate A hA
  exact PrimePowerDescent.source_arithmetic_representation_of_correlation_conditions
    explicitSecondDerivative A hA hC hzero (CorrelationMoment.pole_correlation_certificate A hA)

/-- Exact all-scale lower bound on the actual arithmetic family, not on a surrogate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/CorrelationAssembly/Varianta6064a0328b7136464fa815ff27b5717f91a1b10fc49ddd0e029a4000a0d3e2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/CorrelationAssembly/Varianta6064a0328b7136464fa815ff27b5717f91a1b10fc49ddd0e029a4000a0d3e2e.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `859c764ee9c747034f7e621bfad60ef017194fa2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
