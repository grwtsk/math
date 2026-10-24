# analyticCantorHomeomorphism

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b2332ed4d92ce882891c375b4e146bba569306d0fea6b131d38d7007b9b9cc6e",
  "kind": "def",
  "lexical_name": "analyticCantorHomeomorphism",
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
  "slug": "analyticcantorhomeomorphism--c85ad6bee3ebf8d64b14c676",
  "source": {
    "blob": "7081270af04530dbed03e6186f12f4df7f478c46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 124,
    "path": "GRWTSK/Topology/GeneralTopology/DesignatedCantor/Variant29fa16d1bd110855698d133805703a400e16e97f404518313b332fd0d3733497.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c85ad6bee3ebf8d64b14c676379a0678ab78aada8848c4387a22714fd14f3c7c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DesignatedCantor/Variant29fa16d1bd110855698d133805703a400e16e97f404518313b332fd0d3733497.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b2332ed4d92ce882891c375b4e146bba569306d0fea6b131d38d7007b9b9cc6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def analyticCantorHomeomorphism :
    BitMatrix.Carrier.BitStream ≃ₜ ExactCantorScalar :=
  cantorSetHomeomorphNatToBool.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DesignatedCantor/Variant29fa16d1bd110855698d133805703a400e16e97f404518313b332fd0d3733497.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DesignatedCantor/Variant29fa16d1bd110855698d133805703a400e16e97f404518313b332fd0d3733497.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7081270af04530dbed03e6186f12f4df7f478c46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
