# DenseRange.comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "620526f00d25f19d30d07ba5cad2b7a3370ba6bb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 309,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/14b6c26b5d22be63134a1bed41bcd9ae7720b1b3fc1c0798a42d71e33feb615c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:60cc2c89-57dc-7a80-bfa3-65244ee8931d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d7d49bb-6496-ab62-61d7-f220b9dc25ba",
  "kind": "theorem",
  "lexical_name": "DenseRange.comp",
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
  "slug": "denserange-comp--8328ee166dacac9278030498",
  "source": {
    "blob": "620526f00d25f19d30d07ba5cad2b7a3370ba6bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 309,
    "path": "GRWTSK/Topology/GeneralTopology/Continuous/Variant14b6c26b5d22be63134a1bed41bcd9ae7720b1b3fc1c0798a42d71e33feb615c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8328ee166dacac9278030498f33ac041aae25a003d4e62ed5c03f0ecb008c19f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuous/Variant14b6c26b5d22be63134a1bed41bcd9ae7720b1b3fc1c0798a42d71e33feb615c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d7d49bb-6496-ab62-61d7-f220b9dc25ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem DenseRange.comp {g : Y → Z} {f : α → Y} (hg : DenseRange g) (hf : DenseRange f)
    (cg : Continuous g) : DenseRange (g ∘ f) := by
  rw [DenseRange, range_comp]
  exact hg.dense_image cg hf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuous/Variant14b6c26b5d22be63134a1bed41bcd9ae7720b1b3fc1c0798a42d71e33feb615c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuous/Variant14b6c26b5d22be63134a1bed41bcd9ae7720b1b3fc1c0798a42d71e33feb615c.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `620526f00d25f19d30d07ba5cad2b7a3370ba6bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
