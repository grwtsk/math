# PrimePowerTorsionTower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1216e07a7daa32bb072403778c6e5705176ab8a585ca45de4a8d44a8f60fdc17",
  "kind": "structure",
  "lexical_name": "PrimePowerTorsionTower",
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
  "slug": "primepowertorsiontower--b6ff0814094d54651a615252",
  "source": {
    "blob": "5a79814dcff2ec7fb8b15945904dcb3f4b3be8db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 30,
    "path": "GRWTSK/Topology/GeneralTopology/TorsionTower/Variant83bebfad913764ac310c133f1c78be4665ffc8bc64bca8945c348f7889c0955d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b6ff0814094d54651a615252f61a6e1f725867c2320c175d676d0ad6776011db",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TorsionTower/Variant83bebfad913764ac310c133f1c78be4665ffc8bc64bca8945c348f7889c0955d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1216e07a7daa32bb072403778c6e5705176ab8a585ca45de4a8d44a8f60fdc17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PrimePowerTorsionTower
    (prime : CertifiedPrime)
    (Level : Nat → Type u)
    [∀ level, AddCommGroup (Level level)]
    [∀ level, Fintype (Level level)] where
  transition :
    (level : Nat) → Level (Nat.succ level) →+ Level level
  killedByPrimePower :
    ∀ (level : Nat) (value : Level level),
      (prime.value ^ (Nat.succ level)) • value = 0
  transitionDigest : Nat → Digest
  transitionEvidence : Nat → ObjectAddress
  towerAddress : ObjectAddress

/-- One compatible point of the inverse limit of all finite torsion levels. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TorsionTower/Variant83bebfad913764ac310c133f1c78be4665ffc8bc64bca8945c348f7889c0955d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TorsionTower/Variant83bebfad913764ac310c133f1c78be4665ffc8bc64bca8945c348f7889c0955d.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a79814dcff2ec7fb8b15945904dcb3f4b3be8db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
