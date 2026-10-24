# _root_.GRWTSK.Algebra.LinearAlgebra.Map.Variant1d9658824517ddbd24e1d86257b6dac5d68bd9fc72873d5f3ebb6af19ec951a5.MonoidHom.coe_toAdditive_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:005e9467-aa04-81a4-edc9-df31808dc30c",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.Map.Variant1d9658824517ddbd24e1d86257b6dac5d68bd9fc72873d5f3ebb6af19ec951a5.MonoidHom.coe_toAdditive_map",
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
  "slug": "root-grwtsk-algebra-linearalgebra-map-variant1d9658824517ddbd24e1d86257b--3ccefeec776e93b7160ebf60",
  "source": {
    "blob": "886a8be9d45546e6de468a20e03ac1314436c47d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 88,
    "path": "GRWTSK/Algebra/LinearAlgebra/Map/Variantd08c84239b81aa01809433390cc341dcef6444747ec1debc96483ea56852f0f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ccefeec776e93b7160ebf60ccdaf1f21a75324a5f1987d1a8a30f4668513bab",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Map/Variantd08c84239b81aa01809433390cc341dcef6444747ec1debc96483ea56852f0f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:005e9467-aa04-81a4-edc9-df31808dc30c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.Map.Variant1d9658824517ddbd24e1d86257b6dac5d68bd9fc72873d5f3ebb6af19ec951a5.MonoidHom.coe_toAdditive_map {G G₂ : Type*} [Group G] [Group G₂] (f : G →* G₂)
    (s : Subgroup G) :
    s.toAddSubgroup.map (MonoidHom.toAdditive f) = Subgroup.toAddSubgroup (s.map f) := rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Map/Variantd08c84239b81aa01809433390cc341dcef6444747ec1debc96483ea56852f0f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Map/Variantd08c84239b81aa01809433390cc341dcef6444747ec1debc96483ea56852f0f4.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `886a8be9d45546e6de468a20e03ac1314436c47d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
