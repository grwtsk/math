# mem_image_of_mem_range_restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "030b849f5ae8fa0fd97e7c394d025a995dfbfbce",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 799,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d00c13299b8f15aef01683795598b2b20b43d4c3427db2367d208de3ce03fe99.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dff29d38-5810-a38c-6a11-88246a1723f0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a9314fce-e636-2540-091f-b3b02bb14600",
  "kind": "theorem",
  "lexical_name": "mem_image_of_mem_range_restrict",
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
  "slug": "mem-image-of-mem-range-restrict--1e06cb7b2f591874c518878a",
  "source": {
    "blob": "030b849f5ae8fa0fd97e7c394d025a995dfbfbce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 807,
    "line": 799,
    "path": "GRWTSK/Analysis/MeasureTheory/SimpleFunc/Variantd00c13299b8f15aef01683795598b2b20b43d4c3427db2367d208de3ce03fe99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e06cb7b2f591874c518878aaf2e78a82a030efbea77d1afb1f37100eb5f9ab2",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SimpleFunc/Variantd00c13299b8f15aef01683795598b2b20b43d4c3427db2367d208de3ce03fe99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9314fce-e636-2540-091f-b3b02bb14600`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 799–807.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_image_of_mem_range_restrict {r : β} {s : Set α} {f : α →ₛ β}
    (hr : r ∈ (restrict f s).range) (h0 : r ≠ 0) : r ∈ f '' s := by
  classical
  exact if hs : MeasurableSet s then by simpa [mem_restrict_range hs, h0, -mem_range] using hr
  else by
    rw [restrict_of_not_measurable hs] at hr
    exact (h0 <| eq_zero_of_mem_range_zero hr).elim

@[gcongr, mono]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SimpleFunc/Variantd00c13299b8f15aef01683795598b2b20b43d4c3427db2367d208de3ce03fe99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SimpleFunc/Variantd00c13299b8f15aef01683795598b2b20b43d4c3427db2367d208de3ce03fe99.lean#L799).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `030b849f5ae8fa0fd97e7c394d025a995dfbfbce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
