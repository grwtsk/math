# closedBall_sub_closedBall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aaaedd42-28ef-2867-d20e-4e2f439b8af9",
  "kind": "theorem",
  "lexical_name": "closedBall_sub_closedBall",
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
  "slug": "closedball-sub-closedball--7a77750d47b1fd4db176c132",
  "source": {
    "blob": "e64bf1cbb27bf509b67efb78dcc67513a933188e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 367,
    "line": 358,
    "path": "GRWTSK/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a77750d47b1fd4db176c132a663d066748176b06a87fc3356cb1a1c975a1dca",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aaaedd42-28ef-2867-d20e-4e2f439b8af9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 358–367.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closedBall_sub_closedBall [ProperSpace E] (hε : 0 ≤ ε) (hδ : 0 ≤ δ) (a b : E) :
    closedBall a ε - closedBall b δ = closedBall (a - b) (ε + δ) := by
  rw [sub_eq_add_neg, neg_closedBall, closedBall_add_closedBall hε hδ, sub_eq_add_neg]

end SeminormedAddCommGroup

section NormedAddCommGroup

variable [NormedAddCommGroup E] [NormedSpace 𝕜 E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean#L358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e64bf1cbb27bf509b67efb78dcc67513a933188e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
