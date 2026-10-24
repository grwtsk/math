# bridgeProjection_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "53cabc24d62dac43363592d28460909fd5da9052",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 352,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cf77c4b1-8320-ccf6-47ab-c5c6eb39baf4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fd4f9e6c-f63c-5aee-28cf-68b108d9436b",
  "kind": "theorem",
  "lexical_name": "bridgeProjection_apply",
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
  "slug": "bridgeprojection-apply--7fa5879e0e79fea092e4d302",
  "source": {
    "blob": "53cabc24d62dac43363592d28460909fd5da9052",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 362,
    "line": 352,
    "path": "GRWTSK/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7fa5879e0e79fea092e4d30290ae5299f8e0558ce21c7c89a4ca8320d2ba3bd4",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd4f9e6c-f63c-5aee-28cf-68b108d9436b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bridgeProjection_apply
    {E : Type*} [MeasurableSpace E] [NormedAddCommGroup E] [NormedSpace ℝ E]
    [CompleteSpace E]
    (kernel : DyadicConvolutionKernel) (j : ℤ)
    (bridge : Surface.Core.PrimeWalkMeasureBridge.MeasureBridgeData E) (x : ℝ) :
    bridgeProjection kernel j bridge x =
      ∫ y, scaledKernel kernel j y • bridge.trajectory (x - y) :=
  bochnerProjection_apply kernel j bridge.trajectory x

/-- Finite square function of a measure bridge's trajectory. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53cabc24d62dac43363592d28460909fd5da9052` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
