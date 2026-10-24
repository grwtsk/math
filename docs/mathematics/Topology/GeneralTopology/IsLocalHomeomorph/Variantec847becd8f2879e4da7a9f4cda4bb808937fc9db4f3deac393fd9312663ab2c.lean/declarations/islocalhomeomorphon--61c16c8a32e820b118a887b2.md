# IsLocalHomeomorphOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:49902f6a1b4d07569a571d1522e408d8f80888c7087be320018fe019e93ebfd5",
  "kind": "def",
  "lexical_name": "IsLocalHomeomorphOn",
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
  "slug": "islocalhomeomorphon--61c16c8a32e820b118a887b2",
  "source": {
    "blob": "28d457bb1e41b656145c5e31aeb3f5c793a6f792",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 39,
    "path": "GRWTSK/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:61c16c8a32e820b118a887b2b8e52542fb23c055f69d9287fc02c4c669c6bd06",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:49902f6a1b4d07569a571d1522e408d8f80888c7087be320018fe019e93ebfd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsLocalHomeomorphOn :=
  ∀ x ∈ s, ∃ e : PartialHomeomorph X Y, x ∈ e.source ∧ f = e

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28d457bb1e41b656145c5e31aeb3f5c793a6f792` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
