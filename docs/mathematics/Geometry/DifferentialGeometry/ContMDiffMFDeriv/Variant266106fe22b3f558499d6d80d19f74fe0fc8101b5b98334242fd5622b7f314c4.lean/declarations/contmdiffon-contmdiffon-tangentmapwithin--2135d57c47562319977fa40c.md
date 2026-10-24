# ContMDiffOn.contMDiffOn_tangentMapWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a30afb0689985d5c351b5975ffcf5c9998a80f5e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 274,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/266106fe22b3f558499d6d80d19f74fe0fc8101b5b98334242fd5622b7f314c4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a4f3d092-39b3-67d4-e8d3-16c40222950f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2a6ccb7d-aec7-75ac-23af-2a77acb2d617",
  "kind": "theorem",
  "lexical_name": "ContMDiffOn.contMDiffOn_tangentMapWithin",
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
  "slug": "contmdiffon-contmdiffon-tangentmapwithin--2135d57c47562319977fa40c",
  "source": {
    "blob": "a30afb0689985d5c351b5975ffcf5c9998a80f5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 274,
    "path": "GRWTSK/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant266106fe22b3f558499d6d80d19f74fe0fc8101b5b98334242fd5622b7f314c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2135d57c47562319977fa40c84de9567f7faf8b93da08986ca62cd7eee8ff65e",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant266106fe22b3f558499d6d80d19f74fe0fc8101b5b98334242fd5622b7f314c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a6ccb7d-aec7-75ac-23af-2a77acb2d617`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContMDiffOn.contMDiffOn_tangentMapWithin
    (hf : CMDiff[s] n f) (hmn : m + 1 ≤ n) (hs : UniqueMDiff[s]) :
    CMDiff[(π E (TangentSpace I) ⁻¹' s)] m (tangentMap[s] f) := by
  intro x₀ hx₀
  let s' : Set (TangentBundle I M) := (π E (TangentSpace I) ⁻¹' s)
  let b₁ : TangentBundle I M → M := fun p ↦ p.1
  let v : Π (y : TangentBundle I M), TangentSpace% (b₁ y) := fun y ↦ y.2
  have hv : CMDiffAt[s'] m (fun y ↦ (v y : TangentBundle I M)) x₀ := contMDiffWithinAt_id
  let b₂ : TangentBundle I M → M' := f ∘ b₁
  have hb₂ : CMDiffAt[s'] m b₂ x₀ :=
    ((hf (b₁ x₀) hx₀).of_le (le_self_add.trans hmn)).comp _
      (contMDiffWithinAt_proj (TangentSpace I)) (fun x h ↦ h)
  let ϕ : Π (y : TangentBundle I M), TangentSpace% (b₁ y) →L[𝕜] TangentSpace% (b₂ y) :=
    fun y ↦ mfderiv[s] f (b₁ y)
  have hϕ : CMDiffAt[s'] m (fun y ↦ ContinuousLinearMap.inCoordinates E (TangentSpace I (M := M)) E'
      (TangentSpace I' (M := M')) (b₁ x₀) (b₁ y) (b₂ x₀) (b₂ y) (ϕ y)) x₀ := by
    have A : CMDiffAt[s] m (fun y ↦ ContinuousLinearMap.inCoordinates E (TangentSpace I (M := M)) E'
        (TangentSpace I' (M := M')) (b₁ x₀) y (b₂ x₀) (f y) (mfderiv[s] f y)) (b₁ x₀) :=
      .mfderivWithin_const (hf _ hx₀) hmn hx₀ hs
    exact A.comp _ (contMDiffWithinAt_proj (TangentSpace I)) (fun x h ↦ h)
  exact ContMDiffWithinAt.clm_apply_of_inCoordinates hϕ hv hb₂

/-- If a function is `C^n` on a domain with unique derivatives, with `1 ≤ n`, then its bundled
derivative is continuous there. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant266106fe22b3f558499d6d80d19f74fe0fc8101b5b98334242fd5622b7f314c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant266106fe22b3f558499d6d80d19f74fe0fc8101b5b98334242fd5622b7f314c4.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a30afb0689985d5c351b5975ffcf5c9998a80f5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
