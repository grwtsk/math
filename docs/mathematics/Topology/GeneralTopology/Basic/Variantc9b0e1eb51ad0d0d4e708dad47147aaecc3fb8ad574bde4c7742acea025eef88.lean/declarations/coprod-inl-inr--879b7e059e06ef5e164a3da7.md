# coprod_inl_inr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d5a7b0730e93bc941e79cfa8beeea0777006a036",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1169,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c9b0e1eb51ad0d0d4e708dad47147aaecc3fb8ad574bde4c7742acea025eef88.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:08a492b9-5bf2-0877-9c35-15afc60433e0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eacc4b49-bc8b-0b86-d38d-416eeafe3edb",
  "kind": "theorem",
  "lexical_name": "coprod_inl_inr",
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
  "slug": "coprod-inl-inr--879b7e059e06ef5e164a3da7",
  "source": {
    "blob": "d5a7b0730e93bc941e79cfa8beeea0777006a036",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1182,
    "line": 1169,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantc9b0e1eb51ad0d0d4e708dad47147aaecc3fb8ad574bde4c7742acea025eef88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:879b7e059e06ef5e164a3da7eaddbc6e8eae676c8a7bb4175e60f3309d0d1174",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantc9b0e1eb51ad0d0d4e708dad47147aaecc3fb8ad574bde4c7742acea025eef88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eacc4b49-bc8b-0b86-d38d-416eeafe3edb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1169–1182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coprod_inl_inr [ContinuousAdd M₁] [ContinuousAdd M'₁] :
    (ContinuousLinearMap.inl R₁ M₁ M'₁).coprod (ContinuousLinearMap.inr R₁ M₁ M'₁) =
      ContinuousLinearMap.id R₁ (M₁ × M'₁) :=
  by apply coe_injective; apply LinearMap.coprod_inl_inr
#align continuous_linear_map.coprod_inl_inr ContinuousLinearMap.coprod_inl_inr

section

variable {R S : Type*} [Semiring R] [Semiring S] [Module R M₁] [Module R M₂] [Module R S]
  [Module S M₂] [IsScalarTower R S M₂] [TopologicalSpace S] [ContinuousSMul S M₂]

/-- The linear map `fun x => c x • f`.  Associates to a scalar-valued linear map and an element of
`M₂` the `M₂`-valued linear map obtained by multiplying the two (a.k.a. tensoring by `M₂`).
See also `ContinuousLinearMap.smulRightₗ` and `ContinuousLinearMap.smulRightL`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantc9b0e1eb51ad0d0d4e708dad47147aaecc3fb8ad574bde4c7742acea025eef88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantc9b0e1eb51ad0d0d4e708dad47147aaecc3fb8ad574bde4c7742acea025eef88.lean#L1169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5a7b0730e93bc941e79cfa8beeea0777006a036` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
