# EMetric.diam_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef0fdcea-d16e-e796-cf18-a90ead93b936",
  "kind": "theorem",
  "lexical_name": "EMetric.diam_closure",
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
  "slug": "emetric-diam-closure--9a56073fc875b6698bc9c1c8",
  "source": {
    "blob": "fc556a2f6999b6b174e20b623d4cd1bc49508f65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1503,
    "line": 1496,
    "path": "GRWTSK/Topology/GeneralTopology/ENNReal/Variant410cb03a446bf07b910ba3e08c293a3005379432b0caf58e0a7bc3ecd50282f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a56073fc875b6698bc9c1c8961cdcc3d3683c68e85eb391077f58eb0abeeb2c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ENNReal/Variant410cb03a446bf07b910ba3e08c293a3005379432b0caf58e0a7bc3ecd50282f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef0fdcea-d16e-e796-cf18-a90ead93b936`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1496–1503.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem EMetric.diam_closure (s : Set α) : diam (closure s) = diam s := by
  refine' le_antisymm (diam_le fun x hx y hy => _) (diam_mono subset_closure)
  have : edist x y ∈ closure (Iic (diam s)) :=
    map_mem_closure₂ continuous_edist hx hy fun x hx y hy => edist_le_diam_of_mem hx hy
  rwa [closure_Iic] at this
#align emetric.diam_closure EMetric.diam_closure

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ENNReal/Variant410cb03a446bf07b910ba3e08c293a3005379432b0caf58e0a7bc3ecd50282f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ENNReal/Variant410cb03a446bf07b910ba3e08c293a3005379432b0caf58e0a7bc3ecd50282f9.lean#L1496).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc556a2f6999b6b174e20b623d4cd1bc49508f65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
