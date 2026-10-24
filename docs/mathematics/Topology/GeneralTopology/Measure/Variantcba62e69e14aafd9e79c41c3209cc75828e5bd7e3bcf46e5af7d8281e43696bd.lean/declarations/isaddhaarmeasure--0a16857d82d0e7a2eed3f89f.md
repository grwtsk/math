# IsAddHaarMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:630a2475786088e1bbd66aa243b5befa72723f07626fc39d60c63f817a5e9ef8",
  "kind": "class",
  "lexical_name": "IsAddHaarMeasure",
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
  "slug": "isaddhaarmeasure--0a16857d82d0e7a2eed3f89f",
  "source": {
    "blob": "6b47bb8ce072504dfaf9080749c99b525d35c91b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 784,
    "line": 772,
    "path": "GRWTSK/Topology/GeneralTopology/Measure/Variantcba62e69e14aafd9e79c41c3209cc75828e5bd7e3bcf46e5af7d8281e43696bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0a16857d82d0e7a2eed3f89f6b2ab634f3d5788b6c12a04549869d9e4aeb78f4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Measure/Variantcba62e69e14aafd9e79c41c3209cc75828e5bd7e3bcf46e5af7d8281e43696bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:630a2475786088e1bbd66aa243b5befa72723f07626fc39d60c63f817a5e9ef8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 772–784.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsAddHaarMeasure {G : Type*} [AddGroup G] [TopologicalSpace G] [MeasurableSpace G]
    (μ : Measure G) : Prop
    extends IsFiniteMeasureOnCompacts μ, IsAddLeftInvariant μ, IsOpenPosMeasure μ

/-- A measure on a group is a Haar measure if it is left-invariant, and gives finite mass to
compact sets and positive mass to open sets.

Textbooks generally require an additional regularity assumption to ensure nice behavior on
arbitrary locally compact groups. Use `[IsHaarMeasure μ] [Regular μ]` or
`[IsHaarMeasure μ] [InnerRegular μ]` in these situations. Note that a Haar measure in our
sense is automatically regular and inner regular on second countable locally compact groups, as
checked just below this definition. -/
@[to_additive existing]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Measure/Variantcba62e69e14aafd9e79c41c3209cc75828e5bd7e3bcf46e5af7d8281e43696bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Measure/Variantcba62e69e14aafd9e79c41c3209cc75828e5bd7e3bcf46e5af7d8281e43696bd.lean#L772).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b47bb8ce072504dfaf9080749c99b525d35c91b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
