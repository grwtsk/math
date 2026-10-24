# _root_.GRWTSK.Topology.GeneralTopology.Prod.Variant3177f53a0567409c0bcfc5263bf1b180117b00a1a2eab20cd0202afe817e5a68.Pi.compRightL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9e362b6101a6d3d48fe911aa32202e5a4e1c68c61ab6d936bd0a0f0036c248eb",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.Prod.Variant3177f53a0567409c0bcfc5263bf1b180117b00a1a2eab20cd0202afe817e5a68.Pi.compRightL",
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
  "slug": "root-grwtsk-topology-generaltopology-prod-variant3177f53a0567409c0bcfc52--64affb2a196de420767bb826",
  "source": {
    "blob": "51cb365840f352a8028b62e5da95e0cb9d84d621",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 218,
    "path": "GRWTSK/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:64affb2a196de420767bb8267661fa379b5c78a34d1f76869dce7edebd1646bc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9e362b6101a6d3d48fe911aa32202e5a4e1c68c61ab6d936bd0a0f0036c248eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Topology.GeneralTopology.Prod.Variant3177f53a0567409c0bcfc5263bf1b180117b00a1a2eab20cd0202afe817e5a68.Pi.compRightL {α : Type*} (f : α → ι) : ((i : ι) → φ i) →L[R] ((i : α) → φ (f i)) where
  toFun := fun v i ↦ v (f i)
  map_add' := by intros; ext; simp
  map_smul' := by intros; ext; simp
  cont := by continuity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51cb365840f352a8028b62e5da95e0cb9d84d621` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
