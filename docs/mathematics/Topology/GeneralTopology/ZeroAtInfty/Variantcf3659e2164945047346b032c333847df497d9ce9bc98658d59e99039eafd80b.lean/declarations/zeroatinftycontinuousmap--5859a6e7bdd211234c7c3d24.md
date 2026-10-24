# ZeroAtInftyContinuousMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3f8691e598d5069568e613168e494a83266e8d4428175bb63f97a33f75b45b81",
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
  "slug": "zeroatinftycontinuousmap--5859a6e7bdd211234c7c3d24",
  "source": {
    "blob": "0868213798a1c636cc1a0cbcb614e9944f61bd1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 42,
    "path": "GRWTSK/Topology/GeneralTopology/ZeroAtInfty/Variantcf3659e2164945047346b032c333847df497d9ce9bc98658d59e99039eafd80b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5859a6e7bdd211234c7c3d249a5a8e3f8ecc9a873ae7069a71083f7936fb1116",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ZeroAtInfty/Variantcf3659e2164945047346b032c333847df497d9ce9bc98658d59e99039eafd80b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3f8691e598d5069568e613168e494a83266e8d4428175bb63f97a33f75b45b81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ZeroAtInftyContinuousMap (α : Type u) (β : Type v) [TopologicalSpace α] [Zero β]
    [TopologicalSpace β] extends ContinuousMap α β : Type max u v where
  /-- The function tends to zero along the `cocompact` filter. -/
  zero_at_infty' : Tendsto toFun (cocompact α) (𝓝 0)
#align zero_at_infty_continuous_map ZeroAtInftyContinuousMap

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ZeroAtInfty/Variantcf3659e2164945047346b032c333847df497d9ce9bc98658d59e99039eafd80b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ZeroAtInfty/Variantcf3659e2164945047346b032c333847df497d9ce9bc98658d59e99039eafd80b.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0868213798a1c636cc1a0cbcb614e9944f61bd1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
