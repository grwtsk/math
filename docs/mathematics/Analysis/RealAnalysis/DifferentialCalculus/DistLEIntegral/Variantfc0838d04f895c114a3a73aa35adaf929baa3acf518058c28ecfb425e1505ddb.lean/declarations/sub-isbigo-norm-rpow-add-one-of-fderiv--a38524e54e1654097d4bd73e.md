# sub_isBigO_norm_rpow_add_one_of_fderiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61afc59c-7d02-6066-170e-e6e1dc47c417",
  "kind": "theorem",
  "lexical_name": "sub_isBigO_norm_rpow_add_one_of_fderiv",
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
  "slug": "sub-isbigo-norm-rpow-add-one-of-fderiv--a38524e54e1654097d4bd73e",
  "source": {
    "blob": "1d9762174845f61f50e36d1ad73c4fa1201e72c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 184,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DistLEIntegral/Variantfc0838d04f895c114a3a73aa35adaf929baa3acf518058c28ecfb425e1505ddb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a38524e54e1654097d4bd73e5eb26d99aee09516fd4249abfbfb5c3368301e18",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/DistLEIntegral/Variantfc0838d04f895c114a3a73aa35adaf929baa3acf518058c28ecfb425e1505ddb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61afc59c-7d02-6066-170e-e6e1dc47c417`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sub_isBigO_norm_rpow_add_one_of_fderiv (hr : 0 ≤ r)
    (hdf : ∀ᶠ x in 𝓝 a, DifferentiableAt ℝ f x) (hderiv : fderiv ℝ f =O[𝓝 a] (‖· - a‖ ^ r)) :
    (f · - f a) =O[𝓝 a] (‖· - a‖ ^ (r + 1)) := by
  rcases hderiv.exists_pos with ⟨C, hC₀, hC⟩
  rw [Asymptotics.IsBigOWith_def] at hC
  rcases eventually_nhds_iff_ball.mp (hdf.and hC) with ⟨ε, hε₀, hε⟩
  refine .of_bound C ?_
  rw [eventually_nhds_iff_ball]
  refine ⟨ε, hε₀, fun y hy ↦ ?_⟩
  rw [Real.norm_of_nonneg (by positivity), Real.rpow_add_one' (by positivity) (by positivity),
    ← mul_assoc]
  have hsub : closedBall a ‖y - a‖ ⊆ ball a ε :=
    closedBall_subset_ball (mem_ball_iff_norm.mp hy)
  apply (convex_closedBall a ‖y - a‖).norm_image_sub_le_of_norm_fderiv_le (𝕜 := ℝ)
  · exact fun z hz ↦ (hε z <| hsub hz).1
  · intro z hz
    grw [(hε z <| hsub hz).2, Real.norm_of_nonneg (by positivity), mem_closedBall_iff_norm.mp hz]
  · simp
  · simp [dist_eq_norm_sub]

/-- Let `f : E → F` be a function differentiable in a neighborhood of `a`.
If $Df(x) = O(‖x - a‖ ^ r)$ as `x → a`, where `r ≥ 0`, and `f a = 0`,
then $f(x) = O(‖x - a‖ ^ {r + 1})$ as `x → a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/DistLEIntegral/Variantfc0838d04f895c114a3a73aa35adaf929baa3acf518058c28ecfb425e1505ddb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DistLEIntegral/Variantfc0838d04f895c114a3a73aa35adaf929baa3acf518058c28ecfb425e1505ddb.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d9762174845f61f50e36d1ad73c4fa1201e72c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
