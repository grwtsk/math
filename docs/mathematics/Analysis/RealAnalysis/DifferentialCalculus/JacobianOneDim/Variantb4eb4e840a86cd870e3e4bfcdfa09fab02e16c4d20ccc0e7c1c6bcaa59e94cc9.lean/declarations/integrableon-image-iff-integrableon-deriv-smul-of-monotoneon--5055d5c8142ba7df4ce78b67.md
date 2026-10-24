# integrableOn_image_iff_integrableOn_deriv_smul_of_monotoneOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dcd70216dd5680eb95ffea220a9fa82e4a045ac7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 230,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b4eb4e840a86cd870e3e4bfcdfa09fab02e16c4d20ccc0e7c1c6bcaa59e94cc9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7ddf53d9-aeb9-9e4f-8b84-a8b1aff77b3c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0cda7e75-64a5-11f8-09e0-39a1183535bf",
  "kind": "theorem",
  "lexical_name": "integrableOn_image_iff_integrableOn_deriv_smul_of_monotoneOn",
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
  "slug": "integrableon-image-iff-integrableon-deriv-smul-of-monotoneon--5055d5c8142ba7df4ce78b67",
  "source": {
    "blob": "dcd70216dd5680eb95ffea220a9fa82e4a045ac7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 230,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variantb4eb4e840a86cd870e3e4bfcdfa09fab02e16c4d20ccc0e7c1c6bcaa59e94cc9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5055d5c8142ba7df4ce78b6739a63467638f671a6048d85690a9e69a4da9585b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variantb4eb4e840a86cd870e3e4bfcdfa09fab02e16c4d20ccc0e7c1c6bcaa59e94cc9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0cda7e75-64a5-11f8-09e0-39a1183535bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrableOn_image_iff_integrableOn_deriv_smul_of_monotoneOn (hs : MeasurableSet s)
    (hf' : ∀ x ∈ s, HasDerivWithinAt f (f' x) s x) (hf : MonotoneOn f s) (g : ℝ → F) :
    IntegrableOn g (f '' s) ↔ IntegrableOn (fun x ↦ (f' x) • g (f x)) s := by
  rcases exists_decomposition_of_monotoneOn_hasDerivWithinAt hs hf hf' with
    ⟨a, b, c, h_union, ha, hb, hc, h_disj, h_disj', a_count, fb_count, deriv_b, deriv_c, inj_c⟩
  have I : IntegrableOn (fun x => (f' x) • g (f x)) s
      ↔ IntegrableOn (fun x => (f' x) • g (f x)) c := by
    have A : IntegrableOn (fun x ↦ f' x • g (f x)) a :=
      IntegrableOn.of_measure_zero (a_count.measure_zero volume)
    have B : IntegrableOn (fun x ↦ f' x • g (f x)) b := by
      have : IntegrableOn (fun x ↦ (0 : F)) b := by simp
      exact this.congr_fun (fun x hx ↦ by simp [deriv_b x hx]) hb
    simp only [← h_union, integrableOn_union, A, B, true_and]
  have J : IntegrableOn g (f '' s) ↔ IntegrableOn g (f '' c) := by
    apply integrableOn_congr_set_ae
    rw [← h_union, image_union, image_union]
    have A : (f '' a ∪ (f '' b ∪ f '' c) : Set ℝ) =ᵐ[volume] (f '' b ∪ f '' c : Set ℝ) := by
      refine union_ae_eq_right_of_ae_eq_empty (ae_eq_empty.mpr ?_)
      exact (a_count.image _).measure_zero _
    have B : (f '' b ∪ f '' c : Set ℝ) =ᵐ[volume] f '' c :=
      union_ae_eq_right_of_ae_eq_empty (ae_eq_empty.mpr (fb_count.measure_zero _))
    exact A.trans B
  rw [I, J]
  have c_s : c ⊆ s := by rw [← h_union]; exact subset_union_right.trans subset_union_right
  let F' : ℝ → (ℝ →L[ℝ] ℝ) := fun x ↦ ContinuousLinearMap.smulRight (1 : ℝ →L[ℝ] ℝ) (f' x)
  have hF' (x : ℝ) (hx : x ∈ c) : HasFDerivWithinAt f (F' x) c x :=
    (hf' x (c_s hx)).hasFDerivWithinAt.mono c_s
  rw [integrableOn_image_iff_integrableOn_abs_det_fderiv_smul _ hc hF' inj_c]
  apply integrableOn_congr_fun (fun x hx ↦ ?_) hc
  simp only [LinearMap.det_ring, ContinuousLinearMap.coe_coe, ContinuousLinearMap.smulRight_apply,
    one_apply_eq_self, smul_eq_mul, one_mul, F']
  rw [abs_of_nonneg (deriv_c x hx)]

/-- Change of variable formula for differentiable functions: if a real function `f` is
monotone and differentiable on a measurable set `s`, then the Bochner integral of a function
`g : ℝ → F` on `f '' s` coincides with the integral of `(f' x) • g ∘ f` on `s` . -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variantb4eb4e840a86cd870e3e4bfcdfa09fab02e16c4d20ccc0e7c1c6bcaa59e94cc9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variantb4eb4e840a86cd870e3e4bfcdfa09fab02e16c4d20ccc0e7c1c6bcaa59e94cc9.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcd70216dd5680eb95ffea220a9fa82e4a045ac7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
