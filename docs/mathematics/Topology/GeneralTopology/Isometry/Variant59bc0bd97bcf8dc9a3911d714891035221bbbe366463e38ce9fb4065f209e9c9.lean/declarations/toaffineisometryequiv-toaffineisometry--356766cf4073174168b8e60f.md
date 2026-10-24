# toAffineIsometryEquiv_toAffineIsometry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3fd03f69c9b604b51dbcc2a5cee2da72e7a5a1cf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 366,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/59bc0bd97bcf8dc9a3911d714891035221bbbe366463e38ce9fb4065f209e9c9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a2aeb4f3-45ca-8e64-6ba3-43209237232d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:386dea4a-de5d-3fdc-71a2-03d5815afa23",
  "kind": "theorem",
  "lexical_name": "toAffineIsometryEquiv_toAffineIsometry",
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
  "slug": "toaffineisometryequiv-toaffineisometry--356766cf4073174168b8e60f",
  "source": {
    "blob": "3fd03f69c9b604b51dbcc2a5cee2da72e7a5a1cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 375,
    "line": 366,
    "path": "GRWTSK/Topology/GeneralTopology/Isometry/Variant59bc0bd97bcf8dc9a3911d714891035221bbbe366463e38ce9fb4065f209e9c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:356766cf4073174168b8e60f37d63b8fbaea88cfb9e4ab31a51d1c11022989c5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Isometry/Variant59bc0bd97bcf8dc9a3911d714891035221bbbe366463e38ce9fb4065f209e9c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:386dea4a-de5d-3fdc-71a2-03d5815afa23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–375.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toAffineIsometryEquiv_toAffineIsometry :
    e.toAffineIsometryEquiv.toAffineIsometry = e.toLinearIsometry.toAffineIsometry :=
  rfl

end LinearIsometryEquiv

namespace AffineIsometryEquiv

variable (e : P ≃ᵃⁱ[𝕜] P₂)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Isometry/Variant59bc0bd97bcf8dc9a3911d714891035221bbbe366463e38ce9fb4065f209e9c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Isometry/Variant59bc0bd97bcf8dc9a3911d714891035221bbbe366463e38ce9fb4065f209e9c9.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fd03f69c9b604b51dbcc2a5cee2da72e7a5a1cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
