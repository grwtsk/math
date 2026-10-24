# isTopCompl_iff_isCompl_isClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "643fbdb4c83232a0b2605877ecc10f88be967aeb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 93,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6cc20e58a03657aaa2c2684ab671c6d9a4b7ca9bdac908e3dceca020d3db323d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a80e8cd8-79eb-5ae2-027f-c08e4d7237e0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d359bf30-15e8-4bd9-feb1-ded8879613ca",
  "kind": "theorem",
  "lexical_name": "isTopCompl_iff_isCompl_isClosed",
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
  "slug": "istopcompl-iff-iscompl-isclosed--d4665b216544500788d0e634",
  "source": {
    "blob": "643fbdb4c83232a0b2605877ecc10f88be967aeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 93,
    "path": "GRWTSK/Topology/GeneralTopology/Complemented/Variant6cc20e58a03657aaa2c2684ab671c6d9a4b7ca9bdac908e3dceca020d3db323d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4665b216544500788d0e6340e97115796c67643615ca1813f44571319626bfb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Complemented/Variant6cc20e58a03657aaa2c2684ab671c6d9a4b7ca9bdac908e3dceca020d3db323d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d359bf30-15e8-4bd9-feb1-ded8879613ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isTopCompl_iff_isCompl_isClosed :
    IsTopCompl p q ↔ IsCompl p q ∧ IsClosed (p : Set E) ∧ IsClosed (q : Set E) :=
  ⟨fun h ↦ ⟨h.isCompl, h.isClosed, h.isClosed'⟩, fun h ↦ h.1.isTopCompl_of_isClosed h.2.1 h.2.2⟩

variable (p q)

/-- If `q` is a closed complement of a closed subspace `p`, then `p × q` is continuously
isomorphic to `E`. -/
@[deprecated prodEquivOfIsTopCompl (since := "2026-06-07")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Complemented/Variant6cc20e58a03657aaa2c2684ab671c6d9a4b7ca9bdac908e3dceca020d3db323d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Complemented/Variant6cc20e58a03657aaa2c2684ab671c6d9a4b7ca9bdac908e3dceca020d3db323d.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `643fbdb4c83232a0b2605877ecc10f88be967aeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
