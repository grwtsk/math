# evalMulNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a69d2acc2b8f1e959387ec1198299857770feadc6b3ddfae4b57c96f134ac6bc",
  "kind": "def",
  "lexical_name": "evalMulNorm",
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
  "slug": "evalmulnorm--a54e578fef269712ab02872b",
  "source": {
    "blob": "11333086a01308793fd4e828669c952f211ad1e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 507,
    "line": 501,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant65b205114f2014825bb032314203e6db289eeca6b4596721d8d9c599c5048e89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a54e578fef269712ab02872b84adc7f711d98ed756ec05ef2bc5890f8609f8e5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant65b205114f2014825bb032314203e6db289eeca6b4596721d8d9c599c5048e89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a69d2acc2b8f1e959387ec1198299857770feadc6b3ddfae4b57c96f134ac6bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 501–507.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalMulNorm : PositivityExt where eval {_ _} _zα _pα e := do
  let .app _ a ← whnfR e | throwError "not ‖ · ‖"
  let p ← mkAppM ``norm_nonneg' #[a]
  pure (.nonnegative p)

/-- Extension for the `positivity` tactic: additive norms are nonnegative, via `norm_nonneg`. -/
@[positivity Norm.norm _]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant65b205114f2014825bb032314203e6db289eeca6b4596721d8d9c599c5048e89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant65b205114f2014825bb032314203e6db289eeca6b4596721d8d9c599c5048e89.lean#L501).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11333086a01308793fd4e828669c952f211ad1e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
