# Float32.exactlyRepresentablePowersOfTen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d73b66b0cb537217c0e4e3a4a07a92448c10c899c2b6945ef393cd61ce408bcf",
  "kind": "def",
  "lexical_name": "Float32.exactlyRepresentablePowersOfTen",
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
  "slug": "float32-exactlyrepresentablepowersoften--de941fe88b3e7e1f1bccaa87",
  "source": {
    "blob": "9f8ce97e722c2a9a7bd09dc24af98ca8c1f4400a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 96,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfScientific/Variant8c3a33e4bb26d064bcdd7b88a2c7ea8fd8ef6fbdc32fa83480282241a85ebb42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de941fe88b3e7e1f1bccaa87f89c39a157b7436f7d505d28b0c8222fc3f964c0",
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

Occurrence: `declaration:d73b66b0cb537217c0e4e3a4a07a92448c10c899c2b6945ef393cd61ce408bcf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def Float32.exactlyRepresentablePowersOfTen : Array Float32 :=
 #[Float32.ofBits 0x3F800000, Float32.ofBits 0x41200000, Float32.ofBits 0x42C80000,
   Float32.ofBits 0x447A0000, Float32.ofBits 0x461C4000, Float32.ofBits 0x47C35000,
   Float32.ofBits 0x49742400, Float32.ofBits 0x4B189680, Float32.ofBits 0x4CBEBC20,
   Float32.ofBits 0x4E6E6B28, Float32.ofBits 0x501502F9]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfScientific/Variant8c3a33e4bb26d064bcdd7b88a2c7ea8fd8ef6fbdc32fa83480282241a85ebb42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfScientific/Variant8c3a33e4bb26d064bcdd7b88a2c7ea8fd8ef6fbdc32fa83480282241a85ebb42.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f8ce97e722c2a9a7bd09dc24af98ca8c1f4400a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
