# ZeroAtInftyContinuousMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f31a0c6ff0f1b1008bf8a497f6435e0e66f698f507c805b994caede39a438f3",
  "kind": "structure",
  "lexical_name": "ZeroAtInftyContinuousMap",
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
  "slug": "zeroatinftycontinuousmap--6988eed63351aafcb47feb38",
  "source": {
    "blob": "93865c911278412182d771e2773ef858e7b04f2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 48,
    "path": "GRWTSK/Topology/GeneralTopology/ZeroAtInfty/Variantba73c9ba129de3338008c5df0d185cf64b2f756c72d3ef6a194973cece9ae8af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6988eed63351aafcb47feb388d45e841f84bba40b768cced5d35503738bfbdb5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ZeroAtInfty/Variantba73c9ba129de3338008c5df0d185cf64b2f756c72d3ef6a194973cece9ae8af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f31a0c6ff0f1b1008bf8a497f6435e0e66f698f507c805b994caede39a438f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ZeroAtInftyContinuousMap (α : Type u) (β : Type v) [TopologicalSpace α] [Zero β]
    [TopologicalSpace β] : Type max u v extends ContinuousMap α β where
  /-- The function tends to zero along the `cocompact` filter. -/
  zero_at_infty' : Tendsto toFun (cocompact α) (𝓝 0)

@[inherit_doc]
scoped[ZeroAtInfty] notation (priority := 2000) "C₀(" α ", " β ")" => ZeroAtInftyContinuousMap α β

@[inherit_doc]
scoped[ZeroAtInfty] notation α " →C₀ " β => ZeroAtInftyContinuousMap α β

open ZeroAtInfty

section

/-- `ZeroAtInftyContinuousMapClass F α β` states that `F` is a type of continuous maps which
vanish at infinity.

You should also extend this typeclass when you extend `ZeroAtInftyContinuousMap`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ZeroAtInfty/Variantba73c9ba129de3338008c5df0d185cf64b2f756c72d3ef6a194973cece9ae8af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ZeroAtInfty/Variantba73c9ba129de3338008c5df0d185cf64b2f756c72d3ef6a194973cece9ae8af.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93865c911278412182d771e2773ef858e7b04f2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
