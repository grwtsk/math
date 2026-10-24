# ContinuousLinearEquiv.iteratedFDerivWithin_comp_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b16cbfa-1c41-6572-9663-b7505b3b2437",
  "kind": "theorem",
  "lexical_name": "ContinuousLinearEquiv.iteratedFDerivWithin_comp_right",
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
  "slug": "continuouslinearequiv-iteratedfderivwithin-comp-right--4a5f41b0430efe3c80f21fda",
  "source": {
    "blob": "15943630e54e3f746360263ac0408991b6e34331",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 468,
    "line": 444,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantce7a94b09dfe2e1895f3a9c1ef7d755c951394c7a524cf907ea5484cfeb03c6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a5f41b0430efe3c80f21fda9514bf6ce99a227e695ea2e885c7fe834c0b5a15",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantce7a94b09dfe2e1895f3a9c1ef7d755c951394c7a524cf907ea5484cfeb03c6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b16cbfa-1c41-6572-9663-b7505b3b2437`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 444–468.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousLinearEquiv.iteratedFDerivWithin_comp_right (g : G ≃L[𝕜] E) (f : E → F)
    (hs : UniqueDiffOn 𝕜 s) {x : G} (hx : g x ∈ s) (i : ℕ) :
    iteratedFDerivWithin 𝕜 i (f ∘ g) (g ⁻¹' s) x =
      (iteratedFDerivWithin 𝕜 i f s (g x)).compContinuousLinearMap fun _ => g := by
  induction i generalizing x with ext1 m
  | zero =>
    simp only [iteratedFDerivWithin_zero_apply, comp_apply,
      ContinuousMultilinearMap.compContinuousLinearMap_apply]
  | succ i IH =>
    simp only [ContinuousMultilinearMap.compContinuousLinearMap_apply,
      ContinuousLinearEquiv.coe_coe, iteratedFDerivWithin_succ_apply_left]
    have : fderivWithin 𝕜 (iteratedFDerivWithin 𝕜 i (f ∘ g) (g ⁻¹' s)) (g ⁻¹' s) x =
        fderivWithin 𝕜
          (ContinuousLinearEquiv.continuousMultilinearMapCongrLeft _ (fun _x : Fin i => g) ∘
            (iteratedFDerivWithin 𝕜 i f s ∘ g)) (g ⁻¹' s) x :=
      fderivWithin_congr' (@IH) hx
    rw [this, ContinuousLinearEquiv.comp_fderivWithin _ (g.uniqueDiffOn_preimage_iff.2 hs x hx)]
    simp only [ContinuousLinearMap.comp_apply, ContinuousLinearEquiv.coe_coe,
      ContinuousLinearEquiv.continuousMultilinearMapCongrLeft_apply,
      ContinuousMultilinearMap.compContinuousLinearMap_apply]
    rw [ContinuousLinearEquiv.comp_right_fderivWithin _ (g.uniqueDiffOn_preimage_iff.2 hs x hx),
      ContinuousLinearMap.comp_apply, coe_coe, tail_def, tail_def]

/-- The iterated derivative of the composition with a linear map on the right is
obtained by composing the iterated derivative with the linear map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantce7a94b09dfe2e1895f3a9c1ef7d755c951394c7a524cf907ea5484cfeb03c6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantce7a94b09dfe2e1895f3a9c1ef7d755c951394c7a524cf907ea5484cfeb03c6d.lean#L444).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15943630e54e3f746360263ac0408991b6e34331` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
