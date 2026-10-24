# AEMeasurable.sqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8b967764edb4643c0031eba20633f71a3a5358f3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 200,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/ef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:017f0a91-338d-7836-3846-c6d0888cb6b1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0f35a99e-df82-5ae4-c7c9-0f3da44b6068",
  "kind": "lemma",
  "lexical_name": "AEMeasurable.sqrt",
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
  "slug": "aemeasurable-sqrt--3b71b7eba8767859bdf15156",
  "source": {
    "blob": "8b967764edb4643c0031eba20633f71a3a5358f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 200,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b71b7eba8767859bdf15156379af29ea91f16bcbcfb6f0677d6f6b4f998e937",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f35a99e-df82-5ae4-c7c9-0f3da44b6068`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma AEMeasurable.sqrt : AEMeasurable (fun x ↦ √(f x)) μ :=
  continuous_sqrt.measurable.comp_aemeasurable hf

end RealComposition

section ComplexComposition

open Complex

variable {α : Type*} {m : MeasurableSpace α} {f : α → ℂ} (hf : Measurable f)
include hf

@[measurability, fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b967764edb4643c0031eba20633f71a3a5358f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
