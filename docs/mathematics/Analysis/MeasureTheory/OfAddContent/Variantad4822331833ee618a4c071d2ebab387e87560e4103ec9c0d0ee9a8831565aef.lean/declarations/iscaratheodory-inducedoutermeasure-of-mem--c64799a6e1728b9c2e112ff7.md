# isCaratheodory_inducedOuterMeasure_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5b07fafebcc199d07608b2a0dd6ae43c38f7c124",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 116,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/ad4822331833ee618a4c071d2ebab387e87560e4103ec9c0d0ee9a8831565aef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:84934c50-0865-7c7a-c689-db40796f0d85",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2a0d1701-5dc4-63df-4e4c-dc81de643bb7",
  "kind": "theorem",
  "lexical_name": "isCaratheodory_inducedOuterMeasure_of_mem",
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
  "slug": "iscaratheodory-inducedoutermeasure-of-mem--c64799a6e1728b9c2e112ff7",
  "source": {
    "blob": "5b07fafebcc199d07608b2a0dd6ae43c38f7c124",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 116,
    "path": "GRWTSK/Analysis/MeasureTheory/OfAddContent/Variantad4822331833ee618a4c071d2ebab387e87560e4103ec9c0d0ee9a8831565aef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c64799a6e1728b9c2e112ff723266805f810f4c7534db4ac604f35a1124cb908",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/OfAddContent/Variantad4822331833ee618a4c071d2ebab387e87560e4103ec9c0d0ee9a8831565aef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a0d1701-5dc4-63df-4e4c-dc81de643bb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCaratheodory_inducedOuterMeasure_of_mem (hC : IsSetSemiring C) (m : AddContent C)
    {s : Set α} (hs : s ∈ C) :
    (inducedOuterMeasure (fun x _ ↦ m x) hC.empty_mem addContent_empty).IsCaratheodory s :=
  isCaratheodory_ofFunction_of_mem hC (m.extend hC) (fun _ ↦ m.extend_eq_top hC) hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/OfAddContent/Variantad4822331833ee618a4c071d2ebab387e87560e4103ec9c0d0ee9a8831565aef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/OfAddContent/Variantad4822331833ee618a4c071d2ebab387e87560e4103ec9c0d0ee9a8831565aef.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b07fafebcc199d07608b2a0dd6ae43c38f7c124` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
