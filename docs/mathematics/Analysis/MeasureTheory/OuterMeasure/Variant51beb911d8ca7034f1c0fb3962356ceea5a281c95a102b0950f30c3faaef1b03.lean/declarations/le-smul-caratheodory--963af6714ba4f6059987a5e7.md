# le_smul_caratheodory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5d4a28d23c5879ca084d28518f2c57fd5c259673",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1112,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/51/51beb911d8ca7034f1c0fb3962356ceea5a281c95a102b0950f30c3faaef1b03.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fb8cb27e-5c48-5e02-9f42-9d7ce1a1dac4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2cbbb465-cf0f-2f15-17f8-fec07ad7af19",
  "kind": "theorem",
  "lexical_name": "le_smul_caratheodory",
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
  "slug": "le-smul-caratheodory--963af6714ba4f6059987a5e7",
  "source": {
    "blob": "5d4a28d23c5879ca084d28518f2c57fd5c259673",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1119,
    "line": 1112,
    "path": "GRWTSK/Analysis/MeasureTheory/OuterMeasure/Variant51beb911d8ca7034f1c0fb3962356ceea5a281c95a102b0950f30c3faaef1b03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:963af6714ba4f6059987a5e7db17a4d6d9fb0e5a183e58eed085f1c09896b29c",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/OuterMeasure/Variant51beb911d8ca7034f1c0fb3962356ceea5a281c95a102b0950f30c3faaef1b03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2cbbb465-cf0f-2f15-17f8-fec07ad7af19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1112–1119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_smul_caratheodory (a : ℝ≥0∞) (m : OuterMeasure α) :
    m.caratheodory ≤ (a • m).caratheodory := fun s h t => by
      simp [smul_apply]
      rw [(isCaratheodory_iff m).mp h t]
      simp [mul_add]
#align measure_theory.outer_measure.le_smul_caratheodory MeasureTheory.OuterMeasure.le_smul_caratheodory

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/OuterMeasure/Variant51beb911d8ca7034f1c0fb3962356ceea5a281c95a102b0950f30c3faaef1b03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/OuterMeasure/Variant51beb911d8ca7034f1c0fb3962356ceea5a281c95a102b0950f30c3faaef1b03.lean#L1112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d4a28d23c5879ca084d28518f2c57fd5c259673` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
