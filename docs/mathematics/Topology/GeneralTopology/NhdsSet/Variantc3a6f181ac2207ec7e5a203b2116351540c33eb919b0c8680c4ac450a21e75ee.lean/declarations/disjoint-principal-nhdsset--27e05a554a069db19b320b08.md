# disjoint_principal_nhdsSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4a2a7bfb2db6f3b5ba8ec0f5dd3464184c644b44",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c3a6f181ac2207ec7e5a203b2116351540c33eb919b0c8680c4ac450a21e75ee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6ade7324-133f-9a8b-c588-4804757214eb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:609e1aef-5d33-1c49-f68c-9e99de14c4cf",
  "kind": "theorem",
  "lexical_name": "disjoint_principal_nhdsSet",
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
  "slug": "disjoint-principal-nhdsset--27e05a554a069db19b320b08",
  "source": {
    "blob": "4a2a7bfb2db6f3b5ba8ec0f5dd3464184c644b44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 60,
    "path": "GRWTSK/Topology/GeneralTopology/NhdsSet/Variantc3a6f181ac2207ec7e5a203b2116351540c33eb919b0c8680c4ac450a21e75ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27e05a554a069db19b320b08b36a5905c4d341f1a4b8b2b66e0b369c1a41d3bd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NhdsSet/Variantc3a6f181ac2207ec7e5a203b2116351540c33eb919b0c8680c4ac450a21e75ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:609e1aef-5d33-1c49-f68c-9e99de14c4cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem disjoint_principal_nhdsSet : Disjoint (𝓟 s) (𝓝ˢ t) ↔ Disjoint (closure s) t := by
  rw [disjoint_principal_left, ← subset_interior_iff_mem_nhdsSet, interior_compl,
    subset_compl_iff_disjoint_left]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NhdsSet/Variantc3a6f181ac2207ec7e5a203b2116351540c33eb919b0c8680c4ac450a21e75ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NhdsSet/Variantc3a6f181ac2207ec7e5a203b2116351540c33eb919b0c8680c4ac450a21e75ee.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a2a7bfb2db6f3b5ba8ec0f5dd3464184c644b44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
