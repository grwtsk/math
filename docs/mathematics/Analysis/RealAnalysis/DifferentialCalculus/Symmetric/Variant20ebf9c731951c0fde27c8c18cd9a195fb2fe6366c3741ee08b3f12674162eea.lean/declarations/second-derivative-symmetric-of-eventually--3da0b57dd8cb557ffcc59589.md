# second_derivative_symmetric_of_eventually

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b85dcf8f-68fd-1541-417f-b89951819584",
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
  "slug": "second-derivative-symmetric-of-eventually--3da0b57dd8cb557ffcc59589",
  "source": {
    "blob": "5a474e86d0518afb248ad5433ab11eda31f84405",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 490,
    "line": 472,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant20ebf9c731951c0fde27c8c18cd9a195fb2fe6366c3741ee08b3f12674162eea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3da0b57dd8cb557ffcc59589b7696c36d6109e6bec8a1a0288c64d260ad6a298",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant20ebf9c731951c0fde27c8c18cd9a195fb2fe6366c3741ee08b3f12674162eea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b85dcf8f-68fd-1541-417f-b89951819584`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 472–490.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem second_derivative_symmetric_of_eventually [IsRCLikeNormedField 𝕜]
    {f' : E → E →L[𝕜] F} {x : E}
    {f'' : E →L[𝕜] E →L[𝕜] F} (hf : ∀ᶠ y in 𝓝 x, HasFDerivAt f (f' y) y)
    (hx : HasFDerivAt f' f'' x) (v w : E) : f'' v w = f'' w v := by
  let _ := IsRCLikeNormedField.rclike 𝕜
  let _ : NormedSpace ℝ E := NormedSpace.restrictScalars ℝ 𝕜 E
  let _ : NormedSpace ℝ F := NormedSpace.restrictScalars ℝ 𝕜 F
  let f'R : E → E →L[ℝ] F := fun x ↦ (f' x).restrictScalars ℝ
  let f''R : E →L[ℝ] E →L[ℝ] F := f''.bilinearRestrictScalars ℝ
  have hfR : ∀ᶠ y in 𝓝 x, HasFDerivAt f (f'R y) y := by
    filter_upwards [hf] with y hy using HasFDerivAt.restrictScalars ℝ hy
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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant20ebf9c731951c0fde27c8c18cd9a195fb2fe6366c3741ee08b3f12674162eea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant20ebf9c731951c0fde27c8c18cd9a195fb2fe6366c3741ee08b3f12674162eea.lean#L472).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a474e86d0518afb248ad5433ab11eda31f84405` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
