# finalClaim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6523c78e5cdb16054f5cf0898775c8e2fc689690b6befbc06810e13d58424c63",
  "kind": "def",
  "lexical_name": "finalClaim",
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
  "slug": "finalclaim--621d38f32e7af1c025c7286f",
  "source": {
    "blob": "e2cf3db03d1b015cbe39331a6f1718580e8c8ee5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 129,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SyntheticNullHypersurfaces/Variant88ba48c80cd4c78cd8216d28e94d2af859b1888e928504a1d1fdd9e1818ebba5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:621d38f32e7af1c025c7286f9062dc77c32f156bb8f2feb3f985b52bee9fc06c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SyntheticNullHypersurfaces/Variant88ba48c80cd4c78cd8216d28e94d2af859b1888e928504a1d1fdd9e1818ebba5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6523c78e5cdb16054f5cf0898775c8e2fc689690b6befbc06810e13d58424c63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def finalClaim (ctx : Context) : Prop :=
  (∀ X : ctx.TopologicalCausalSpace,
      ∀ H : ctx.ClosedAchronalSet,
        ∀ G1 G2 : ctx.Gauge,
          ∀ m1 m2 : ctx.RadonMeasure,
            ∀ N : ctx.DimensionParameter,
              ctx.IsTopologicalCausalSpace X ->
                ctx.IsClosedAchronalSet X H ->
                  ctx.PositiveDimension N ->
                    ctx.IsTightGauge H G1 ->
                      ctx.IsTightGauge H G2 ->
                        ctx.IsRadonMeasureOn H m1 ->
                          ctx.IsRadonMeasureOn H m2 ->
                            ctx.MeasureEquivalent m1 m2 ->
                              ctx.GaugeEquivalent G1 G2 ->
                                ctx.IsSyntheticNullHypersurface X H G1 m1 ->
                                  ctx.IsSyntheticNullHypersurface X H G2 m2 ->
                                    (ctx.SatisfiesSyntheticNullEnergyCondition H G1 m1 N ↔
                                      ctx.SatisfiesSyntheticNullEnergyCondition H G2 m2 N)) ∧
  ctx.StableUnderConvergence ∧
  ctx.HawkingAreaOrPenroseTransfer

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SyntheticNullHypersurfaces/Variant88ba48c80cd4c78cd8216d28e94d2af859b1888e928504a1d1fdd9e1818ebba5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SyntheticNullHypersurfaces/Variant88ba48c80cd4c78cd8216d28e94d2af859b1888e928504a1d1fdd9e1818ebba5.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2cf3db03d1b015cbe39331a6f1718580e8c8ee5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
