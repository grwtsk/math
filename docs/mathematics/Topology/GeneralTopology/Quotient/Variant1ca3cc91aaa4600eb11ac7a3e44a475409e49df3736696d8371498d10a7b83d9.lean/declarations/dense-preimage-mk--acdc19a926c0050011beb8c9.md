# dense_preimage_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93d356cd-cd2e-023d-d7af-870cb91c142a",
  "kind": "theorem",
  "lexical_name": "dense_preimage_mk",
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
  "slug": "dense-preimage-mk--acdc19a926c0050011beb8c9",
  "source": {
    "blob": "26077b1460ca7f968b9c9f04ce33e420dfb5871d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 64,
    "path": "GRWTSK/Topology/GeneralTopology/Quotient/Variant1ca3cc91aaa4600eb11ac7a3e44a475409e49df3736696d8371498d10a7b83d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:acdc19a926c0050011beb8c9912b4d7e5c63106a0b9e89d87467d8bab4a89b6a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Quotient/Variant1ca3cc91aaa4600eb11ac7a3e44a475409e49df3736696d8371498d10a7b83d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93d356cd-cd2e-023d-d7af-870cb91c142a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dense_preimage_mk {s : Set (G ⧸ N)} : Dense ((↑) ⁻¹' s : Set G) ↔ Dense s :=
  isOpenQuotientMap_mk.dense_preimage_iff

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Quotient/Variant1ca3cc91aaa4600eb11ac7a3e44a475409e49df3736696d8371498d10a7b83d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Quotient/Variant1ca3cc91aaa4600eb11ac7a3e44a475409e49df3736696d8371498d10a7b83d9.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26077b1460ca7f968b9c9f04ce33e420dfb5871d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
