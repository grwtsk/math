# example_trace_formula_comparison_authorized

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1cfbc3a1fe59a0b93203b5b2d010c7046486b371",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 247,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9fa960d13b5559050732fd05c0e0d1b1ef8f658bf9ad97453bb464df28500e79.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e167d137-d087-2074-37c6-903d3fcaa5a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:96378707-fb79-356e-3648-4e26fb28243b",
  "kind": "theorem",
  "lexical_name": "example_trace_formula_comparison_authorized",
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
  "slug": "example-trace-formula-comparison-authorized--5c305a62c3b7577c4863a275",
  "source": {
    "blob": "1cfbc3a1fe59a0b93203b5b2d010c7046486b371",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 247,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutomorphicEulerProductExamples/Variant9fa960d13b5559050732fd05c0e0d1b1ef8f658bf9ad97453bb464df28500e79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c305a62c3b7577c4863a275e71eeb526689ba456946d0ac5b1d4c19782cb158",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutomorphicEulerProductExamples/Variant9fa960d13b5559050732fd05c0e0d1b1ef8f658bf9ad97453bb464df28500e79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96378707-fb79-356e-3648-4e26fb28243b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem example_trace_formula_comparison_authorized :
    exampleTraceFormulaComparisonAuthority.convergenceSound ∧
      exampleTraceFormulaComparisonAuthority.geometricSideSound ∧
      exampleTraceFormulaComparisonAuthority.spectralSideSound ∧
      exampleTraceFormulaComparisonAuthority.comparisonSound :=
  AutomorphicEulerProduct.trace_formula_comparison_authorized
    exampleTraceFormulaComparisonAuthority

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutomorphicEulerProductExamples/Variant9fa960d13b5559050732fd05c0e0d1b1ef8f658bf9ad97453bb464df28500e79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutomorphicEulerProductExamples/Variant9fa960d13b5559050732fd05c0e0d1b1ef8f658bf9ad97453bb464df28500e79.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1cfbc3a1fe59a0b93203b5b2d010c7046486b371` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
