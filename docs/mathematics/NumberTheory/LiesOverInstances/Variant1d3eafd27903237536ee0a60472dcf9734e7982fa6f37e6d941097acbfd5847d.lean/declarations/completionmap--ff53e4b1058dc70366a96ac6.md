# completionMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8a3111e91857262087ec12eed582a90e28e830d9b3dca1b32f7d9db6bdb33bb5",
  "kind": "def",
  "lexical_name": "completionMap",
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
  "slug": "completionmap--ff53e4b1058dc70366a96ac6",
  "source": {
    "blob": "982e54173bcbbf471914dc5d815f34abe2d50216",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 31,
    "path": "GRWTSK/NumberTheory/LiesOverInstances/Variant1d3eafd27903237536ee0a60472dcf9734e7982fa6f37e6d941097acbfd5847d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ff53e4b1058dc70366a96ac66fc2969f8bb6f31b839d6bcf7e0a7fec1f9a71d0",
  "verification": {
    "reference": "docs/verification/NumberTheory/LiesOverInstances/Variant1d3eafd27903237536ee0a60472dcf9734e7982fa6f37e6d941097acbfd5847d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8a3111e91857262087ec12eed582a90e28e830d9b3dca1b32f7d9db6bdb33bb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def completionMap : v.Completion →+* w.Completion :=
  ((Completion.equiv w).symm.toRingHom.comp <|
    UniformSpace.Completion.mapRingHom _ (LiesOver.isometry_algebraMap w v).continuous).comp <|
    (Completion.equiv v).toRingHom

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/LiesOverInstances/Variant1d3eafd27903237536ee0a60472dcf9734e7982fa6f37e6d941097acbfd5847d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/LiesOverInstances/Variant1d3eafd27903237536ee0a60472dcf9734e7982fa6f37e6d941097acbfd5847d.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `982e54173bcbbf471914dc5d815f34abe2d50216` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
