# image_uIcc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8e1982cb6cd1f808ded359ffdb0afa8ee9a8bdba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 528,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c02670f2e88f16acd11d69ddd6afb8d8118adca50279e1abb2a3c7761feb044.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f5040473-e065-bd0a-7cbe-0a6602446344",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:31118c07-7c65-b8a9-2a8a-4cc963bd8c20",
  "kind": "theorem",
  "lexical_name": "image_uIcc",
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
  "slug": "image-uicc--fec8be311dda41e5739fb741",
  "source": {
    "blob": "8e1982cb6cd1f808ded359ffdb0afa8ee9a8bdba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 533,
    "line": 528,
    "path": "GRWTSK/Topology/GeneralTopology/Compact/Variant7c02670f2e88f16acd11d69ddd6afb8d8118adca50279e1abb2a3c7761feb044.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fec8be311dda41e5739fb7419ef445350c491fccc2d7b1bcfffb6d864bc39c84",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compact/Variant7c02670f2e88f16acd11d69ddd6afb8d8118adca50279e1abb2a3c7761feb044.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31118c07-7c65-b8a9-2a8a-4cc963bd8c20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 528–533.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_uIcc (h : ContinuousOn f <| [[a, b]]) :
    f '' [[a, b]] = [[sInf (f '' [[a, b]]), sSup (f '' [[a, b]])]] := by
  refine h.image_uIcc_eq_Icc.trans (uIcc_of_le ?_).symm
  refine csInf_le_csSup (nonempty_uIcc.image _) ?_ ?_ <;> rw [h.image_uIcc_eq_Icc]
  exacts [bddBelow_Icc, bddAbove_Icc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compact/Variant7c02670f2e88f16acd11d69ddd6afb8d8118adca50279e1abb2a3c7761feb044.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compact/Variant7c02670f2e88f16acd11d69ddd6afb8d8118adca50279e1abb2a3c7761feb044.lean#L528).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e1982cb6cd1f808ded359ffdb0afa8ee9a8bdba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
