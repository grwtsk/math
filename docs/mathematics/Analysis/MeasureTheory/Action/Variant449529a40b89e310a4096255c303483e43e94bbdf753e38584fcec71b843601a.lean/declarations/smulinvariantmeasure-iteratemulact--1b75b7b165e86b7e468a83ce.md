# smulInvariantMeasure_iterateMulAct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5747e3941b04d464062cd1a57324a0db6586715f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 197,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:046dc2eb-f811-803a-51d9-239c82ee8ff1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b8f08d5d-a2e3-d103-afdd-5d6fb53f7dd1",
  "kind": "theorem",
  "lexical_name": "smulInvariantMeasure_iterateMulAct",
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
  "slug": "smulinvariantmeasure-iteratemulact--1b75b7b165e86b7e468a83ce",
  "source": {
    "blob": "5747e3941b04d464062cd1a57324a0db6586715f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 197,
    "path": "GRWTSK/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b75b7b165e86b7e468a83ce7b061b5d732c70eb902406837e66047292cb5a12",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8f08d5d-a2e3-d103-afdd-5d6fb53f7dd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smulInvariantMeasure_iterateMulAct
    {f : α → α} {_ : MeasurableSpace α} {μ : Measure α} (hf : Measurable f) :
    SMulInvariantMeasure (IterateMulAct f) α μ ↔ MeasurePreserving f μ μ :=
  ⟨fun _ ↦
    have := hf.measurableSMul₂_iterateMulAct
    measurePreserving_smul (IterateMulAct.mk (f := f) 1) μ,
    MeasurePreserving.smulInvariantMeasure_iterateMulAct⟩

section SMulHomClass

universe uM uN uα uβ
variable {M : Type uM} {N : Type uN} {α : Type uα} {β : Type uβ}
  [MeasurableSpace α] [MeasurableSpace β]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5747e3941b04d464062cd1a57324a0db6586715f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
