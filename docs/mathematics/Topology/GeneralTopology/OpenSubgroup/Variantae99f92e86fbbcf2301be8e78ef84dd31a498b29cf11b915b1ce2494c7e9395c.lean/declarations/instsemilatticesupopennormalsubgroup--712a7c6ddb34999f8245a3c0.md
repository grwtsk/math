# instSemilatticeSupOpenNormalSubgroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2c9a7d2e9d15ff3531183607f0a2fef8a47f25ced8b8248eff51ede97e76e3c7",
  "kind": "instance",
  "lexical_name": "instSemilatticeSupOpenNormalSubgroup",
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
  "slug": "instsemilatticesupopennormalsubgroup--712a7c6ddb34999f8245a3c0",
  "source": {
    "blob": "e0e35235a9889ad2752d740e4cb59c883f064383",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 532,
    "line": 528,
    "path": "GRWTSK/Topology/GeneralTopology/OpenSubgroup/Variantae99f92e86fbbcf2301be8e78ef84dd31a498b29cf11b915b1ce2494c7e9395c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:712a7c6ddb34999f8245a3c06a40f18299c881420c42bf8e3dd89847594272cd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OpenSubgroup/Variantae99f92e86fbbcf2301be8e78ef84dd31a498b29cf11b915b1ce2494c7e9395c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2c9a7d2e9d15ff3531183607f0a2fef8a47f25ced8b8248eff51ede97e76e3c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 528–532.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instSemilatticeSupOpenNormalSubgroup [SeparatelyContinuousMul G] :
    SemilatticeSup (OpenNormalSubgroup G) :=
  toSubgroup_injective.semilatticeSup _ .rfl .rfl fun _ _ ↦ rfl

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OpenSubgroup/Variantae99f92e86fbbcf2301be8e78ef84dd31a498b29cf11b915b1ce2494c7e9395c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OpenSubgroup/Variantae99f92e86fbbcf2301be8e78ef84dd31a498b29cf11b915b1ce2494c7e9395c.lean#L528).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0e35235a9889ad2752d740e4cb59c883f064383` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
