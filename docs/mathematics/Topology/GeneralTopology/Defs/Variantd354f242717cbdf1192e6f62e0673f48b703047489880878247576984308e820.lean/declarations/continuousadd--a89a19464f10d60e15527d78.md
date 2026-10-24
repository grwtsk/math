# ContinuousAdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3e0f38420c2ec814aa457d346f32832c608b3df3c6495852dfcd5206c4f5b7b",
  "kind": "class",
  "lexical_name": "ContinuousAdd",
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
  "slug": "continuousadd--a89a19464f10d60e15527d78",
  "source": {
    "blob": "6abc2ebe2f5926f9e471d2905278fcfe4de7467a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 50,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variantd354f242717cbdf1192e6f62e0673f48b703047489880878247576984308e820.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a89a19464f10d60e15527d78f2af0c23859123729151f665c80f1b20ab50b475",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variantd354f242717cbdf1192e6f62e0673f48b703047489880878247576984308e820.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3e0f38420c2ec814aa457d346f32832c608b3df3c6495852dfcd5206c4f5b7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class ContinuousAdd (M : Type*) [TopologicalSpace M] [Add M] : Prop where
  continuous_add : Continuous fun p : M × M => p.1 + p.2

/-- Basic hypothesis to talk about a topological monoid or a topological semigroup.
A topological monoid over `M`, for example, is obtained by requiring both the instances `Monoid M`
and `ContinuousMul M`.

Continuity in each argument separately can be stated using `SeparatelyContinuousMul α`. If one wants
only continuity in either the left or right argument, but not both one can use
`ContinuousConstSMul α α`/`ContinuousConstSMul αᵐᵒᵖ α`. -/
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variantd354f242717cbdf1192e6f62e0673f48b703047489880878247576984308e820.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variantd354f242717cbdf1192e6f62e0673f48b703047489880878247576984308e820.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6abc2ebe2f5926f9e471d2905278fcfe4de7467a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
