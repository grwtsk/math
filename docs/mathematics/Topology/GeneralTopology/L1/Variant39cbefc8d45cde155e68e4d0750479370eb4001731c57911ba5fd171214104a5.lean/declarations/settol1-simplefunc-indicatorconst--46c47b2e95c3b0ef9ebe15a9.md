# setToL1_simpleFunc_indicatorConst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6737365f00c2bbc8ea34c1e2adffe858445ca4f4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/39cbefc8d45cde155e68e4d0750479370eb4001731c57911ba5fd171214104a5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6943f6f8-e3df-2b86-4cb4-c28954184659",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:79892c54-11a6-3b76-75cb-d8a25b62ca26",
  "kind": "theorem",
  "lexical_name": "setToL1_simpleFunc_indicatorConst",
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
  "slug": "settol1-simplefunc-indicatorconst--46c47b2e95c3b0ef9ebe15a9",
  "source": {
    "blob": "6737365f00c2bbc8ea34c1e2adffe858445ca4f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 160,
    "path": "GRWTSK/Topology/GeneralTopology/L1/Variant39cbefc8d45cde155e68e4d0750479370eb4001731c57911ba5fd171214104a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46c47b2e95c3b0ef9ebe15a99fec8d0b226eb632f6b89fbe3212bb86c0b00fbb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/L1/Variant39cbefc8d45cde155e68e4d0750479370eb4001731c57911ba5fd171214104a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79892c54-11a6-3b76-75cb-d8a25b62ca26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setToL1_simpleFunc_indicatorConst (hT : DominatedFinMeasAdditive μ T C) {s : Set α}
    (hs : MeasurableSet s) (hμs : μ s < ∞) (x : E) :
    setToL1 hT (simpleFunc.indicatorConst 1 hs hμs.ne x) = T s x := by
  rw [setToL1_eq_setToL1SCLM]
  exact setToL1S_indicatorConst (fun s => hT.eq_zero_of_measure_zero) hT.1 hs hμs x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/L1/Variant39cbefc8d45cde155e68e4d0750479370eb4001731c57911ba5fd171214104a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/L1/Variant39cbefc8d45cde155e68e4d0750479370eb4001731c57911ba5fd171214104a5.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6737365f00c2bbc8ea34c1e2adffe858445ca4f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
