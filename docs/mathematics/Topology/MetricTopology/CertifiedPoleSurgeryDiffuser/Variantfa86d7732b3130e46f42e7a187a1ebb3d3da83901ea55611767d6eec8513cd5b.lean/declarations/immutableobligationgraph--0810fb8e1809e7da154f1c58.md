# ImmutableObligationGraph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:89c902518bd89e51ecea2a0d092e2f0d96579003a9bf04bea459c4b5d60821f2",
  "kind": "structure",
  "lexical_name": "ImmutableObligationGraph",
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
  "slug": "immutableobligationgraph--0810fb8e1809e7da154f1c58",
  "source": {
    "blob": "a4caa5cbac45dbbeb7e64ced26aef52eb39da339",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 73,
    "path": "GRWTSK/Topology/MetricTopology/CertifiedPoleSurgeryDiffuser/Variantfa86d7732b3130e46f42e7a187a1ebb3d3da83901ea55611767d6eec8513cd5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0810fb8e1809e7da154f1c58ae76ced89d20a6009df650ac82f1ad0c79a54ace",
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

Occurrence: `declaration:89c902518bd89e51ecea2a0d092e2f0d96579003a9bf04bea459c4b5d60821f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ImmutableObligationGraph where
  primeSeparator : VersionedObligationReference
  obligationGraphDigest : Digest

/--
Opaque address of the external surgery authority.

There is intentionally no Lean callback `Candidate → Accepted`: an arbitrary
caller could implement such a callback by selecting its own predicate.  The
authority service replays the fixed pole/gluing certificate and atomically
publishes a new accepted-state object outside this proposal module.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/CertifiedPoleSurgeryDiffuser/Variantfa86d7732b3130e46f42e7a187a1ebb3d3da83901ea55611767d6eec8513cd5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/CertifiedPoleSurgeryDiffuser/Variantfa86d7732b3130e46f42e7a187a1ebb3d3da83901ea55611767d6eec8513cd5b.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4caa5cbac45dbbeb7e64ced26aef52eb39da339` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
