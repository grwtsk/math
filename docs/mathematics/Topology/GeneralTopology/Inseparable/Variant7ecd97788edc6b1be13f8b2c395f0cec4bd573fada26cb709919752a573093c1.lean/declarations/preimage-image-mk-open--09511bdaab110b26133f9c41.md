# preimage_image_mk_open

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "41eab1b6b4c96fd71b6b42a07c726b47044e372b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 451,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7ecd97788edc6b1be13f8b2c395f0cec4bd573fada26cb709919752a573093c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aed3d025-0f72-df7f-f1d8-d4c6aa54f9eb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e0819c92-3ea7-b382-b7f4-da99498c32d3",
  "kind": "theorem",
  "lexical_name": "preimage_image_mk_open",
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
  "slug": "preimage-image-mk-open--09511bdaab110b26133f9c41",
  "source": {
    "blob": "41eab1b6b4c96fd71b6b42a07c726b47044e372b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 456,
    "line": 451,
    "path": "GRWTSK/Topology/GeneralTopology/Inseparable/Variant7ecd97788edc6b1be13f8b2c395f0cec4bd573fada26cb709919752a573093c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09511bdaab110b26133f9c410c867967ff93a3321743643c9d34ef25a576170d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Inseparable/Variant7ecd97788edc6b1be13f8b2c395f0cec4bd573fada26cb709919752a573093c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0819c92-3ea7-b382-b7f4-da99498c32d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 451–456.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preimage_image_mk_open (hs : IsOpen s) : mk ⁻¹' (mk '' s) = s := by
  refine' Subset.antisymm _ (subset_preimage_image _ _)
  rintro x ⟨y, hys, hxy⟩
  exact ((mk_eq_mk.1 hxy).mem_open_iff hs).1 hys
#align separation_quotient.preimage_image_mk_open SeparationQuotient.preimage_image_mk_open

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Inseparable/Variant7ecd97788edc6b1be13f8b2c395f0cec4bd573fada26cb709919752a573093c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Inseparable/Variant7ecd97788edc6b1be13f8b2c395f0cec4bd573fada26cb709919752a573093c1.lean#L451).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41eab1b6b4c96fd71b6b42a07c726b47044e372b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
