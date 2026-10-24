# ContinuousEval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:080af7fcc8965209341391b39402c9716cb70c65af66470c81f353e6dd852031",
  "kind": "class",
  "lexical_name": "ContinuousEval",
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
  "slug": "continuouseval--d3ea2e3e5e0540e76b80d3f0",
  "source": {
    "blob": "6cd5e19fa0b439ace90574aa6e00910e434a81b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 22,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousEval/Variantb2e7e799f4c2635ae98fc474356d5140991f61579ad43c562fede1ca076b66f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d3ea2e3e5e0540e76b80d3f0a8768c1cf7dc502d7de95abd1021273204a18e03",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousEval/Variantb2e7e799f4c2635ae98fc474356d5140991f61579ad43c562fede1ca076b66f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:080af7fcc8965209341391b39402c9716cb70c65af66470c81f353e6dd852031`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class ContinuousEval (F : Type*) (X Y : outParam Type*) [FunLike F X Y]
    [TopologicalSpace F] [TopologicalSpace X] [TopologicalSpace Y] : Prop where
  /-- Evaluation of a bundled morphism at a point is continuous in both variables. -/
  continuous_eval : Continuous fun fx : F × X ↦ fx.1 fx.2

export ContinuousEval (continuous_eval)

variable {F X Y Z : Type*} [FunLike F X Y]
  [TopologicalSpace F] [TopologicalSpace X] [TopologicalSpace Y] [ContinuousEval F X Y]
  [TopologicalSpace Z] {f : Z → F} {g : Z → X} {s : Set Z} {z : Z}

@[continuity, fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousEval/Variantb2e7e799f4c2635ae98fc474356d5140991f61579ad43c562fede1ca076b66f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousEval/Variantb2e7e799f4c2635ae98fc474356d5140991f61579ad43c562fede1ca076b66f6.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cd5e19fa0b439ace90574aa6e00910e434a81b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
