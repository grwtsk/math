# torsionInverseLimitCompactOpenElement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4609f87a2e6eac5ec30ecd44137fc42b330cf7959e174d251e9bb9e6c12663fd",
  "kind": "def",
  "lexical_name": "torsionInverseLimitCompactOpenElement",
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
  "slug": "torsioninverselimitcompactopenelement--2da065237c1aa3903d15c836",
  "source": {
    "blob": "5a79814dcff2ec7fb8b15945904dcb3f4b3be8db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 155,
    "path": "GRWTSK/Topology/GeneralTopology/TorsionTower/Variant83bebfad913764ac310c133f1c78be4665ffc8bc64bca8945c348f7889c0955d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2da065237c1aa3903d15c836067b522f6d2ceefc02c1d0d3bb02698abd5b319f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TorsionTower/Variant83bebfad913764ac310c133f1c78be4665ffc8bc64bca8945c348f7889c0955d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4609f87a2e6eac5ec30ecd44137fc42b330cf7959e174d251e9bb9e6c12663fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def torsionInverseLimitCompactOpenElement :
    Mathematics.Discovery.OpenConjectureElement
      TorsionInverseLimitCompactStatement where
  elementId := {
    id := {
      value := "open:prismatic:torsion-inverse-limit-compact"
    }
  }
  elementId_valid := by
    simp [StableId.Valid]
  name := "Finite torsion towers have compact compatible limits"
  name_nonempty := by
    decide
  leanDeclarationName :=
    "Mathematics.Prismatic.TorsionInverseLimitCompactStatement"
  leanDeclarationName_nonempty := by
    decide

/-- Kernel-checked discharge of the compact inverse-limit seed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TorsionTower/Variant83bebfad913764ac310c133f1c78be4665ffc8bc64bca8945c348f7889c0955d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TorsionTower/Variant83bebfad913764ac310c133f1c78be4665ffc8bc64bca8945c348f7889c0955d.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a79814dcff2ec7fb8b15945904dcb3f4b3be8db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
