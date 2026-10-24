# aemeasurable_of_integrable_exp_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "568175606bd7c31c5eefd4bc86669be779ef9df0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 135,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/44933eb8a118ad4bd8cdc110992d06f09d6e5619ae37ad7c9889e20813baf8c3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:12420c53-c07a-fbc7-3183-8b2ed91ad563",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c667bd3c-c837-97dc-59d2-d65fa07fce60",
  "kind": "lemma",
  "lexical_name": "aemeasurable_of_integrable_exp_mul",
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
  "slug": "aemeasurable-of-integrable-exp-mul--47041749fd7f85a482847260",
  "source": {
    "blob": "568175606bd7c31c5eefd4bc86669be779ef9df0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 135,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegrableExpMul/Variant44933eb8a118ad4bd8cdc110992d06f09d6e5619ae37ad7c9889e20813baf8c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47041749fd7f85a4828472609710640e87319b1668a2e628a548340819f656f0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegrableExpMul/Variant44933eb8a118ad4bd8cdc110992d06f09d6e5619ae37ad7c9889e20813baf8c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c667bd3c-c837-97dc-59d2-d65fa07fce60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma aemeasurable_of_integrable_exp_mul (huv : u ≠ v)
    (hu_int : Integrable (fun ω ↦ exp (u * X ω)) μ)
    (hv_int : Integrable (fun ω ↦ exp (v * X ω)) μ) :
    AEMeasurable X μ := by
  by_cases hu : u = 0
  · have hv : v ≠ 0 := ne_of_ne_of_eq huv.symm hu
    exact aemeasurable_of_aemeasurable_exp_mul hv hv_int.aemeasurable
  · exact aemeasurable_of_aemeasurable_exp_mul hu hu_int.aemeasurable

/-- If `exp ((v + t) * X)` and `exp ((v - t) * X)` are integrable, then
`ω ↦ exp (t * |X| + v * X)` is integrable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegrableExpMul/Variant44933eb8a118ad4bd8cdc110992d06f09d6e5619ae37ad7c9889e20813baf8c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegrableExpMul/Variant44933eb8a118ad4bd8cdc110992d06f09d6e5619ae37ad7c9889e20813baf8c3.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `568175606bd7c31c5eefd4bc86669be779ef9df0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
