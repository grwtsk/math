# IsZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:30b9f86f904b5291b0051abc02404b0fafa54e2ab030eb4b0471233ed3a17c6a",
  "kind": "def",
  "lexical_name": "IsZero",
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
  "slug": "iszero--1ca9eb710127b23dc0ba43b2",
  "source": {
    "blob": "1109002b61880303ae91f01462d456d529e709b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 74,
    "path": "GRWTSK/Topology/GeneralTopology/Boundary/Variant5e3c0581dc8d828fd812b6cfd31db4c99f9fcc75cf94e17dc87da5da30b23f03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1ca9eb710127b23dc0ba43b2084bd757b973e9e2a67b163a3de8577423c490f8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Boundary/Variant5e3c0581dc8d828fd812b6cfd31db4c99f9fcc75cf94e17dc87da5da30b23f03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:30b9f86f904b5291b0051abc02404b0fafa54e2ab030eb4b0471233ed3a17c6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def IsZero (ledger : BoundaryLedger) : Prop :=
  ∀ term ∈ ledger, coefficient ledger term.atom = 0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Boundary/Variant5e3c0581dc8d828fd812b6cfd31db4c99f9fcc75cf94e17dc87da5da30b23f03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Boundary/Variant5e3c0581dc8d828fd812b6cfd31db4c99f9fcc75cf94e17dc87da5da30b23f03.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1109002b61880303ae91f01462d456d529e709b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
