# IsPreconnected.intermediate_value_Ioc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc26da68-45d2-8b0f-00bd-e4d13bdfd96f",
  "kind": "theorem",
  "lexical_name": "IsPreconnected.intermediate_value_Ioc",
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
  "slug": "ispreconnected-intermediate-value-ioc--61edbcb87f8b8e1b413ca5ef",
  "source": {
    "blob": "0bdb0f39f02c29a5c37460dd0e8f870530eb8261",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 136,
    "path": "GRWTSK/Topology/GeneralTopology/IntermediateValue/Variant691bb64295eb7efd01b2f325ed4d886a7d3e2d1156eb56c28bfbe7ea85e36c13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61edbcb87f8b8e1b413ca5efc28d45332716ed6c11fdb8264255f55bc9c6dd64",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IntermediateValue/Variant691bb64295eb7efd01b2f325ed4d886a7d3e2d1156eb56c28bfbe7ea85e36c13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc26da68-45d2-8b0f-00bd-e4d13bdfd96f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPreconnected.intermediate_value_Ioc {s : Set X} (hs : IsPreconnected s) {a : X}
    {l : Filter X} (ha : a ∈ s) [NeBot l] (hl : l ≤ 𝓟 s) {f : X → α} (hf : ContinuousOn f s) {v : α}
    (ht : Tendsto f l (𝓝 v)) : Ioc v (f a) ⊆ f '' s := fun _ h =>
  (hs.intermediate_value₂_eventually₁ ha hl continuousOn_const hf h.2
    (ht.eventually_le_const h.1)).imp fun _ h => h.imp_right Eq.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IntermediateValue/Variant691bb64295eb7efd01b2f325ed4d886a7d3e2d1156eb56c28bfbe7ea85e36c13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IntermediateValue/Variant691bb64295eb7efd01b2f325ed4d886a7d3e2d1156eb56c28bfbe7ea85e36c13.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bdb0f39f02c29a5c37460dd0e8f870530eb8261` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
