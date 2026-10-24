# toVectorBundle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bdcce71ab4bd64bf7c87dfd0cffc8624d418e43c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 838,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3a835a9da93c2b8258f1e4a4ad9e489f87ea627f4d08e8b543b16aaf546bc26b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:813c41c5-973a-113a-798d-bcc93e5855f3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:69a9ad09-8d00-3737-e5a1-7b72b9ab209f",
  "kind": "theorem",
  "lexical_name": "toVectorBundle",
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
  "slug": "tovectorbundle--21b77daa6a41b4a3c118eaaa",
  "source": {
    "blob": "bdcce71ab4bd64bf7c87dfd0cffc8624d418e43c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 884,
    "line": 838,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant3a835a9da93c2b8258f1e4a4ad9e489f87ea627f4d08e8b543b16aaf546bc26b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21b77daa6a41b4a3c118eaaab7bb2a740931acb9d614a69f6113c7fc93dbbd0e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant3a835a9da93c2b8258f1e4a4ad9e489f87ea627f4d08e8b543b16aaf546bc26b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69a9ad09-8d00-3737-e5a1-7b72b9ab209f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 838–884.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toVectorBundle : @VectorBundle R _ F E _ _ _ _ _ _ a.totalSpaceTopology _ a.toFiberBundle :=
  letI := a.totalSpaceTopology; letI := a.toFiberBundle
  { trivialization_linear' := by
      rintro _ ⟨e, he, rfl⟩
      apply linear_trivializationOfMemPretrivializationAtlas
    continuousOn_coordChange' := by
      rintro _ _ ⟨e, he, rfl⟩ ⟨e', he', rfl⟩
      refine (a.continuousOn_coordChange he he').congr fun b hb ↦ ?_
      ext v
      haveI h₁ := a.linear_trivializationOfMemPretrivializationAtlas he
      haveI h₂ := a.linear_trivializationOfMemPretrivializationAtlas he'
      rw [trivializationOfMemPretrivializationAtlas] at h₁ h₂
      rw [a.coordChange_apply he he' hb v, ContinuousLinearEquiv.coe_coe,
        Trivialization.coordChangeL_apply]
      exacts [rfl, hb] }

end VectorPrebundle

namespace ContinuousLinearMap

variable {𝕜₁ 𝕜₂ : Type*} [NontriviallyNormedField 𝕜₁] [NontriviallyNormedField 𝕜₂]
variable {σ : 𝕜₁ →+* 𝕜₂}
variable {B' : Type*} [TopologicalSpace B']
variable [NormedSpace 𝕜₁ F] [∀ x, Module 𝕜₁ (E x)] [TopologicalSpace (TotalSpace F E)]
variable {F' : Type*} [NormedAddCommGroup F'] [NormedSpace 𝕜₂ F'] {E' : B' → Type*}
  [∀ x, AddCommMonoid (E' x)] [∀ x, Module 𝕜₂ (E' x)] [TopologicalSpace (TotalSpace F' E')]

variable [FiberBundle F E] [VectorBundle 𝕜₁ F E]
variable [∀ x, TopologicalSpace (E' x)] [FiberBundle F' E'] [VectorBundle 𝕜₂ F' E']
variable (F' E')

/-- When `ϕ` is a continuous (semi)linear map between the fibers `E x` and `E' y` of two vector
bundles `E` and `E'`, `ContinuousLinearMap.inCoordinates F E F' E' x₀ x y₀ y ϕ` is a coordinate
change of this continuous linear map w.r.t. the chart around `x₀` and the chart around `y₀`.

It is defined by composing `ϕ` with appropriate coordinate changes given by the vector bundles
`E` and `E'`.
We use the operations `Trivialization.continuousLinearMapAt` and `Trivialization.symmL` in the
definition, instead of `Trivialization.continuousLinearEquivAt`, so that
`ContinuousLinearMap.inCoordinates` is defined everywhere (but see
`ContinuousLinearMap.inCoordinates_eq`).

This is the (second component of the) underlying function of a trivialization of the hom-bundle
(see `hom_trivializationAt_apply`). However, note that `ContinuousLinearMap.inCoordinates` is
defined even when `x` and `y` live in different base sets.
Therefore, it is also convenient when working with the hom-bundle between pulled back bundles.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant3a835a9da93c2b8258f1e4a4ad9e489f87ea627f4d08e8b543b16aaf546bc26b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant3a835a9da93c2b8258f1e4a4ad9e489f87ea627f4d08e8b543b16aaf546bc26b.lean#L838).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdcce71ab4bd64bf7c87dfd0cffc8624d418e43c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
