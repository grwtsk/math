# continuous_setToFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1b7c05bdb9d0e7092b58d232427abb73b2122a2f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1508,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e0685a42f0f79cc4c5b8796b54e1a2e8a23058924b5a353dec2fd17c21f82b9c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5deff4fd-c221-e5a5-42bc-a7a192625909",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1e2c13d1-207f-850c-ca8f-44d54daadd50",
  "kind": "theorem",
  "lexical_name": "continuous_setToFun",
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
  "slug": "continuous-settofun--9ac2c5bae6c1669efa6f1bc3",
  "source": {
    "blob": "1b7c05bdb9d0e7092b58d232427abb73b2122a2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1513,
    "line": 1508,
    "path": "GRWTSK/Analysis/MeasureTheory/SetToL1/Variante0685a42f0f79cc4c5b8796b54e1a2e8a23058924b5a353dec2fd17c21f82b9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ac2c5bae6c1669efa6f1bc346c0f734ea9dcb22c9b5ef5daaadef6d249fe607",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SetToL1/Variante0685a42f0f79cc4c5b8796b54e1a2e8a23058924b5a353dec2fd17c21f82b9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e2c13d1-207f-850c-ca8f-44d54daadd50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1508–1513.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_setToFun (hT : DominatedFinMeasAdditive μ T C) :
    Continuous fun f : α →₁[μ] E => setToFun μ T hT f := by
  simp_rw [L1.setToFun_eq_setToL1 hT]; exact ContinuousLinearMap.continuous _
#align measure_theory.continuous_set_to_fun MeasureTheory.continuous_setToFun

/-- If `F i → f` in `L1`, then `setToFun μ T hT (F i) → setToFun μ T hT f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SetToL1/Variante0685a42f0f79cc4c5b8796b54e1a2e8a23058924b5a353dec2fd17c21f82b9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SetToL1/Variante0685a42f0f79cc4c5b8796b54e1a2e8a23058924b5a353dec2fd17c21f82b9c.lean#L1508).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b7c05bdb9d0e7092b58d232427abb73b2122a2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
