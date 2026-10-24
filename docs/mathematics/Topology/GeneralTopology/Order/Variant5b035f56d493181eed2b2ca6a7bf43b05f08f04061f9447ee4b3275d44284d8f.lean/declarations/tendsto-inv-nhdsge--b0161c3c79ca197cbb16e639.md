# tendsto_inv_nhdsGE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ecffd4ac-bd19-6df1-08c7-326a67cb936b",
  "kind": "theorem",
  "lexical_name": "tendsto_inv_nhdsGE",
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
  "slug": "tendsto-inv-nhdsge--b0161c3c79ca197cbb16e639",
  "source": {
    "blob": "4d7f0e9d8d54f788bbecc058e19ee9acc6fa8e89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 93,
    "path": "GRWTSK/Topology/GeneralTopology/Order/Variant5b035f56d493181eed2b2ca6a7bf43b05f08f04061f9447ee4b3275d44284d8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0161c3c79ca197cbb16e63909abb485b8bdcb45dcec58978fccc2442e489c53",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Order/Variant5b035f56d493181eed2b2ca6a7bf43b05f08f04061f9447ee4b3275d44284d8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ecffd4ac-bd19-6df1-08c7-326a67cb936b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_inv_nhdsGE {a : H} : Tendsto Inv.inv (𝓝[≥] a) (𝓝[≤] a⁻¹) :=
  (continuous_inv.tendsto a).inf <| by simp

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Order/Variant5b035f56d493181eed2b2ca6a7bf43b05f08f04061f9447ee4b3275d44284d8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Order/Variant5b035f56d493181eed2b2ca6a7bf43b05f08f04061f9447ee4b3275d44284d8f.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d7f0e9d8d54f788bbecc058e19ee9acc6fa8e89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
