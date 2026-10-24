# disjoint_splitCenterBox

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f2b752de2f22691366552bed165fcc0f7939602e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/684e1b62c0e3fb4a8e4bbc846b33b92e98c939494afd99d9a3a988ad1ae9a22b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b046b41b-a9bc-44e9-740e-319507f59264",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d3431009-01d5-66cd-33a2-2db2000758f0",
  "kind": "theorem",
  "lexical_name": "disjoint_splitCenterBox",
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
  "slug": "disjoint-splitcenterbox--606bb2154b48c559d88fe202",
  "source": {
    "blob": "f2b752de2f22691366552bed165fcc0f7939602e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 69,
    "path": "GRWTSK/Analysis/SubboxInduction/Variant684e1b62c0e3fb4a8e4bbc846b33b92e98c939494afd99d9a3a988ad1ae9a22b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:606bb2154b48c559d88fe202dbb3b321d6afb0bc4e02f8aef8c5c273a3731c73",
  "verification": {
    "reference": "docs/verification/Analysis/SubboxInduction/Variant684e1b62c0e3fb4a8e4bbc846b33b92e98c939494afd99d9a3a988ad1ae9a22b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3431009-01d5-66cd-33a2-2db2000758f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem disjoint_splitCenterBox (I : Box ι) {s t : Set ι} (h : s ≠ t) :
    Disjoint (I.splitCenterBox s : Set (ι → ℝ)) (I.splitCenterBox t) := by
  rw [disjoint_iff_inf_le]
  rintro y ⟨hs, ht⟩; apply h
  ext i
  rw [mem_coe, mem_splitCenterBox] at hs ht
  rw [← hs.2, ← ht.2]
#align box_integral.box.disjoint_split_center_box BoxIntegral.Box.disjoint_splitCenterBox

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/SubboxInduction/Variant684e1b62c0e3fb4a8e4bbc846b33b92e98c939494afd99d9a3a988ad1ae9a22b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SubboxInduction/Variant684e1b62c0e3fb4a8e4bbc846b33b92e98c939494afd99d9a3a988ad1ae9a22b.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2b752de2f22691366552bed165fcc0f7939602e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
