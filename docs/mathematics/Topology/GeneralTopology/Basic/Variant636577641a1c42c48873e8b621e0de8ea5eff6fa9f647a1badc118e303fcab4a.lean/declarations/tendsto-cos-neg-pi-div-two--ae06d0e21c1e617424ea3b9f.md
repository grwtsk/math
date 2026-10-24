# tendsto_cos_neg_pi_div_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:efb3f912-fb65-7da8-3ccf-b66991a97537",
  "kind": "theorem",
  "lexical_name": "tendsto_cos_neg_pi_div_two",
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
  "slug": "tendsto-cos-neg-pi-div-two--ae06d0e21c1e617424ea3b9f",
  "source": {
    "blob": "3a3c9c43836c739ad6841734e251a77902bbd88d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 983,
    "line": 977,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant636577641a1c42c48873e8b621e0de8ea5eff6fa9f647a1badc118e303fcab4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae06d0e21c1e617424ea3b9f5136702833aacee09eca1c424074e73038df9443",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant636577641a1c42c48873e8b621e0de8ea5eff6fa9f647a1badc118e303fcab4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:efb3f912-fb65-7da8-3ccf-b66991a97537`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 977–983.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_cos_neg_pi_div_two : Tendsto cos (𝓝[>] (-(π / 2))) (𝓝[>] 0) := by
  apply tendsto_nhdsWithin_of_tendsto_nhds_of_eventually_within
  · convert continuous_cos.continuousWithinAt.tendsto
    simp
  · filter_upwards [Ioo_mem_nhdsGT (neg_lt_self pi_div_two_pos)] with x hx
    exact cos_pos_of_mem_Ioo hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant636577641a1c42c48873e8b621e0de8ea5eff6fa9f647a1badc118e303fcab4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant636577641a1c42c48873e8b621e0de8ea5eff6fa9f647a1badc118e303fcab4a.lean#L977).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a3c9c43836c739ad6841734e251a77902bbd88d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
