# CompactExhaustion.isClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d40221b4-ce4d-3ddc-a645-6f9c3076da46",
  "kind": "theorem",
  "lexical_name": "CompactExhaustion.isClosed",
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
  "slug": "compactexhaustion-isclosed--ecefb2190d293ae1988cd955",
  "source": {
    "blob": "f13a2e98c2ccf28f2041334ec8a494d43440ba81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 618,
    "line": 616,
    "path": "GRWTSK/Topology/GeneralTopology/Hausdorff/Variant947f72a5a7a0611c7470a2f4d9ba3a4ce22fc314a462128e115bc444b33c97f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ecefb2190d293ae1988cd9550d3762248227e055b54723745f4676673334aafd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hausdorff/Variant947f72a5a7a0611c7470a2f4d9ba3a4ce22fc314a462128e115bc444b33c97f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d40221b4-ce4d-3ddc-a645-6f9c3076da46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 616–618.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CompactExhaustion.isClosed [T2Space X] (K : CompactExhaustion X) (n : ℕ) : IsClosed (K n) :=
  (K.isCompact n).isClosed

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hausdorff/Variant947f72a5a7a0611c7470a2f4d9ba3a4ce22fc314a462128e115bc444b33c97f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hausdorff/Variant947f72a5a7a0611c7470a2f4d9ba3a4ce22fc314a462128e115bc444b33c97f2.lean#L616).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f13a2e98c2ccf28f2041334ec8a494d43440ba81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
