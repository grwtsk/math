# gaussian_selected_slot_family

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a8bac48b-7063-09d0-1aee-66c0c9fd9fdf",
  "kind": "theorem",
  "lexical_name": "gaussian_selected_slot_family",
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
  "slug": "gaussian-selected-slot-family--5de206bd768245eef93ca302",
  "source": {
    "blob": "5b0aecaada254d4b9f2409f9780320169bbf0fc2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 119,
    "path": "GRWTSK/Analysis/MellinTransform/GaussianAnnularSeparation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5de206bd768245eef93ca3028d1269fb4c189dce9808f5f91b4cdb24b875adc3",
  "verification": {
    "reference": "docs/verification/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianAnnularSeparation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8bac48b-7063-09d0-1aee-66c0c9fd9fdf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gaussian_selected_slot_family {ι : Type*} [Fintype ι]
    (W : ι→ℝ→ℂ) (M : ι→ℝ) (hM : ∀i,0≤M i)
    (hwindow : ∀i y,W i (Real.exp y)≠0→|y|≤M i) :
    ∃V : SchwartzMap ℝ ℂ,∃hV : HasCompactSupport (V:ℝ→ℂ),
      (∀R : ℝ,0<R→∀x : ℝ,0<x→∀q : ι→ℝ,(∀i,0<q i)→
        Integrable (fun t : ℝ=>rootWeight (logPhaseTwist gaussianFixedWindow t) x*
          (∏i : ι,W i (q i)*logPhase (-t) (Real.log (q i)))*gaussianJointDensity V hV R t) ∧
        dyadicAnnulus x*(∏i : ι,W i (q i))*gaussianMellinProfile (R*x/(∏i : ι,q i))=
          ∫t : ℝ,rootWeight (logPhaseTwist gaussianFixedWindow t) x*
            (∏i : ι,W i (q i)*logPhase (-t) (Real.log (q i)))*gaussianJointDensity V hV R t) ∧
      (∀A : ℝ,∀J : ℕ,∃C : ℝ,0<C ∧ ∀R : ℝ,0<R→
        Integrable (fun t : ℝ=>(1+‖t‖)^J*‖gaussianJointDensity V hV R t‖) ∧
        (∫t : ℝ,(1+‖t‖)^J*‖gaussianJointDensity V hV R t‖)≤C*R^(-A)) := by
  let M' : Option ι→ℝ := fun o=>match o with
    | none => |Real.log (1/2)|+|Real.log 2|+1
    | some i => M i
  have hM' : ∀o,0≤M' o := by
    intro o
    cases o with
    | none => dsimp [M']; positivity
    | some i => exact hM i
  have hW : ∀o y,gaussianSlotWindow W o y≠0→|y|≤M' o := by
    intro o y
    cases o with
    | none => exact dyadicAnnulus_log_support y
    | some i => exact hwindow i y
  obtain ⟨V,hV,hsep,hbound⟩ := gaussian_coupled_family (gaussianSlotWindow W) gaussianSlotSlope M' hM' hW
  refine ⟨V,hV,?_,hbound⟩
  intro R hR x hx q hq
  refine ⟨gaussian_annular_integrable W V hV R x hx q hq,?_⟩
  have hh := (hsep R hR (gaussianSlotPoint x q)).2
  rw [gaussianSlot_argument x hx q hq] at hh
  simp only [Fintype.prod_option,gaussianSlotWindow,gaussianSlotPoint,Real.exp_log hx] at hh
  simp_rw [Real.exp_log (hq _)] at hh
  rw [show R*(x/∏i : ι,q i)=R*x/(∏i : ι,q i) by ring] at hh
  rw [hh]
  apply integral_congr_ae
  exact Filter.Eventually.of_forall (fun t=>by
    dsimp only
    rw [gaussianFixedWindow_rootWeight_twist t x hx]
    simp only [gaussianSlotSlope,one_mul,neg_one_mul,logPhase_neg_argument])

end
end GRWTSK.Analysis.MellinTransform.GaussianAnnularSeparation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianAnnularSeparation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MellinTransform/GaussianAnnularSeparation.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b0aecaada254d4b9f2409f9780320169bbf0fc2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
