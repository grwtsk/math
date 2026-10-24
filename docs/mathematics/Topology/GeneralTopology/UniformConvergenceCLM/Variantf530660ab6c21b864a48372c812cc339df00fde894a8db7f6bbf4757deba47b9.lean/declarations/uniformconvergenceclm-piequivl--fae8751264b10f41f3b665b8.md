# UniformConvergenceCLM.piEquivL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a9163db129203c52b867475917b86adc9a81a6076a937482aeaf525c4ba02c1d",
  "kind": "def",
  "lexical_name": "UniformConvergenceCLM.piEquivL",
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
  "slug": "uniformconvergenceclm-piequivl--fae8751264b10f41f3b665b8",
  "source": {
    "blob": "2bdb4be3b2fc294f37fd7469539d21757801eec9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 573,
    "line": 553,
    "path": "GRWTSK/Topology/GeneralTopology/UniformConvergenceCLM/Variantf530660ab6c21b864a48372c812cc339df00fde894a8db7f6bbf4757deba47b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fae8751264b10f41f3b665b8c61ed498d1d580ea7e6eb2eaa51cc9be54c427e6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformConvergenceCLM/Variantf530660ab6c21b864a48372c812cc339df00fde894a8db7f6bbf4757deba47b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a9163db129203c52b867475917b86adc9a81a6076a937482aeaf525c4ba02c1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 553–573.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def UniformConvergenceCLM.piEquivL (𝔖 : Set (Set E)) :
    (Π i, E →Lᵤ[𝕜, 𝔖] F i) ≃L[𝕜] (E →Lᵤ[𝕜, 𝔖] Π i, F i) :=
  letI : ∀ i, UniformSpace (F i) := fun i ↦ IsTopologicalAddGroup.rightUniformSpace (F i)
  haveI : ∀ i, IsUniformAddGroup (F i) := fun i ↦ isUniformAddGroup_of_addCommGroup
  { toFun F := ContinuousLinearMap.pi F
    invFun f i := (ContinuousLinearMap.proj i).comp f
    map_add' _ _ := by ext; rfl
    map_smul' _ _ := by ext; rfl
    left_inv _ := by ext; rfl
    right_inv _ := by ext; rfl
    continuous_toFun := by
      rw [UniformConvergenceCLM.isEmbedding_coeFn _ _ _ |>.continuous_iff]
      rw [UniformOnFun.uniformEquivPiComm _ _ |>.isUniformEmbedding.isEmbedding.continuous_iff]
      refine continuous_pi fun i ↦ ?_
      exact UniformConvergenceCLM.isEmbedding_coeFn _ _ _ |>.continuous.comp (continuous_apply i)
    continuous_invFun := by
      apply continuous_pi (A := fun i ↦ E →Lᵤ[𝕜, 𝔖] F i) fun i ↦ ?_
      exact (ContinuousLinearMap.proj i : (Π j, F j) →L[𝕜] F i).postcompUniformConvergenceCLM 𝔖
        |>.continuous}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UniformConvergenceCLM/Variantf530660ab6c21b864a48372c812cc339df00fde894a8db7f6bbf4757deba47b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformConvergenceCLM/Variantf530660ab6c21b864a48372c812cc339df00fde894a8db7f6bbf4757deba47b9.lean#L553).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bdb4be3b2fc294f37fd7469539d21757801eec9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
