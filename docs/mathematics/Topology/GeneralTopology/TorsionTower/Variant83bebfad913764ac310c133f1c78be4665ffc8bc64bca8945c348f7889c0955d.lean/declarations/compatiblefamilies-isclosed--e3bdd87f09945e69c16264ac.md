# compatibleFamilies_isClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8a0a226-f6e5-9e2d-dff6-8a5636d9d588",
  "kind": "theorem",
  "lexical_name": "compatibleFamilies_isClosed",
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
  "slug": "compatiblefamilies-isclosed--e3bdd87f09945e69c16264ac",
  "source": {
    "blob": "5a79814dcff2ec7fb8b15945904dcb3f4b3be8db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 96,
    "path": "GRWTSK/Topology/GeneralTopology/TorsionTower/Variant83bebfad913764ac310c133f1c78be4665ffc8bc64bca8945c348f7889c0955d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3bdd87f09945e69c16264acd3bc27e065694be4e831281f14b0edea7e2be762",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TorsionTower/Variant83bebfad913764ac310c133f1c78be4665ffc8bc64bca8945c348f7889c0955d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8a0a226-f6e5-9e2d-dff6-8a5636d9d588`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compatibleFamilies_isClosed
    [∀ level, TopologicalSpace (Level level)]
    [∀ level, DiscreteTopology (Level level)]
    (tower : PrimePowerTorsionTower prime Level) :
    IsClosed tower.compatibleFamilies := by
  rw [show tower.compatibleFamilies =
      ⋂ level,
        {coordinate |
          tower.transition level (coordinate (Nat.succ level)) =
            coordinate level} by
      ext coordinate
      simp [compatibleFamilies]]
  apply isClosed_iInter
  intro level
  apply isClosed_eq
  · exact
      continuous_of_discreteTopology.comp
        (continuous_apply (Nat.succ level))
  · exact continuous_apply level

/-- The topological inverse-limit carrier cut out by compatibility. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TorsionTower/Variant83bebfad913764ac310c133f1c78be4665ffc8bc64bca8945c348f7889c0955d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TorsionTower/Variant83bebfad913764ac310c133f1c78be4665ffc8bc64bca8945c348f7889c0955d.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a79814dcff2ec7fb8b15945904dcb3f4b3be8db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
