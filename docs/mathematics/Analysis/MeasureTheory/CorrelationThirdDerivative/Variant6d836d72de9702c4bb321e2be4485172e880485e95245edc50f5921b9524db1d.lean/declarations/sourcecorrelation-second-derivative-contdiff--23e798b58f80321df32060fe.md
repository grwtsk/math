# sourceCorrelation_second_derivative_contDiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8365a39d284800474460ecaf8ef2831423255ce0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 106,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6d836d72de9702c4bb321e2be4485172e880485e95245edc50f5921b9524db1d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:65fa8181-7f3e-e2bf-b949-5c660d6a937d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:719a10e1-7fc4-26d0-53ce-16501ac7c655",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_second_derivative_contDiff",
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
  "slug": "sourcecorrelation-second-derivative-contdiff--23e798b58f80321df32060fe",
  "source": {
    "blob": "8365a39d284800474460ecaf8ef2831423255ce0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 106,
    "path": "GRWTSK/Analysis/MeasureTheory/CorrelationThirdDerivative/Variant6d836d72de9702c4bb321e2be4485172e880485e95245edc50f5921b9524db1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23e798b58f80321df32060fea586802284eabf581f8260ebbf856290a70ced25",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CorrelationThirdDerivative/Variant6d836d72de9702c4bb321e2be4485172e880485e95245edc50f5921b9524db1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:719a10e1-7fc4-26d0-53ce-16501ac7c655`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_second_derivative_contDiff (A : ℝ) (hA : 1 ≤ A) :
    ContDiff ℝ 1 (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) := by
  apply contDiff_one_iff_deriv.mpr
  exact ⟨fun t ↦ (sourceCorrelation_third_derivative_integral A t hA).2.differentiableAt,
    sourceCorrelation_third_derivative_continuous A hA⟩


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CorrelationThirdDerivative/Variant6d836d72de9702c4bb321e2be4485172e880485e95245edc50f5921b9524db1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CorrelationThirdDerivative/Variant6d836d72de9702c4bb321e2be4485172e880485e95245edc50f5921b9524db1d.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8365a39d284800474460ecaf8ef2831423255ce0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
