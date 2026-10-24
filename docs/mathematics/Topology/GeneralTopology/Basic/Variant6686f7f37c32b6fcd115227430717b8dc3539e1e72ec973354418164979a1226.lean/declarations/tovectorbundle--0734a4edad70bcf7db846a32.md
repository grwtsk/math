# toVectorBundle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "da578940fc9a46d454b8e5d1bd13861e293fa597",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 930,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/6686f7f37c32b6fcd115227430717b8dc3539e1e72ec973354418164979a1226.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ce462f29-188c-8784-8506-a846ad7a220a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a822eb6d-c666-e35c-5328-b0250b06c908",
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
  "slug": "tovectorbundle--0734a4edad70bcf7db846a32",
  "source": {
    "blob": "da578940fc9a46d454b8e5d1bd13861e293fa597",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 977,
    "line": 930,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant6686f7f37c32b6fcd115227430717b8dc3539e1e72ec973354418164979a1226.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0734a4edad70bcf7db846a3283ee81ef15ef26eb7e94a6082ddb00f7fd03db8c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant6686f7f37c32b6fcd115227430717b8dc3539e1e72ec973354418164979a1226.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a822eb6d-c666-e35c-5328-b0250b06c908`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 930–977.

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
      have h₁ := a.linear_trivializationOfMemPretrivializationAtlas he
      have h₂ := a.linear_trivializationOfMemPretrivializationAtlas he'
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
We use the operations `Bundle.Trivialization.continuousLinearMapAt` and
`Bundle.Trivialization.symmL` in the definition, instead of
`Bundle.Trivialization.continuousLinearEquivAt`, so that
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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant6686f7f37c32b6fcd115227430717b8dc3539e1e72ec973354418164979a1226.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant6686f7f37c32b6fcd115227430717b8dc3539e1e72ec973354418164979a1226.lean#L930).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da578940fc9a46d454b8e5d1bd13861e293fa597` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
