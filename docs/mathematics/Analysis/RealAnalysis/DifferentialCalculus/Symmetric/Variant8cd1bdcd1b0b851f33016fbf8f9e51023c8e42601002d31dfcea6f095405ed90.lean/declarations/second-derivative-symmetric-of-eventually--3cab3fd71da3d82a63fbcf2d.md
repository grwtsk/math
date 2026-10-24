# second_derivative_symmetric_of_eventually

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e4ab4652a30b92ccfd172a3911a1eb77cee60984",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 436,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2e7c7f3a-2d26-3136-aa34-78e062960041",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:88ac261f-15a0-2148-35d7-c1b629d41249",
  "kind": "theorem",
  "lexical_name": "second_derivative_symmetric_of_eventually",
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
  "slug": "second-derivative-symmetric-of-eventually--3cab3fd71da3d82a63fbcf2d",
  "source": {
    "blob": "e4ab4652a30b92ccfd172a3911a1eb77cee60984",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 466,
    "line": 436,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3cab3fd71da3d82a63fbcf2dfa49ee979528724db7ae626870518103fb65a9c1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88ac261f-15a0-2148-35d7-c1b629d41249`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 436–466.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem second_derivative_symmetric_of_eventually [IsRCLikeNormedField 𝕜]
    {f' : E → E →L[𝕜] F} {x : E}
    {f'' : E →L[𝕜] E →L[𝕜] F} (hf : ∀ᶠ y in 𝓝 x, HasFDerivAt f (f' y) y)
    (hx : HasFDerivAt f' f'' x) (v w : E) : f'' v w = f'' w v := by
  let _ := IsRCLikeNormedField.rclike 𝕜
  let _ : NormedSpace ℝ E := NormedSpace.restrictScalars ℝ 𝕜 E
  let _ : NormedSpace ℝ F := NormedSpace.restrictScalars ℝ 𝕜 F
  let _ : LinearMap.CompatibleSMul E F ℝ 𝕜 := LinearMap.IsScalarTower.compatibleSMul
  let _ : LinearMap.CompatibleSMul E (E →L[𝕜] F) ℝ 𝕜 := LinearMap.IsScalarTower.compatibleSMul
  let f'R : E → E →L[ℝ] F := fun x ↦ (f' x).restrictScalars ℝ
  have hfR : ∀ᶠ y in 𝓝 x, HasFDerivAt f (f'R y) y := by
    filter_upwards [hf] with y hy using HasFDerivAt.restrictScalars ℝ hy
  let f''Rl : E →ₗ[ℝ] E →ₗ[ℝ] F :=
  { toFun := fun x ↦
      { toFun := fun y ↦ f'' x y
        map_add' := by simp
        map_smul' := by simp }
    map_add' := by intros; ext; simp
    map_smul' := by intros; ext; simp }
  let f''R : E →L[ℝ] E →L[ℝ] F := by
    refine LinearMap.mkContinuous₂ f''Rl (‖f''‖) (fun x y ↦ ?_)
    simp only [LinearMap.coe_mk, AddHom.coe_mk, f''Rl]
    exact ContinuousLinearMap.le_opNorm₂ f'' x y
  have : HasFDerivAt f'R f''R x := by
    simp only [hasFDerivAt_iff_tendsto] at hx ⊢
    exact hx
  change f''R v w = f''R w v
  exact second_derivative_symmetric_of_eventually_of_real hfR this v w

/-- If a function is differentiable, and has two derivatives at `x`, then the second
derivative is symmetric. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean#L436).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4ab4652a30b92ccfd172a3911a1eb77cee60984` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
