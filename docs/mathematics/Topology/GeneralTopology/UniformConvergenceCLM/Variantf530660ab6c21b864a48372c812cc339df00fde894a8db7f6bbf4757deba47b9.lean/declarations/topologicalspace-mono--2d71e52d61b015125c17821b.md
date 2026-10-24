# topologicalSpace_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7f79967-7672-7eed-ff43-98f62612cb08",
  "kind": "theorem",
  "lexical_name": "topologicalSpace_mono",
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
  "slug": "topologicalspace-mono--2d71e52d61b015125c17821b",
  "source": {
    "blob": "2bdb4be3b2fc294f37fd7469539d21757801eec9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 438,
    "line": 424,
    "path": "GRWTSK/Topology/GeneralTopology/UniformConvergenceCLM/Variantf530660ab6c21b864a48372c812cc339df00fde894a8db7f6bbf4757deba47b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d71e52d61b015125c17821b0d1883105ba28b70ffb0d62ab9c426bdfbf09e70",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformConvergenceCLM/Variantf530660ab6c21b864a48372c812cc339df00fde894a8db7f6bbf4757deba47b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7f79967-7672-7eed-ff43-98f62612cb08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 424–438.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem topologicalSpace_mono [TopologicalSpace F] [IsTopologicalAddGroup F] (h : 𝔖₂ ⊆ 𝔖₁) :
    instTopologicalSpace σ F 𝔖₁ ≤ instTopologicalSpace σ F 𝔖₂ := by
  let := IsTopologicalAddGroup.rightUniformSpace F
  have : IsUniformAddGroup F := isUniformAddGroup_of_addCommGroup
  simp_rw [← uniformity_toTopologicalSpace_eq]
  exact UniformSpace.toTopologicalSpace_mono (uniformSpace_mono σ F h)

variable {𝕜₁ : Type*} [NontriviallyNormedField 𝕜₁] {σ : 𝕜₁ →+* 𝕜₂} [Module 𝕜₁ E] in
variable {F} in
/-- Let `𝔖` be a family of bounded subsets of `F`, and `B : E × F → G` a bilinear map.
If `B` is (jointly) continuous, then it is `𝔖`-**hypocontinuous**:
in curried form, it defines a continuous linear map `E →L[𝕜] (F →Lᵤ[𝕜, 𝔖] G)`.

Note that, in full generality, the converse is not true.
See also `ContinuousLinearMap.continuous_of_continuous_uncurry`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UniformConvergenceCLM/Variantf530660ab6c21b864a48372c812cc339df00fde894a8db7f6bbf4757deba47b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformConvergenceCLM/Variantf530660ab6c21b864a48372c812cc339df00fde894a8db7f6bbf4757deba47b9.lean#L424).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bdb4be3b2fc294f37fd7469539d21757801eec9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
