# Adadic.CursorOrderCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a789b8bf2f87c3c9f16aa5c66fd4da45e775809e61f64060d6abf79645312114",
  "kind": "structure",
  "lexical_name": "Adadic.CursorOrderCertificate",
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
  "slug": "adadic-cursorordercertificate--2f07ede81075478383b759e9",
  "source": {
    "blob": "7d4f6586a1094ea9c8f0524675cfdc8e6ea6bd65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 300,
    "path": "GRWTSK/Topology/GeneralTopology/Adadic/Variant6f4cd125554fd5b4b88b59d6be32107134eef6928bf9625416c35cbe6344e5de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2f07ede81075478383b759e927d3e74c549e2a57c7c14a61abe518786d97b391",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Adadic/Variant6f4cd125554fd5b4b88b59d6be32107134eef6928bf9625416c35cbe6344e5de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a789b8bf2f87c3c9f16aa5c66fd4da45e775809e61f64060d6abf79645312114`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Adadic.CursorOrderCertificate
    (cursor : Adadic.Cursor) where
  coverOpen_lt_coverBoundary :
    cursor .coverOpen < cursor .coverBoundary
  coverBoundary_lt_arithmeticCore :
    cursor .coverBoundary < cursor .arithmeticCore
  arithmeticCore_lt_arithmeticResidue :
    cursor .arithmeticCore < cursor .arithmeticResidue
  arithmeticResidue_lt_controlFlow :
    cursor .arithmeticResidue < cursor .controlFlow
  controlFlow_lt_kernelAdmission :
    cursor .controlFlow < cursor .kernelAdmission
  kernelAdmission_lt_handshake :
    cursor .kernelAdmission < cursor .handshake

/-- Proof-carrying Handshake precedence certificate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Adadic/Variant6f4cd125554fd5b4b88b59d6be32107134eef6928bf9625416c35cbe6344e5de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Adadic/Variant6f4cd125554fd5b4b88b59d6be32107134eef6928bf9625416c35cbe6344e5de.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d4f6586a1094ea9c8f0524675cfdc8e6ea6bd65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
