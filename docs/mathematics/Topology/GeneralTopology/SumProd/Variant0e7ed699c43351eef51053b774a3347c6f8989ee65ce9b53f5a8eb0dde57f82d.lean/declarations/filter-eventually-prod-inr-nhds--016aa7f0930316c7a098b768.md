# Filter.Eventually.prod_inr_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "32a4e92f214c24d3ffa422acb7e345a78119464b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 218,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0e/0e7ed699c43351eef51053b774a3347c6f8989ee65ce9b53f5a8eb0dde57f82d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b65ce9b2-1a5e-6639-635e-d522e8dc4d7c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:afa6babd-ad40-5776-526e-a96de1f59c1f",
  "kind": "theorem",
  "lexical_name": "Filter.Eventually.prod_inr_nhds",
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
  "slug": "filter-eventually-prod-inr-nhds--016aa7f0930316c7a098b768",
  "source": {
    "blob": "32a4e92f214c24d3ffa422acb7e345a78119464b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 218,
    "path": "GRWTSK/Topology/GeneralTopology/SumProd/Variant0e7ed699c43351eef51053b774a3347c6f8989ee65ce9b53f5a8eb0dde57f82d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:016aa7f0930316c7a098b7681ba3ffa1b92c97a6862f18ffc4ba52e9c2daad6a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SumProd/Variant0e7ed699c43351eef51053b774a3347c6f8989ee65ce9b53f5a8eb0dde57f82d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:afa6babd-ad40-5776-526e-a96de1f59c1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.Eventually.prod_inr_nhds {p : Y → Prop} {y : Y} (h : ∀ᶠ x in 𝓝 y, p x) (x : X) :
    ∀ᶠ x in 𝓝 (x, y), p (x : X × Y).2 :=
  continuousAt_snd h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SumProd/Variant0e7ed699c43351eef51053b774a3347c6f8989ee65ce9b53f5a8eb0dde57f82d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SumProd/Variant0e7ed699c43351eef51053b774a3347c6f8989ee65ce9b53f5a8eb0dde57f82d.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32a4e92f214c24d3ffa422acb7e345a78119464b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
