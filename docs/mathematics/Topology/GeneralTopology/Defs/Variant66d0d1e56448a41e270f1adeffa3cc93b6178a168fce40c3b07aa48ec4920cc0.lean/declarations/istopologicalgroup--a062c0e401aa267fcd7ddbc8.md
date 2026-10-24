# IsTopologicalGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2da0004acfb8065bed562aef2877a0e81072bb09c59c18244907481daf13544",
  "kind": "class",
  "lexical_name": "IsTopologicalGroup",
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
  "slug": "istopologicalgroup--a062c0e401aa267fcd7ddbc8",
  "source": {
    "blob": "152af2a0f1d01191aec9e84866bd14b2a0136247",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 109,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variant66d0d1e56448a41e270f1adeffa3cc93b6178a168fce40c3b07aa48ec4920cc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a062c0e401aa267fcd7ddbc8e2373580d5eef7cf42a3d2724c63bff7d6bc8276",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variant66d0d1e56448a41e270f1adeffa3cc93b6178a168fce40c3b07aa48ec4920cc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2da0004acfb8065bed562aef2877a0e81072bb09c59c18244907481daf13544`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsTopologicalGroup (G : Type*) [TopologicalSpace G] [Group G] : Prop
    extends ContinuousMul G, ContinuousInv G

@[deprecated (since := "2025-02-14")] alias TopologicalGroup :=
  IsTopologicalGroup

/-- A typeclass saying that `p : G × G ↦ p.1 - p.2` is a continuous function. This property
automatically holds for topological additive groups but it also holds, e.g., for `ℝ≥0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variant66d0d1e56448a41e270f1adeffa3cc93b6178a168fce40c3b07aa48ec4920cc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variant66d0d1e56448a41e270f1adeffa3cc93b6178a168fce40c3b07aa48ec4920cc0.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `152af2a0f1d01191aec9e84866bd14b2a0136247` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
