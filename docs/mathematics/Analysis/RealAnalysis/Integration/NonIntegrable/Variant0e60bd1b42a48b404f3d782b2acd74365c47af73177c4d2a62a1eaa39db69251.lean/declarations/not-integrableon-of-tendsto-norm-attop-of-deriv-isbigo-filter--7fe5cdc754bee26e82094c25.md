# not_integrableOn_of_tendsto_norm_atTop_of_deriv_isBigO_filter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d21dd230-bd3a-08a4-2d31-d4a685be5222",
  "kind": "theorem",
  "lexical_name": "not_integrableOn_of_tendsto_norm_atTop_of_deriv_isBigO_filter",
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
  "slug": "not-integrableon-of-tendsto-norm-attop-of-deriv-isbigo-filter--7fe5cdc754bee26e82094c25",
  "source": {
    "blob": "0a99298877567a57f56f3f8e2d9fddcc3fc6470f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 104,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/NonIntegrable/Variant0e60bd1b42a48b404f3d782b2acd74365c47af73177c4d2a62a1eaa39db69251.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7fe5cdc754bee26e82094c25048468cb518c97305963b209e88ef4a2ffbeb83a",
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

Occurrence: `result:d21dd230-bd3a-08a4-2d31-d4a685be5222`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_integrableOn_of_tendsto_norm_atTop_of_deriv_isBigO_filter
    {f : ℝ → E} {g : ℝ → F}
    {k : Set ℝ} (l : Filter ℝ) [NeBot l] [TendstoIxxClass Icc l l]
    (hl : k ∈ l) (hd : ∀ᶠ x in l, DifferentiableAt ℝ f x) (hf : Tendsto (fun x => ‖f x‖) l atTop)
    (hfg : deriv f =O[l] g) : ¬IntegrableOn g k := by
  let a : E →ₗᵢ[ℝ] UniformSpace.Completion E := UniformSpace.Completion.toComplₗᵢ
  let f' := a ∘ f
  have h'd : ∀ᶠ x in l, DifferentiableAt ℝ f' x := by
    filter_upwards [hd] with x hx using a.toContinuousLinearMap.differentiableAt.comp x hx
  have h'f : Tendsto (fun x => ‖f' x‖) l atTop := hf.congr (fun x ↦ by simp [f'])
  have h'fg : deriv f' =O[l] g := by
    apply IsBigO.trans _ hfg
    rw [← isBigO_norm_norm]
    suffices (fun x ↦ ‖deriv f' x‖) =ᶠ[l] (fun x ↦ ‖deriv f x‖) by exact this.isBigO
    filter_upwards [hd] with x hx
    have : deriv f' x = a (deriv f x) := by
      rw [fderiv_comp_deriv x _ hx]
      · have : fderiv ℝ a (f x) = a.toContinuousLinearMap := a.toContinuousLinearMap.fderiv
        simp only [this]
        rfl
      · exact a.toContinuousLinearMap.differentiableAt
    simp only [this]
    simp
  exact not_integrableOn_of_tendsto_norm_atTop_of_deriv_isBigO_filter_aux l hl h'd h'f h'fg

/-- If `f` is eventually differentiable along a nontrivial filter `l : Filter ℝ` that is generated
by convex sets, the norm of `f` tends to infinity along `l`, and `f' = O(g)` along `l`, where `f'`
is the derivative of `f`, then `g` is not integrable on any interval `a..b` such that
`[a, b] ∈ l`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/NonIntegrable/Variant0e60bd1b42a48b404f3d782b2acd74365c47af73177c4d2a62a1eaa39db69251.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/NonIntegrable/Variant0e60bd1b42a48b404f3d782b2acd74365c47af73177c4d2a62a1eaa39db69251.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a99298877567a57f56f3f8e2d9fddcc3fc6470f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
