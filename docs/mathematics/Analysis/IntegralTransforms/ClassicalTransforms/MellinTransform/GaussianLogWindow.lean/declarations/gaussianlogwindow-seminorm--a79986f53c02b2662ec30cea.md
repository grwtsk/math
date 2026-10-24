# gaussianLogWindow_seminorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c24da17-573f-fc77-6f7a-b654471a11fb",
  "kind": "theorem",
  "lexical_name": "gaussianLogWindow_seminorm",
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
  "slug": "gaussianlogwindow-seminorm--a79986f53c02b2662ec30cea",
  "source": {
    "blob": "18e53ce5c1fd56c040b7c66518318ee8bf753eb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 83,
    "path": "GRWTSK/Analysis/MellinTransform/GaussianLogWindow.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a79986f53c02b2662ec30cead55492db2551b6a5e82614c6a12d0625bd07153e",
  "verification": {
    "reference": "docs/verification/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianLogWindow.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c24da17-573f-fc77-6f7a-b654471a11fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gaussianLogWindow_seminorm (V : SchwartzMap ℝ ℂ) (hV : HasCompactSupport (V:ℝ→ℂ))
    (L : ℝ) (hL : 0≤L) (hbox : ∀s,V s≠0→|s|≤L) (a : ℝ) (k n : ℕ) :
    ∃C : ℝ,0<C ∧ ∀R : ℝ,0<R→
      SchwartzMap.seminorm ℝ k n (gaussianLogWindow V hV R)≤C*R^(-a) := by
  obtain ⟨B,hB,hbound⟩ := gaussianLogWindow_derivative_bound V hV L hL a n
  refine ⟨(1+L^k)*B,by positivity,?_⟩
  intro R hR
  apply SchwartzMap.seminorm_le_bound' ℝ k n _ (by positivity)
  intro y
  by_cases hy : |y|≤L
  · calc
      _ ≤ L^k*(B*R^(-a)) := mul_le_mul (pow_le_pow_left₀ (abs_nonneg _) hy k)
        (hbound R hR y hy) (norm_nonneg _) (pow_nonneg hL _)
      _ ≤ _ := by nlinarith [mul_pos hB (Real.rpow_pos_of_pos hR (-a))]
  · rw [gaussianLogWindow_derivative_outside V hV L hbox R y (lt_of_not_ge hy) n,norm_zero,mul_zero]
    positivity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianLogWindow.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MellinTransform/GaussianLogWindow.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18e53ce5c1fd56c040b7c66518318ee8bf753eb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
