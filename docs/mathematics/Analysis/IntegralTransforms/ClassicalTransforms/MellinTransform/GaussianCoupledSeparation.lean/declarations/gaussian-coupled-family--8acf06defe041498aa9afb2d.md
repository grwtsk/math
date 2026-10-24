# gaussian_coupled_family

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3fc3de96-fb88-9e12-5b78-e46cf3f2a6bc",
  "kind": "theorem",
  "lexical_name": "gaussian_coupled_family",
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
  "slug": "gaussian-coupled-family--8acf06defe041498aa9afb2d",
  "source": {
    "blob": "1063713a1f78fffd9290cff787affd647b9d7728",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 100,
    "path": "GRWTSK/Analysis/MellinTransform/GaussianCoupledSeparation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8acf06defe041498aa9afb2dfaf047acd67b6da0a84fe92eb96546bc63f8f9ea",
  "verification": {
    "reference": "docs/verification/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianCoupledSeparation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3fc3de96-fb88-9e12-5b78-e46cf3f2a6bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gaussian_coupled_family {ι : Type*} [Fintype ι]
    (W : ι→ℝ→ℂ) (a M : ι→ℝ) (hM : ∀i,0≤M i)
    (hwindow : ∀i y,W i y≠0→|y|≤M i) :
    ∃V : SchwartzMap ℝ ℂ,∃hV : HasCompactSupport (V:ℝ→ℂ),
      (∀R : ℝ,0<R→∀y : ι→ℝ,
        Integrable (fun t : ℝ=>(∏i : ι,W i (y i)*logPhase t (a i*y i))*gaussianJointDensity V hV R t) ∧
        (∏i : ι,W i (y i))*gaussianMellinProfile (R*Real.exp (∑i : ι,a i*y i))=
          ∫t : ℝ,(∏i : ι,W i (y i)*logPhase t (a i*y i))*gaussianJointDensity V hV R t) ∧
      (∀A : ℝ,∀J : ℕ,∃C : ℝ,0<C ∧ ∀R : ℝ,0<R→
        Integrable (fun t : ℝ=>(1+‖t‖)^J*‖gaussianJointDensity V hV R t‖) ∧
        (∫t : ℝ,(1+‖t‖)^J*‖gaussianJointDensity V hV R t‖)≤C*R^(-A)) := by
  classical
  let T := ∑i : ι,|a i| *M i
  have hT : 0≤T := Finset.sum_nonneg (fun i _=>mul_nonneg (abs_nonneg _) (hM i))
  let V := schwartzCutoff T
  have hV : HasCompactSupport (V:ℝ→ℂ) := schwartzCutoff_compact T
  refine ⟨V,hV,?_,fun A J=>gaussianJointDensity_moment V hV A J⟩
  intro R hR y
  refine ⟨gaussian_coupled_integrable W a y V hV R,gaussian_coupled_separation W a y V hV R hR ?_⟩
  exact coupled_cutoff_active W V a y M hwindow (fun s hs=>schwartzCutoff_one T s hT hs)

end
end GRWTSK.Analysis.MellinTransform.GaussianCoupledSeparation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianCoupledSeparation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MellinTransform/GaussianCoupledSeparation.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1063713a1f78fffd9290cff787affd647b9d7728` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
