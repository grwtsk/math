# Subgroup.continuousSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5b9cd9105e57127c3ffe43ce7c65850ef8d44b8e450825a78d4f698018bf35f2",
  "kind": "instance",
  "lexical_name": "Subgroup.continuousSMul",
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
  "slug": "subgroup-continuoussmul--c2bfde7e8b5107bb2e79c4d7",
  "source": {
    "blob": "517de63ef204a2db408e4bf2356e8f96c3479e7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 228,
    "path": "GRWTSK/Topology/GeneralTopology/MulAction/Variant608757652911c69be70d8610bc664cb1a877541419af65859d4f302c2bbe4f8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c2bfde7e8b5107bb2e79c4d7313bc15701ad02af5628b183d4260b23b5b8c126",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MulAction/Variant608757652911c69be70d8610bc664cb1a877541419af65859d4f302c2bbe4f8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5b9cd9105e57127c3ffe43ce7c65850ef8d44b8e450825a78d4f698018bf35f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Subgroup.continuousSMul {S : Subgroup M} : ContinuousSMul S X :=
  S.toSubmonoid.continuousSMul

variable (M)

/-- The stabilizer of a continuous group action on a discrete space is an open subgroup. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MulAction/Variant608757652911c69be70d8610bc664cb1a877541419af65859d4f302c2bbe4f8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MulAction/Variant608757652911c69be70d8610bc664cb1a877541419af65859d4f302c2bbe4f8f.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `517de63ef204a2db408e4bf2356e8f96c3479e7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
