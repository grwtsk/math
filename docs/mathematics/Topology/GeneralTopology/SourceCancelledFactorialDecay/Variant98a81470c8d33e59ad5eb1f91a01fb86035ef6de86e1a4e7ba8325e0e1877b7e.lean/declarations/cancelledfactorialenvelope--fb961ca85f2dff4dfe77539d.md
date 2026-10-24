# cancelledFactorialEnvelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:51e9f6b98f6a8ae3ca80ee1d2290e76d790fe5ecf6d0fbf4c83a0d2aebd9c966",
  "kind": "def",
  "lexical_name": "cancelledFactorialEnvelope",
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
  "slug": "cancelledfactorialenvelope--fb961ca85f2dff4dfe77539d",
  "source": {
    "blob": "41932eab6215b8b21488ba3fa2c6115fc692f3e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 36,
    "path": "GRWTSK/Topology/GeneralTopology/SourceCancelledFactorialDecay/Variant98a81470c8d33e59ad5eb1f91a01fb86035ef6de86e1a4e7ba8325e0e1877b7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fb961ca85f2dff4dfe77539d0d6a562de8a5fc2c4c619fe3ab561c3927e32f54",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceCancelledFactorialDecay/Variant98a81470c8d33e59ad5eb1f91a01fb86035ef6de86e1a4e7ba8325e0e1877b7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:51e9f6b98f6a8ae3ca80ee1d2290e76d790fe5ecf6d0fbf4c83a0d2aebd9c966`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cancelledFactorialEnvelope (A : ℝ) : ℝ :=
  480 * ((Real.log A) ^ 2 / A) + 2560 * (Real.log A / A) + 3840 * (1 / A)

/-- The original closed-floor budget is bounded on every real scale A>=91. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceCancelledFactorialDecay/Variant98a81470c8d33e59ad5eb1f91a01fb86035ef6de86e1a4e7ba8325e0e1877b7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceCancelledFactorialDecay/Variant98a81470c8d33e59ad5eb1f91a01fb86035ef6de86e1a4e7ba8325e0e1877b7e.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41932eab6215b8b21488ba3fa2c6115fc692f3e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
