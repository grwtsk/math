# Context

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c093ad1b9f8c78f35267b96426097ada20d1ac72c63273e134a1b4ea2c4f2ddf",
  "kind": "structure",
  "lexical_name": "Context",
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
  "slug": "context--f5f449acb43d8a57173707ae",
  "source": {
    "blob": "a2bc54400bd2608144adb2552600075e8efb1e30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 24,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NonlinearDAlembertMMS/Variantc6717cabc9d73c60c41ab5680fdb7f8052fb783e2a0a4f562ef5f72e71ee74b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f5f449acb43d8a57173707ae22ca3b1e35e2eceecd70d91000ea3efd99764649",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NonlinearDAlembertMMS/Variantc6717cabc9d73c60c41ab5680fdb7f8052fb783e2a0a4f562ef5f72e71ee74b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c093ad1b9f8c78f35267b96426097ada20d1ac72c63273e134a1b4ea2c4f2ddf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Context where
  Space : Type
  Measure : Type
  FunctionLike : Type
  ComparisonData : Type
  IsMetricMeasureSpacetime : Space -> Measure -> Prop
  IsCausalFunction : FunctionLike -> Prop
  HasMaximalWeakSubslope : FunctionLike -> Prop
  LocalityHolds : Prop
  ChainRuleHolds : Prop
  LeibnizRuleHolds : Prop
  InfinitesimalMinkowskian : Space -> Measure -> Prop
  TimelikeMeasureContractionProperty : Space -> Measure -> Prop
  WeakPDalembertComparison : ComparisonData -> Prop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NonlinearDAlembertMMS/Variantc6717cabc9d73c60c41ab5680fdb7f8052fb783e2a0a4f562ef5f72e71ee74b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NonlinearDAlembertMMS/Variantc6717cabc9d73c60c41ab5680fdb7f8052fb783e2a0a4f562ef5f72e71ee74b3.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2bc54400bd2608144adb2552600075e8efb1e30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
