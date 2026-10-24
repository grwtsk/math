# CertifiedPoleAnchorSystem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:36953b8998952bcab0a4820a42782ce5be41dc802dbd014c0a89d89f5cd2fd0a",
  "kind": "structure",
  "lexical_name": "CertifiedPoleAnchorSystem",
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
  "slug": "certifiedpoleanchorsystem--2fab4e492dd1b1f19fe5e20f",
  "source": {
    "blob": "a4caa5cbac45dbbeb7e64ced26aef52eb39da339",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 34,
    "path": "GRWTSK/Topology/MetricTopology/CertifiedPoleSurgeryDiffuser/Variantfa86d7732b3130e46f42e7a187a1ebb3d3da83901ea55611767d6eec8513cd5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2fab4e492dd1b1f19fe5e20feda41256383361a8c1b7edf72588bf1991cdf0ff",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/CertifiedPoleSurgeryDiffuser/Variantfa86d7732b3130e46f42e7a187a1ebb3d3da83901ea55611767d6eec8513cd5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:36953b8998952bcab0a4820a42782ce5be41dc802dbd014c0a89d89f5cd2fd0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CertifiedPoleAnchorSystem
    (PoleIndex : Type u) [Fintype PoleIndex]
    (Stable : Type v) [DecidableEq Stable]
    (Carrier : Type w) [MetricSpace Carrier]
    (poles : FinitePoleSystem PoleIndex Carrier) where
  anchors :
    ∀ index,
      CertifiedFiniteAnchorNet
        (Anchor := Stable)
        (poles.boundary index)
  anchorSystemCertificate : ObjectAddress

/--
An opaque reference to one versioned obligation-state object.  This topology
module does not inspect or reconstruct the authority subsystem's status-
indexed state.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/CertifiedPoleSurgeryDiffuser/Variantfa86d7732b3130e46f42e7a187a1ebb3d3da83901ea55611767d6eec8513cd5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/CertifiedPoleSurgeryDiffuser/Variantfa86d7732b3130e46f42e7a187a1ebb3d3da83901ea55611767d6eec8513cd5b.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4caa5cbac45dbbeb7e64ced26aef52eb39da339` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
