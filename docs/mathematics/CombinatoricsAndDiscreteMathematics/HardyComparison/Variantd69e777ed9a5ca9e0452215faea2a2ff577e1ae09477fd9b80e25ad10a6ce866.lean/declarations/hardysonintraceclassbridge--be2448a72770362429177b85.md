# HardySoninTraceClassBridge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:05d13757e712d89ec3e4691cc9cec5e38fb6ddc5c86655f07e6db81614fd7fe4",
  "kind": "structure",
  "lexical_name": "HardySoninTraceClassBridge",
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
  "slug": "hardysonintraceclassbridge--be2448a72770362429177b85",
  "source": {
    "blob": "261aa6a6e56f1657d8e22367bd1cbaf9e1c00973",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 45,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/HardyComparison/Variantd69e777ed9a5ca9e0452215faea2a2ff577e1ae09477fd9b80e25ad10a6ce866.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:be2448a72770362429177b85fbe3ed2e5d1ceb36752c0c99356a822a09bfe63f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/HardyComparison/Variantd69e777ed9a5ca9e0452215faea2a2ff577e1ae09477fd9b80e25ad10a6ce866.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:05d13757e712d89ec3e4691cc9cec5e38fb6ddc5c86655f07e6db81614fd7fe4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure HardySoninTraceClassBridge
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {family : SoninSpaceFamily Prime}
    {connectors : SoninConnectorSystem family}
    {range :
      FiniteHorizonRangeProjection
        model connectors}
    (hardy :
      Hardy.HardyDefectFamily model Prime) where
  traceNorm : model.Operator → ℝ
  error :
    Finset Prime → Finset Prime → ℝ
  comparison :
    ∀ source horizon,
      source ⊆ horizon →
      traceNorm
          (hardy.defect source -
            range.projection source horizon) ≤
        error source horizon

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/HardyComparison/Variantd69e777ed9a5ca9e0452215faea2a2ff577e1ae09477fd9b80e25ad10a6ce866.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/HardyComparison/Variantd69e777ed9a5ca9e0452215faea2a2ff577e1ae09477fd9b80e25ad10a6ce866.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `261aa6a6e56f1657d8e22367bd1cbaf9e1c00973` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
