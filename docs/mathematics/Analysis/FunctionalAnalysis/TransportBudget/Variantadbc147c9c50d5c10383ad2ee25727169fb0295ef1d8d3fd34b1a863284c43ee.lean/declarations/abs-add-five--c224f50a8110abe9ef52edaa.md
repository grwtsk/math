# abs_add_five

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fe5e837989c6c07d1303c2cf20f64ac3f26ea005",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/adbc147c9c50d5c10383ad2ee25727169fb0295ef1d8d3fd34b1a863284c43ee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:91d2284b-7ad9-eca7-2f6d-3e2f7bbf7bd6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:339bfc3f-1693-83b1-8a03-b8fa5c70c24f",
  "kind": "theorem",
  "lexical_name": "abs_add_five",
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
  "slug": "abs-add-five--c224f50a8110abe9ef52edaa",
  "source": {
    "blob": "fe5e837989c6c07d1303c2cf20f64ac3f26ea005",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 85,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/TransportBudget/Variantadbc147c9c50d5c10383ad2ee25727169fb0295ef1d8d3fd34b1a863284c43ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c224f50a8110abe9ef52edaa036ec31db32f64304ac87ebcf2b468fbd8d3be38",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/TransportBudget/Variantadbc147c9c50d5c10383ad2ee25727169fb0295ef1d8d3fd34b1a863284c43ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:339bfc3f-1693-83b1-8a03-b8fa5c70c24f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_add_five
    (first second third fourth fifth : ℝ) :
    abs (first + second + third + fourth + fifth) ≤
      abs first + abs second + abs third +
        abs fourth + abs fifth := by
  have firstTwo :=
    abs_add_le first second
  have firstThree :=
    abs_add_le (first + second) third
  have firstFour :=
    abs_add_le
      (first + second + third) fourth
  have firstFive :=
    abs_add_le
      (first + second + third + fourth)
      fifth
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/TransportBudget/Variantadbc147c9c50d5c10383ad2ee25727169fb0295ef1d8d3fd34b1a863284c43ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/TransportBudget/Variantadbc147c9c50d5c10383ad2ee25727169fb0295ef1d8d3fd34b1a863284c43ee.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe5e837989c6c07d1303c2cf20f64ac3f26ea005` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
