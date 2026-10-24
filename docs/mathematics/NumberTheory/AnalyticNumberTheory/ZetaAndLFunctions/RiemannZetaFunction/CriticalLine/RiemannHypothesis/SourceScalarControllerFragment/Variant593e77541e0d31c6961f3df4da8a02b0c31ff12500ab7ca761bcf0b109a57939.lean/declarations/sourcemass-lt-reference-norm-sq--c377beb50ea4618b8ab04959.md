# sourceMass_lt_reference_norm_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e666280f3f9a9818e6453c260a0ed6efa4b07f5c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/593e77541e0d31c6961f3df4da8a02b0c31ff12500ab7ca761bcf0b109a57939.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a9290774-0f6c-59ec-0416-85fbd27d3998",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2de558b3-7204-b317-d078-752850cd67ed",
  "kind": "theorem",
  "lexical_name": "sourceMass_lt_reference_norm_sq",
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
  "slug": "sourcemass-lt-reference-norm-sq--c377beb50ea4618b8ab04959",
  "source": {
    "blob": "e666280f3f9a9818e6453c260a0ed6efa4b07f5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 75,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScalarControllerFragment/Variant593e77541e0d31c6961f3df4da8a02b0c31ff12500ab7ca761bcf0b109a57939.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c377beb50ea4618b8ab0495911d6ddb6f64196694ebf81afab5e0807bae52281",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScalarControllerFragment/Variant593e77541e0d31c6961f3df4da8a02b0c31ff12500ab7ca761bcf0b109a57939.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2de558b3-7204-b317-d078-752850cd67ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceMass_lt_reference_norm_sq (α : ℝ) (hα : 0 < α) :
    sourceMass α < 1 / 2 := by
  have hd : 0 < 2 * (kernelMass ^ 2 + α) :=
    mul_pos (by norm_num) (add_pos_of_nonneg_of_pos (sq_nonneg _) hα)
  have hp : 0 < kappa ^ 2 / (2 * (kernelMass ^ 2 + α)) :=
    div_pos (sq_pos_of_pos kappa_pos) hd
  linarith [sourceMass_le_scalar_improvement α hα]

end
end SourceScalarControllerScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScalarControllerFragment/Variant593e77541e0d31c6961f3df4da8a02b0c31ff12500ab7ca761bcf0b109a57939.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScalarControllerFragment/Variant593e77541e0d31c6961f3df4da8a02b0c31ff12500ab7ca761bcf0b109a57939.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e666280f3f9a9818e6453c260a0ed6efa4b07f5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
