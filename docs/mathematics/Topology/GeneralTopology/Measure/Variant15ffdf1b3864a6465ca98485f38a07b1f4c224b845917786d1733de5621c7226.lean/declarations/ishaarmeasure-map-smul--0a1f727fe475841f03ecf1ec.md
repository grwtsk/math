# isHaarMeasure_map_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4eae42f405f6e3b29db29aa2e64a0eb30ce3fb953ec2475b8baf019298973fd8",
  "kind": "instance",
  "lexical_name": "isHaarMeasure_map_smul",
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
  "slug": "ishaarmeasure-map-smul--0a1f727fe475841f03ecf1ec",
  "source": {
    "blob": "c08d50da36d7f6b84232d58537b55d6e13b88e26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 885,
    "line": 871,
    "path": "GRWTSK/Topology/GeneralTopology/Measure/Variant15ffdf1b3864a6465ca98485f38a07b1f4c224b845917786d1733de5621c7226.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0a1f727fe475841f03ecf1ec5ead691a6e1fac1d00834b87cb87d20f87dab611",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Measure/Variant15ffdf1b3864a6465ca98485f38a07b1f4c224b845917786d1733de5621c7226.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4eae42f405f6e3b29db29aa2e64a0eb30ce3fb953ec2475b8baf019298973fd8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 871–885.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isHaarMeasure_map_smul {α} [BorelSpace G] [IsTopologicalGroup G]
    [Group α] [MulAction α G] [SMulCommClass α G G] [ContinuousConstSMul α G] (a : α) :
    IsHaarMeasure (Measure.map (a • · : G → G) μ) where
  toIsMulLeftInvariant := isMulLeftInvariant_map_smul _
  lt_top_of_isCompact K hK := by
    let F := (Homeomorph.smul a (α := G)).toMeasurableEquiv
    change map F μ K < ∞
    rw [F.map_apply K]
    exact IsCompact.measure_lt_top <| (Homeomorph.isCompact_preimage (Homeomorph.smul a)).2 hK
  toIsOpenPosMeasure :=
    (continuous_const_smul a).isOpenPosMeasure_map (MulAction.surjective a)

/-- The image of a Haar measure under right multiplication is again a Haar measure. -/
@[to_additive isHaarMeasure_map_add_right
  /-- The image of a Haar measure under right addition is again a Haar measure. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Measure/Variant15ffdf1b3864a6465ca98485f38a07b1f4c224b845917786d1733de5621c7226.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Measure/Variant15ffdf1b3864a6465ca98485f38a07b1f4c224b845917786d1733de5621c7226.lean#L871).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c08d50da36d7f6b84232d58537b55d6e13b88e26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
