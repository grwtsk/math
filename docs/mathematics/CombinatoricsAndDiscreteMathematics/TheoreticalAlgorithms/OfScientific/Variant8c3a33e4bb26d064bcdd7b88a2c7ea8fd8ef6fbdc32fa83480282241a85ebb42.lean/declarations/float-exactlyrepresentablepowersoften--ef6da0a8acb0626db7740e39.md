# Float.exactlyRepresentablePowersOfTen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:82cd54da83e074a8fd2df0b32aa8137ace536108b88aca40cf376a9605d69776",
  "kind": "def",
  "lexical_name": "Float.exactlyRepresentablePowersOfTen",
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
  "slug": "float-exactlyrepresentablepowersoften--ef6da0a8acb0626db7740e39",
  "source": {
    "blob": "9f8ce97e722c2a9a7bd09dc24af98ca8c1f4400a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 29,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfScientific/Variant8c3a33e4bb26d064bcdd7b88a2c7ea8fd8ef6fbdc32fa83480282241a85ebb42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ef6da0a8acb0626db7740e39291ea9f8eb117eedc974759a2d2bfa63645db4d0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfScientific/Variant8c3a33e4bb26d064bcdd7b88a2c7ea8fd8ef6fbdc32fa83480282241a85ebb42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:82cd54da83e074a8fd2df0b32aa8137ace536108b88aca40cf376a9605d69776`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def Float.exactlyRepresentablePowersOfTen : Array Float :=
 #[Float.ofBits 0x3FF0000000000000, Float.ofBits 0x4024000000000000,
   Float.ofBits 0x4059000000000000, Float.ofBits 0x408F400000000000,
   Float.ofBits 0x40C3880000000000, Float.ofBits 0x40F86A0000000000,
   Float.ofBits 0x412E848000000000, Float.ofBits 0x416312D000000000,
   Float.ofBits 0x4197D78400000000, Float.ofBits 0x41CDCD6500000000,
   Float.ofBits 0x4202A05F20000000, Float.ofBits 0x42374876E8000000,
   Float.ofBits 0x426D1A94A2000000, Float.ofBits 0x42A2309CE5400000,
   Float.ofBits 0x42D6BCC41E900000, Float.ofBits 0x430C6BF526340000,
   Float.ofBits 0x4341C37937E08000, Float.ofBits 0x4376345785D8A000,
   Float.ofBits 0x43ABC16D674EC800, Float.ofBits 0x43E158E460913D00,
   Float.ofBits 0x4415AF1D78B58C40, Float.ofBits 0x444B1AE4D6E2EF50,
   Float.ofBits 0x4480F0CF064DD592]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfScientific/Variant8c3a33e4bb26d064bcdd7b88a2c7ea8fd8ef6fbdc32fa83480282241a85ebb42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfScientific/Variant8c3a33e4bb26d064bcdd7b88a2c7ea8fd8ef6fbdc32fa83480282241a85ebb42.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f8ce97e722c2a9a7bd09dc24af98ca8c1f4400a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
