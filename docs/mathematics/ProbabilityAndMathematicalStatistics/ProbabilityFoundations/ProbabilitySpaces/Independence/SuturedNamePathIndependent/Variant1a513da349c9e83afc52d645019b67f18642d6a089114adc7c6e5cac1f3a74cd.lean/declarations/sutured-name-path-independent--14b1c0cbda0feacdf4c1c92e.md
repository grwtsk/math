# sutured_name_path_independent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4c93e0a49c75fcc9859424cbdb722b51a35b177e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 11,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1a513da349c9e83afc52d645019b67f18642d6a089114adc7c6e5cac1f3a74cd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:18f6932a-f718-6620-09d1-6258fb9a3793",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e869ccfb-9206-f11e-ebfc-6757fc91bb67",
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
  "slug": "sutured-name-path-independent--14b1c0cbda0feacdf4c1c92e",
  "source": {
    "blob": "4c93e0a49c75fcc9859424cbdb722b51a35b177e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 21,
    "line": 11,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SuturedNamePathIndependent/Variant1a513da349c9e83afc52d645019b67f18642d6a089114adc7c6e5cac1f3a74cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14b1c0cbda0feacdf4c1c92eb4fb79ec118bb12828c668ea6184d5197b818198",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SuturedNamePathIndependent/Variant1a513da349c9e83afc52d645019b67f18642d6a089114adc7c6e5cac1f3a74cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e869ccfb-9206-f11e-ebfc-6757fc91bb67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 11–21.

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

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SuturedNamePathIndependent/Variant1a513da349c9e83afc52d645019b67f18642d6a089114adc7c6e5cac1f3a74cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SuturedNamePathIndependent/Variant1a513da349c9e83afc52d645019b67f18642d6a089114adc7c6e5cac1f3a74cd.lean#L11).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c93e0a49c75fcc9859424cbdb722b51a35b177e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
