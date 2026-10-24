# sInf_image_Icc_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "751d9bfb7d451295a7ab83b6cab831fd64b8c643",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 565,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e3/e3fa1b7f89baab32e22001c7b906b15acab584a44424a7ba95f540bdc7de347c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:540d26a0-f6c9-952b-100a-3b33fe6e40c8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:acb2398d-7c65-771f-aaed-67b33ee03f55",
  "kind": "theorem",
  "lexical_name": "sInf_image_Icc_le",
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
  "slug": "sinf-image-icc-le--53e9d3679f960dcec9e3c91a",
  "source": {
    "blob": "751d9bfb7d451295a7ab83b6cab831fd64b8c643",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 571,
    "line": 565,
    "path": "GRWTSK/Topology/GeneralTopology/Compact/Variante3fa1b7f89baab32e22001c7b906b15acab584a44424a7ba95f540bdc7de347c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53e9d3679f960dcec9e3c91a1c6432c332b607a53125503f86a270fe92d77335",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compact/Variante3fa1b7f89baab32e22001c7b906b15acab584a44424a7ba95f540bdc7de347c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acb2398d-7c65-771f-aaed-67b33ee03f55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 565–571.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sInf_image_Icc_le (h : ContinuousOn f <| Icc a b) (hc : c ∈ Icc a b) :
    sInf (f '' Icc a b) ≤ f c := by
  have := mem_image_of_mem f hc
  rw [h.image_Icc (hc.1.trans hc.2)] at this
  exact this.1
#align continuous_on.Inf_image_Icc_le ContinuousOn.sInf_image_Icc_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compact/Variante3fa1b7f89baab32e22001c7b906b15acab584a44424a7ba95f540bdc7de347c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compact/Variante3fa1b7f89baab32e22001c7b906b15acab584a44424a7ba95f540bdc7de347c.lean#L565).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `751d9bfb7d451295a7ab83b6cab831fd64b8c643` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
