# sutured_name_path_independent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0ce9d47-3982-a5ff-6db9-f02b25a1e936",
  "kind": "theorem",
  "lexical_name": "sutured_name_path_independent",
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
  "slug": "sutured-name-path-independent--dd164ed94e3f08b0460cd4b5",
  "source": {
    "blob": "f124dd751b4d32557d4b0ed7f7a502c06a5c3fe2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 19,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SuturedNamePathIndependent/Variant05b012d4e11cfa0ab3e27c45358cc69f99d7ef5942c483e65f17608418e70710.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd164ed94e3f08b0460cd4b5d5b6e9d2bc7d8a3c46298583ac56826b9fba38ba",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SuturedNamePathIndependent/Variant05b012d4e11cfa0ab3e27c45358cc69f99d7ef5942c483e65f17608418e70710.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0ce9d47-3982-a5ff-6db9-f02b25a1e936`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sutured_name_path_independent
    (potential : C0) (oraclePath modelPath : EventPath)
    (oracleCertificate : ExactPathCertificate potential oraclePath)
    (modelCertificate : ExactPathCertificate potential modelPath)
    (sameSource : oraclePath.source = modelPath.source)
    (sameTarget : oraclePath.target = modelPath.target) :
    oraclePath.integral = modelPath.integral :=
  parallel_paths_have_equal_integral_of_exact_cochain potential oraclePath modelPath
    oracleCertificate modelCertificate sameSource sameTarget

end Mathematics.Oracle.Naming
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SuturedNamePathIndependent/Variant05b012d4e11cfa0ab3e27c45358cc69f99d7ef5942c483e65f17608418e70710.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SuturedNamePathIndependent/Variant05b012d4e11cfa0ab3e27c45358cc69f99d7ef5942c483e65f17608418e70710.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f124dd751b4d32557d4b0ed7f7a502c06a5c3fe2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
