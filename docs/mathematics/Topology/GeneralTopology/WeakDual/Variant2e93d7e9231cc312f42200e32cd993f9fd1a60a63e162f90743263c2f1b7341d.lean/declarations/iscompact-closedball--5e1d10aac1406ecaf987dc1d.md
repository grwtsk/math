# isCompact_closedBall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:075d91e6-f429-422a-e16d-09a27aef9717",
  "kind": "theorem",
  "lexical_name": "isCompact_closedBall",
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
  "slug": "iscompact-closedball--5e1d10aac1406ecaf987dc1d",
  "source": {
    "blob": "cc1a32062b0187e71729b4f563f2034098eaf0dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 259,
    "path": "GRWTSK/Topology/GeneralTopology/WeakDual/Variant2e93d7e9231cc312f42200e32cd993f9fd1a60a63e162f90743263c2f1b7341d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e1d10aac1406ecaf987dc1d5dbdeae47c9ff75ce938e33e91666f2236f1e27c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WeakDual/Variant2e93d7e9231cc312f42200e32cd993f9fd1a60a63e162f90743263c2f1b7341d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:075d91e6-f429-422a-e16d-09a27aef9717`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCompact_closedBall [ProperSpace 𝕜] (x' : Dual 𝕜 E) (r : ℝ) :
    IsCompact (toNormedDual ⁻¹' closedBall x' r) :=
  isCompact_of_bounded_of_closed bounded_closedBall (isClosed_closedBall x' r)
#align weak_dual.is_compact_closed_ball WeakDual.isCompact_closedBall

end WeakDual
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WeakDual/Variant2e93d7e9231cc312f42200e32cd993f9fd1a60a63e162f90743263c2f1b7341d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WeakDual/Variant2e93d7e9231cc312f42200e32cd993f9fd1a60a63e162f90743263c2f1b7341d.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc1a32062b0187e71729b4f563f2034098eaf0dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
