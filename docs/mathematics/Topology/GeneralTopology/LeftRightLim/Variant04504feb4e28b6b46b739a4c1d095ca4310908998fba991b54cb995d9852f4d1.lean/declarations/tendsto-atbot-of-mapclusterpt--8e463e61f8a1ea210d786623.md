# tendsto_atBot_of_mapClusterPt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15955003-ce6d-5f81-3ae1-472dce3b38e3",
  "kind": "theorem",
  "lexical_name": "tendsto_atBot_of_mapClusterPt",
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
  "slug": "tendsto-atbot-of-mapclusterpt--8e463e61f8a1ea210d786623",
  "source": {
    "blob": "a138060bebf654b31e51e47f85e50a17e2bb74ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 237,
    "path": "GRWTSK/Topology/GeneralTopology/LeftRightLim/Variant04504feb4e28b6b46b739a4c1d095ca4310908998fba991b54cb995d9852f4d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e463e61f8a1ea210d7866235e26d8be067836443fbb6d74e24423c115a03d49",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LeftRightLim/Variant04504feb4e28b6b46b739a4c1d095ca4310908998fba991b54cb995d9852f4d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15955003-ce6d-5f81-3ae1-472dce3b38e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_atBot_of_mapClusterPt
    [TopologicalSpace α] [OrderTopology α] [T3Space β] [NoBotOrder α] {f g : α → β} {b : β}
    (h : Tendsto f atBot (𝓝 b)) (h' : ∀ᶠ x in atBot, MapClusterPt (g x) (𝓝 x) f) :
    Tendsto g atBot (𝓝 b) :=
  tendsto_atTop_of_mapClusterPt (α := αᵒᵈ) h h'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LeftRightLim/Variant04504feb4e28b6b46b739a4c1d095ca4310908998fba991b54cb995d9852f4d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LeftRightLim/Variant04504feb4e28b6b46b739a4c1d095ca4310908998fba991b54cb995d9852f4d1.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a138060bebf654b31e51e47f85e50a17e2bb74ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
