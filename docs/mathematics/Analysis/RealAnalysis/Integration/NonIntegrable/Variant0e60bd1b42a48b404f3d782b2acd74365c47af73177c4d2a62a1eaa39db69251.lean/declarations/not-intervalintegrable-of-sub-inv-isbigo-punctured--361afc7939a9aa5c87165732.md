# not_intervalIntegrable_of_sub_inv_isBigO_punctured

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9fa6271-201b-852b-7288-94b8e1324e97",
  "kind": "theorem",
  "lexical_name": "not_intervalIntegrable_of_sub_inv_isBigO_punctured",
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
  "slug": "not-intervalintegrable-of-sub-inv-isbigo-punctured--361afc7939a9aa5c87165732",
  "source": {
    "blob": "0a99298877567a57f56f3f8e2d9fddcc3fc6470f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 177,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/NonIntegrable/Variant0e60bd1b42a48b404f3d782b2acd74365c47af73177c4d2a62a1eaa39db69251.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:361afc7939a9aa5c87165732474422583d0079097478f36e430c5ddf59acbec0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/NonIntegrable/Variant0e60bd1b42a48b404f3d782b2acd74365c47af73177c4d2a62a1eaa39db69251.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9fa6271-201b-852b-7288-94b8e1324e97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_intervalIntegrable_of_sub_inv_isBigO_punctured {f : ℝ → F} {a b c : ℝ}
    (hf : (fun x => (x - c)⁻¹) =O[𝓝[≠] c] f) (hne : a ≠ b) (hc : c ∈ [[a, b]]) :
    ¬IntervalIntegrable f volume a b := by
  have A : ∀ᶠ x in 𝓝[≠] c, HasDerivAt (fun x => Real.log (x - c)) (x - c)⁻¹ x := by
    filter_upwards [self_mem_nhdsWithin] with x hx
    simpa using ((hasDerivAt_id x).sub_const c).log (sub_ne_zero.2 hx)
  have B : Tendsto (fun x => ‖Real.log (x - c)‖) (𝓝[≠] c) atTop := by
    refine tendsto_abs_atBot_atTop.comp (Real.tendsto_log_nhdsNE_zero.comp ?_)
    rw [← sub_self c]
    exact ((hasDerivAt_id c).sub_const c).tendsto_nhdsNE one_ne_zero
  exact not_intervalIntegrable_of_tendsto_norm_atTop_of_deriv_isBigO_punctured
    (A.mono fun x hx => hx.differentiableAt) B
    (hf.congr' (A.mono fun x hx => hx.deriv.symm) EventuallyEq.rfl) hne hc

/-- The function `fun x => (x - c)⁻¹` is integrable on `a..b` if and only if
`a = b` or `c ∉ [a, b]`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/NonIntegrable/Variant0e60bd1b42a48b404f3d782b2acd74365c47af73177c4d2a62a1eaa39db69251.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/NonIntegrable/Variant0e60bd1b42a48b404f3d782b2acd74365c47af73177c4d2a62a1eaa39db69251.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a99298877567a57f56f3f8e2d9fddcc3fc6470f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
